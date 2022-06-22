# openssl-ca-utils

Bash file to generate self signed CA and site SSL certificates

## Example

```bash
$ cp config-example config
# Change CA and site certificate options in config.

$ ./generate.sh ca
Generating CA key and cert...
Generating a RSA private key
............................++++
..........................................................................++++
writing new private key to 'out/ca/ca.key'
-----
Certificate:
    Data:
        Version: 1 (0x0)
        Serial Number:
            26:0d:50:ed:de:0c:1c:e8:28:fa:07:86:f9:d1:02:d7:80:4e:10:b5
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Validity
            Not Before: Sep 25 09:19:46 2021 GMT
            Not After : Feb 10 09:19:46 2049 GMT
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:c7:1d:da:aa:8e:bc:30:09:26:73:63:72:f8:49:
                    ...
                    03:79:4d
                Exponent: 65537 (0x10001)
    Signature Algorithm: sha512WithRSAEncryption
         3c:7a:5e:82:a7:70:f1:55:da:24:83:9d:e4:a4:16:e9:2c:72:
         ...
         26:ff:7d:d9:17:30:12:f2

$ ./generate.sh site
Generating site key and cert...
Generating a RSA private key
........................++++
...........................................................................................++++
writing new private key to 'out/org.com/key.pem'
-----
Certificate Request:
    Data:
        Version: 1 (0x0)
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:aa:b1:12:85:50:70:a8:6c:33:07:c5:95:3c:f2:
                    ...
                    04:95:1f
                Exponent: 65537 (0x10001)
        Attributes:
        Requested Extensions:
            X509v3 Subject Alternative Name: 
                DNS:org.com
    Signature Algorithm: sha512WithRSAEncryption
         39:d3:dc:77:eb:99:54:21:6d:2a:71:ab:b6:6f:82:23:bd:67:
         ...
         4e:79:58:04:70:5d:b7:bf
Signature ok
subject=C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
Getting CA Private Key
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            53:9a:79:aa:3c:2d:c8:89:e9:ae:fa:67:2f:96:87:0a:56:27:82:28
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Validity
            Not Before: Sep 25 09:30:29 2021 GMT
            Not After : Feb 10 09:30:29 2049 GMT
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:aa:b1:12:85:50:70:a8:6c:33:07:c5:95:3c:f2:
                    ...
                    04:95:1f
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name: 
                DNS:org.com
    Signature Algorithm: sha512WithRSAEncryption
         53:e5:6e:36:a2:b4:36:60:5a:8f:47:d7:ed:ad:35:d0:1a:96:
         ...
         34:b1:48:df:58:17:12:65
```
