#!/bin/bash

if [ "$1" == "" ]
then
    echo "No action given"
    exit 1
fi

set -o errexit
set -o pipefail
set -o nounset

source ./config
readonly OUT_DIR="out"
mkdir --parents "${OUT_DIR}"

case "$1" in
  "ca")
    echo "Generating CA key and cert..."
    cp "ca-req-template.conf" "${OUT_DIR}/ca-req.conf"
    for s in \
        "s/<DEFAULT_BITS>/${CONFIG_DEFAULT_BITS}/g" \
        "s/<DEFAULT_MD>/${CONFIG_DEFAULT_MD}/g" \
        "s/<DN_C>/${CONFIG_DN_C}/g" \
        "s/<DN_ST>/${CONFIG_DN_ST}/g" \
        "s/<DN_L>/${CONFIG_DN_L}/g" \
        "s/<DN_O>/${CONFIG_DN_O}/g" \
        "s/<DN_OU>/${CONFIG_DN_OU}/g" \
        "s/<DN_ENAIL>/${CONFIG_DN_ENAIL}/g" \
        "s/<DN_CN>/${CONFIG_DN_O}/g"
    do
        sed -i "${s}" "${OUT_DIR}/ca-req.conf"
    done
    openssl req -x509 -new -out "${OUT_DIR}/ca.crt" -keyout "${OUT_DIR}/ca.key" -config "${OUT_DIR}/ca-req.conf" -days "${CONFIG_DAYS}"
    openssl x509 -in "${OUT_DIR}/ca.crt" -noout -text
    ;;

  "site")
    echo "Generating site key and cert..."
    cp "site-req-template.conf" "${OUT_DIR}/site-req.conf"
    for s in \
        "s/<DEFAULT_BITS>/${CONFIG_DEFAULT_BITS}/g" \
        "s/<DEFAULT_MD>/${CONFIG_DEFAULT_MD}/g" \
        "s/<DN_C>/${CONFIG_DN_C}/g" \
        "s/<DN_ST>/${CONFIG_DN_ST}/g" \
        "s/<DN_L>/${CONFIG_DN_L}/g" \
        "s/<DN_O>/${CONFIG_DN_O}/g" \
        "s/<DN_OU>/${CONFIG_DN_OU}/g" \
        "s/<DN_ENAIL>/${CONFIG_DN_ENAIL}/g" \
        "s/<DN_CN>/${CONFIG_DN_O}/g" \
        "s/<SITE_DNS>/${CONFIG_SITE_DNS}/g"
    do
        sed -i "${s}" "${OUT_DIR}/site-req.conf"
    done
    cp "site-extfile-template.conf" "${OUT_DIR}/site-extfile.conf"
    sed -i "s/<SITE_DNS>/${CONFIG_SITE_DNS}/g" "${OUT_DIR}/site-extfile.conf"
    openssl req -new -out "${OUT_DIR}/site.csr" -keyout "${OUT_DIR}/site.key" -config "${OUT_DIR}/site-req.conf"
    openssl req -in "${OUT_DIR}/site.csr" -noout -text

    openssl x509 -req -in "${OUT_DIR}/site.csr" -CA "${OUT_DIR}/ca.crt" -CAkey "${OUT_DIR}/ca.key" -out "${OUT_DIR}/site.crt" -CAcreateserial -days "${CONFIG_DAYS}" "-${CONFIG_DEFAULT_MD}" -extfile "${OUT_DIR}/site-extfile.conf"
    openssl x509 -in "${OUT_DIR}/site.crt" -noout -text
    ;;

  *)
    echo -n "unknown"
    exit 1
    ;;
esac



