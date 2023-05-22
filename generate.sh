#!/bin/bash

if [ "$1" == "" ]
then
    echo "Usage: ./generate.sh {ca | site}"
    exit 1
fi

set -o errexit
set -o pipefail
set -o nounset

source ./config
readonly OUT_DIR="out"
mkdir --parents "${OUT_DIR}"

readonly CA_DIR="${OUT_DIR}/ca"

case "$1" in
  "ca")
    echo "Generating CA key and cert..."
    mkdir --parents "${CA_DIR}"
    cp "ca-req-template.conf" "${CA_DIR}/ca-req.conf"
    for s in \
        "s/<DEFAULT_BITS>/${CONFIG_DEFAULT_BITS}/g" \
        "s/<DEFAULT_MD>/${CONFIG_DEFAULT_MD}/g" \
        "s/<DN_C>/${CONFIG_DN_C}/g" \
        "s/<DN_ST>/${CONFIG_DN_ST}/g" \
        "s/<DN_L>/${CONFIG_DN_L}/g" \
        "s/<DN_O>/${CONFIG_DN_O}/g" \
        "s/<DN_OU>/${CONFIG_DN_OU}/g" \
        "s/<DN_EMAIL>/${CONFIG_DN_EMAIL}/g" \
        "s/<DN_CN>/${CONFIG_DN_O}/g"
    do
        sed -i "${s}" "${CA_DIR}/ca-req.conf"
    done
    openssl req -x509 -new -out "${CA_DIR}/ca.crt" -keyout "${CA_DIR}/ca.key" -config "${CA_DIR}/ca-req.conf" -days "${CONFIG_DAYS}"
    openssl x509 -in "${CA_DIR}/ca.crt" -noout -text
    ;;

  "site")
    echo "Generating site key and cert..."
    readonly SITE_DIR="${OUT_DIR}/${CONFIG_SITE_DNS}"
    mkdir --parents "${SITE_DIR}"
    cp "site-req-template.conf" "${SITE_DIR}/site-req.conf"
    for s in \
        "s/<DEFAULT_BITS>/${CONFIG_DEFAULT_BITS}/g" \
        "s/<DEFAULT_MD>/${CONFIG_DEFAULT_MD}/g" \
        "s/<DN_C>/${CONFIG_DN_C}/g" \
        "s/<DN_ST>/${CONFIG_DN_ST}/g" \
        "s/<DN_L>/${CONFIG_DN_L}/g" \
        "s/<DN_O>/${CONFIG_DN_O}/g" \
        "s/<DN_OU>/${CONFIG_DN_OU}/g" \
        "s/<DN_EMAIL>/${CONFIG_DN_EMAIL}/g" \
        "s/<DN_CN>/${CONFIG_DN_O}/g" \
        "s/<SITE_DNS>/${CONFIG_SITE_DNS}/g"
    do
        sed -i "${s}" "${SITE_DIR}/site-req.conf"
    done
    cp "site-extfile-template.conf" "${SITE_DIR}/site-extfile.conf"
    sed -i "s/<SITE_DNS>/${CONFIG_SITE_DNS}/g" "${SITE_DIR}/site-extfile.conf"
    openssl req -new -out "${SITE_DIR}/site.csr" -keyout "${SITE_DIR}/key.pem" -config "${SITE_DIR}/site-req.conf"
    openssl req -in "${SITE_DIR}/site.csr" -noout -text

    openssl x509 -req -in "${SITE_DIR}/site.csr" -CA "${CA_DIR}/ca.crt" -CAkey "${CA_DIR}/ca.key" -out "${SITE_DIR}/certificate.pem" -CAcreateserial -days "${CONFIG_DAYS}" "-${CONFIG_DEFAULT_MD}" -extfile "${SITE_DIR}/site-extfile.conf"
    openssl x509 -in "${SITE_DIR}/certificate.pem" -noout -text

    cat "${SITE_DIR}/certificate.pem" "${CA_DIR}/ca.crt" > "${SITE_DIR}/fullchain.pem"
    ;;

  *)
    echo -n "unknown"
    exit 1
    ;;
esac



