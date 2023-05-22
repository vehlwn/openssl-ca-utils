# openssl-ca-utils

Bash file to generate self signed CA and site SSL certificates

## Example

```bash
$ cp config-example config
# Change CA and site certificate options in config.

$ ./generate.sh ca
Generating CA key and cert...
-----
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            70:80:05:c2:26:49:93:16:c0:6c:42:fa:de:79:27:16:70:e6:cd:f3
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, O = Org, CN = example CA
        Validity
            Not Before: May 22 08:03:21 2023 GMT
            Not After : Oct  7 08:03:21 2050 GMT
        Subject: C = US, O = Org, CN = example CA
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:9a:d2:68:f6:48:89:7d:37:83:5f:d4:af:fb:27:
                    ...
                    89:27:a9
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: critical
                CA:TRUE
            X509v3 Key Usage: critical
                Digital Signature, Certificate Sign, CRL Sign
            X509v3 Extended Key Usage:
                TLS Web Server Authentication, TLS Web Client Authentication
            X509v3 Authority Key Identifier:
                DirName:/C=US/O=Org/CN=example CA
                serial:70:80:05:C2:26:49:93:16:C0:6C:42:FA:DE:79:27:16:70:E6:CD:F3
            X509v3 Subject Key Identifier:
                62:BA:36:D3:47:77:17:6F:97:F8:19:D1:9C:6E:D2:8B:AE:1F:F7:DD
    Signature Algorithm: sha512WithRSAEncryption
    Signature Value:
        41:97:f6:0e:40:c1:65:fd:75:5c:87:68:07:06:f1:e1:6e:f3:
        ...
        a5:57:00:4f:46:05:10:16

$ ./generate.sh site
Generating site key and cert...
-----
Certificate Request:
    Data:
        Version: 1 (0x0)
        Subject: C = US, O = Org, CN = example.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:a6:e8:d8:9b:be:4c:e2:18:b3:dc:c2:f8:ef:8d:
                    ...
                    a6:d1:85
                Exponent: 65537 (0x10001)
        Attributes:
            Requested Extensions:
                X509v3 Subject Alternative Name:
                    DNS:example.com, IP Address:127.0.0.1, IP Address:192.168.0.2
    Signature Algorithm: sha512WithRSAEncryption
    Signature Value:
        62:c6:d2:08:4f:fd:ad:e8:a8:e1:b6:7b:0d:8a:71:19:d0:9c:
        ...
        48:91:49:12:43:6f:29:43
Certificate request self-signature ok
subject=C = US, O = Org, CN = example.com
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            5e:d6:e1:65:67:e3:71:9b:b5:20:4e:a5:4c:1f:5d:a9:99:a4:df:97
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, O = Org, CN = example CA
        Validity
            Not Before: May 22 08:04:39 2023 GMT
            Not After : Oct  7 08:04:39 2050 GMT
        Subject: C = US, O = Org, CN = example.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:a6:e8:d8:9b:be:4c:e2:18:b3:dc:c2:f8:ef:8d:
                    ...
                    a6:d1:85
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name:
                DNS:example.com, IP Address:127.0.0.1, IP Address:192.168.0.2
            X509v3 Basic Constraints: critical
                CA:FALSE
            X509v3 Key Usage: critical
                Digital Signature
            X509v3 Extended Key Usage:
                TLS Web Server Authentication, TLS Web Client Authentication
            X509v3 Authority Key Identifier:
                62:BA:36:D3:47:77:17:6F:97:F8:19:D1:9C:6E:D2:8B:AE:1F:F7:DD
            X509v3 Subject Key Identifier:
                DB:39:C7:C4:E5:98:B5:8A:93:C1:C1:68:8D:3C:97:17:7D:B5:73:60
    Signature Algorithm: sha512WithRSAEncryption
    Signature Value:
        00:e9:74:14:2f:06:91:89:f0:ce:f6:ef:9d:0e:c0:ae:7d:6d:
        ...
        7a:28:b7:1c:3b:bd:a2:74
```
