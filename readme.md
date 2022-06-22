# openssl-ca-utils

Bash file to generate self signed CA and site SSL certificates

## Example

```bash
$ cp config-example config
# Change CA and site certificate options in config.

$ ./generate.sh ca
Generating CA key and cert...
Generating a RSA private key
..........++++
............................................................................................................................++++
writing new private key to 'out/ca/ca.key'
-----
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            35:30:9a:03:89:61:a3:8b:2e:cf:27:51:01:0f:78:1a:9f:dd:89:85
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Validity
            Not Before: Sep 25 13:44:01 2021 GMT
            Not After : Feb 10 13:44:01 2049 GMT
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:96:27:58:3a:31:95:e3:30:cc:5e:7e:99:51:aa:
                    ...
                    31:ed:33
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha512WithRSAEncryption
         5b:d1:79:0f:84:a6:b3:a5:78:7f:60:ef:81:70:2c:97:4a:a8:
         ...
         7f:01:22:21:3c:4f:26:7a

$ ./generate.sh site
Generating site key and cert...
Generating a RSA private key
............................++++
..................................................................................................................................................................................++++
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
                    00:b5:60:cb:2b:1d:2e:90:18:09:87:b7:42:d8:03:
                    ...
                    5c:cb:9d
                Exponent: 65537 (0x10001)
        Attributes:
        Requested Extensions:
            X509v3 Subject Alternative Name: 
                DNS:org.com
            X509v3 Basic Constraints: critical
                CA:FALSE
    Signature Algorithm: sha512WithRSAEncryption
         29:ea:99:fb:ed:ca:3d:97:e6:40:0d:49:ec:f1:68:53:59:e0:
         ...
         48:3b:5a:45:84:49:80:58
Signature ok
subject=C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
Getting CA Private Key
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            3a:e5:f0:84:88:e9:b1:07:a1:03:e1:52:9f:29:9a:cd:b1:93:88:26
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Validity
            Not Before: Sep 25 13:44:56 2021 GMT
            Not After : Feb 10 13:44:56 2049 GMT
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:b5:60:cb:2b:1d:2e:90:18:09:87:b7:42:d8:03:
                    ...
                    5c:cb:9d
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name: 
                DNS:org.com
            X509v3 Basic Constraints: critical
                CA:FALSE
    Signature Algorithm: sha512WithRSAEncryption
         85:d4:35:fa:1c:1d:ac:dd:46:0b:b5:c6:71:89:fd:87:5e:87:
         ...
         f1:3f:6a:f2:00:ab:c2:20
```
