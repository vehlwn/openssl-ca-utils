# openssl-ca-utils

Bash file to generate self signed CA and site SSL certificates

## Example

```bash
$ ./generate.sh ca
Generating CA key and cert...
Generating a RSA private key
........++++
...................................................................++++
writing new private key to 'out/ca.key'
-----
Certificate:
    Data:
        Version: 1 (0x0)
        Serial Number:
            01:1d:e9:f0:64:bc:e0:d6:46:25:1f:14:03:0d:2f:dd:e1:e1:46:a0
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Validity
            Not Before: Apr 29 17:32:17 2021 GMT
            Not After : Sep 14 17:32:17 2048 GMT
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:bf:cc:d6:15:ac:da:dd:8c:d9:f0:09:fb:65:bc:
                    18:5a:31:1a:a5:cc:41:f8:c1:b2:89:76:1e:18:a8:
                    15:87:8e:24:f6:1a:ec:b6:c9:ef:ac:27:bd:bf:16:
                    de:83:07:9e:25:64:8e:85:1d:dd:6c:36:99:5e:fb:
                    d2:20:06:c0:68:3e:5d:8b:f0:2b:03:1f:ed:26:3c:
                    48:b2:63:78:a2:3e:db:8b:75:09:73:0f:26:1f:63:
                    34:98:7d:69:8a:3d:47:63:e1:27:82:33:74:55:06:
                    dd:bb:1e:96:1e:92:2e:36:60:2d:ff:04:5d:27:a5:
                    1f:e2:0f:b0:10:75:73:a4:b4:7b:a2:df:eb:3d:b4:
                    c1:1f:44:af:fc:1f:61:a4:3d:b8:9f:b5:df:b4:3a:
                    b1:d9:b2:42:43:11:b4:08:cb:0a:6e:53:89:67:be:
                    d1:ee:76:26:1c:4a:04:05:5e:2a:cf:c2:b7:5f:89:
                    fd:cc:f7:40:8e:a9:bf:ed:b4:5e:51:a3:6d:d8:30:
                    4f:cf:4e:b8:7c:67:1f:0c:b7:0e:90:78:76:3f:8c:
                    1d:d9:35:36:f6:40:32:83:b5:bb:75:02:05:b7:b7:
                    87:2d:49:90:24:94:82:2e:45:be:76:9e:06:80:e4:
                    b3:16:bc:d3:75:21:5f:e6:38:dc:65:e6:67:34:76:
                    af:33:e1:c9:dd:f8:1f:93:09:b6:c0:ef:06:1a:dc:
                    85:fe:e2:6f:0e:7c:38:8a:c4:61:a0:ae:c8:1c:5e:
                    d8:7b:ae:1a:80:1f:e7:02:1c:21:74:52:2e:3b:11:
                    76:32:51:c0:fb:45:b0:8d:d8:67:da:41:05:11:53:
                    42:6f:78:7b:39:cf:ac:3e:c8:14:24:37:c7:a6:ce:
                    22:5f:ea:db:a7:fb:78:fe:7f:a2:b0:f1:db:58:db:
                    18:96:55:3d:2f:38:31:6e:c7:d6:76:96:37:47:c5:
                    e4:61:db:47:f4:cf:c3:ee:86:63:41:60:8a:28:68:
                    78:05:aa:4d:7e:43:3e:29:10:e3:16:40:96:4e:8a:
                    da:3c:33:87:84:51:68:31:63:8a:9a:c8:7f:d5:cf:
                    4e:9f:06:ba:f0:a0:e8:9b:3c:d6:34:3f:1b:cd:bf:
                    00:89:7d:f5:92:83:57:0b:e3:fd:c1:ad:0a:65:1f:
                    67:02:ba:cb:3a:0a:e0:81:b8:17:c2:04:69:d0:fc:
                    a0:16:30:28:b3:01:08:e1:b1:4a:65:69:b8:ed:75:
                    67:d5:5f:b3:c3:a9:d3:9b:04:00:f9:cf:13:f8:10:
                    fc:36:79:23:55:66:01:67:5c:bd:d2:4e:8e:7e:55:
                    9d:dc:2d:5b:15:a8:12:ce:a4:89:e7:c3:06:9a:78:
                    ea:65:e1
                Exponent: 65537 (0x10001)
    Signature Algorithm: sha512WithRSAEncryption
         58:d9:be:3d:fe:43:75:45:e6:34:a1:03:d7:ad:2d:a2:47:fb:
         e7:cf:5a:fb:96:19:eb:33:2b:20:8f:f8:c4:2a:2a:86:f7:60:
         ef:18:61:df:89:89:41:7d:fd:7b:8d:8e:e9:a9:b8:fb:89:ef:
         e2:af:88:96:29:ea:3a:6b:d5:e2:16:a4:25:b8:58:fa:99:03:
         c1:80:33:0b:e5:e5:e3:4f:82:d4:62:24:0e:c7:ae:d2:83:af:
         11:1f:96:9f:77:82:65:e4:76:6e:f5:c1:4b:a3:57:e6:88:f9:
         37:92:1a:6a:fc:8a:0c:cd:86:89:6e:2d:f9:48:73:46:d1:50:
         fa:b1:f7:03:c0:82:b6:02:d1:2c:14:cf:e0:96:0b:65:9f:a4:
         8e:81:cf:08:d7:42:c8:44:78:ed:6f:a9:58:c3:a3:83:5b:38:
         a8:f7:73:f2:f7:b6:59:49:c0:91:6d:f4:bb:09:42:c1:73:6f:
         ab:c7:07:ec:f7:95:2b:ab:f4:fc:f4:67:83:dc:3f:43:c3:94:
         06:6e:f9:2d:10:d4:54:11:11:c9:95:1c:26:44:c7:a2:75:a0:
         53:2e:50:e5:07:3d:69:89:93:9f:de:a0:b7:43:ab:5e:06:ca:
         28:40:b7:91:ce:02:25:73:75:c7:f2:3c:46:76:24:3f:c3:d0:
         36:d1:91:bb:49:b2:23:65:88:dd:a4:03:d8:58:19:8f:ec:c3:
         03:e3:41:ae:2e:75:a1:76:3d:a8:7f:95:67:49:37:77:2a:c2:
         76:48:44:7e:96:fc:ee:9a:7a:13:aa:df:d9:b9:9d:98:87:4a:
         95:3e:ea:39:79:96:f8:22:3c:98:e6:7d:e7:7a:e0:bf:cf:60:
         d4:1c:25:82:da:c3:83:45:87:5f:9a:00:c4:c5:4f:1d:e6:14:
         d3:8d:1b:f7:1c:de:78:c2:33:75:4c:ed:e9:7e:ec:b0:a6:6c:
         32:4b:77:eb:b2:1f:ff:64:7c:26:8f:50:ea:73:81:9f:31:cf:
         36:09:3a:86:02:b0:af:37:51:63:20:bd:93:cf:92:39:87:1d:
         1c:2a:9a:e1:1b:57:8a:c5:62:45:54:c9:95:03:95:be:34:ef:
         e3:a8:58:f7:9e:8d:09:85:e5:bf:c3:1e:1b:de:25:84:44:83:
         92:81:ea:8f:01:09:88:62:39:d6:ba:a1:6c:12:48:61:e5:5f:
         ee:ee:ed:e4:94:2a:78:0a:56:e8:d7:e6:60:85:e4:e6:1b:cf:
         5b:f3:e0:d3:f0:e0:55:b8:a7:9b:71:47:8b:cd:a4:39:a2:8c:
         9f:10:e9:14:c1:6a:33:08:56:1b:47:ff:1d:31:b6:97:36:61:
         c7:7d:58:7a:00:4f:47:b7

$ ./generate.sh site
Generating site key and cert...
Generating a RSA private key
............................................................................................................................................................................................++++
..............................................++++
writing new private key to 'out/site.key'
-----
Certificate Request:
    Data:
        Version: 1 (0x0)
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:b4:24:a7:20:b1:00:9e:1e:e7:31:bb:89:e8:1c:
                    44:eb:8a:3f:77:12:c7:d1:e4:6c:8b:4c:cd:57:54:
                    c2:d7:aa:4f:6d:91:78:54:f6:25:06:29:8d:a5:90:
                    19:64:67:79:6e:a9:b3:ca:be:fd:d0:e1:cb:f9:1d:
                    d6:3c:30:b3:8a:78:65:4e:0c:a8:5d:4c:63:d3:b2:
                    ed:38:b7:6b:16:83:24:3b:39:d8:ed:47:3a:d4:5f:
                    97:c5:cb:f7:e9:2b:6b:bf:9c:e6:ff:c6:7d:61:82:
                    07:fa:69:7d:04:4e:d7:58:fd:09:ff:6d:cf:40:49:
                    98:88:b9:99:9b:2f:bf:3d:e5:1f:21:b2:a5:00:da:
                    62:67:d5:23:fd:74:cc:b2:bc:5e:7a:1c:41:66:99:
                    a3:7b:56:cf:23:53:ac:da:84:97:4d:d3:c1:a5:77:
                    82:3e:7f:63:44:bd:31:06:6b:c3:55:cb:44:33:c9:
                    fb:a3:07:05:a1:de:32:b0:9f:8b:7e:b4:3f:3f:b4:
                    51:d2:4d:dc:30:13:e3:f8:98:ec:8e:dc:0b:9d:a6:
                    d8:30:e2:3d:22:6e:35:ba:e8:dd:56:b9:5b:07:b0:
                    42:48:d1:80:5d:b4:19:66:43:b1:9c:4f:94:ca:ef:
                    27:34:c8:50:df:b4:cd:31:94:c8:57:47:69:71:f1:
                    5d:9e:d4:3f:89:cb:b7:4b:2d:3b:f5:f2:4c:91:ee:
                    3d:9d:f0:46:8a:2c:a3:c9:88:3f:df:f4:c5:ff:5b:
                    39:0e:4c:4c:3a:bc:c5:fb:a1:0a:de:2b:5a:09:5e:
                    86:ce:66:10:d2:bd:55:b3:05:63:0e:52:7a:70:86:
                    0c:9c:e8:66:59:31:b4:18:d1:66:bf:cc:d4:de:79:
                    43:a9:77:f3:d8:08:47:1f:a0:55:06:2b:e4:00:58:
                    00:59:d7:f0:87:82:9c:d4:6a:c4:b9:d4:fb:59:b3:
                    72:da:19:62:e8:59:3b:3e:13:a5:14:35:58:93:74:
                    dd:82:bb:0a:81:8b:fd:1f:33:8e:95:d4:fe:62:98:
                    94:a5:33:6f:0b:8e:ee:98:93:ae:94:5e:1b:b2:0e:
                    c9:71:b0:72:5a:e0:8c:ca:38:58:5d:73:ea:45:42:
                    33:47:52:9d:51:32:4b:ef:f8:e3:1a:df:1d:73:fe:
                    03:f9:10:a0:6f:93:e1:4f:9c:6d:ca:4e:83:24:e6:
                    15:20:f6:2a:cc:f1:8d:6b:88:ea:33:11:fd:d0:14:
                    99:f7:a2:b8:7b:df:e2:08:aa:41:59:65:17:de:d5:
                    5a:bc:2d:30:7a:7c:f2:31:93:b5:61:c3:14:c6:cd:
                    c0:6f:b4:14:37:b8:68:56:f9:cc:b6:c5:75:f0:19:
                    9c:d7:e1
                Exponent: 65537 (0x10001)
        Attributes:
        Requested Extensions:
            X509v3 Subject Alternative Name: 
                DNS:org.com
    Signature Algorithm: sha512WithRSAEncryption
         35:eb:10:62:4f:20:88:42:22:13:39:4b:93:f0:a6:d6:fa:95:
         cb:11:e9:f2:56:26:a4:a8:86:d5:3a:26:f9:67:54:5c:9c:26:
         b5:49:a7:45:0f:13:b3:9b:f5:36:e0:1f:91:5e:53:87:f4:8a:
         ef:c3:8a:71:72:45:08:2a:89:1c:12:6e:fc:c7:f4:bb:e4:88:
         2e:5a:db:48:10:c9:10:2a:8b:9f:f9:a1:7c:43:8d:d0:a4:2b:
         99:70:da:75:c5:0d:27:c3:3e:25:01:42:02:b0:bb:55:58:ce:
         2d:10:6a:50:96:82:35:7a:11:ed:c8:d8:a9:c3:09:77:b5:7f:
         02:8f:a8:94:78:b5:63:18:4d:a4:10:0d:6f:dc:61:76:13:36:
         d3:83:04:48:c9:e6:1e:10:f1:9c:7a:1e:08:44:e5:1c:9d:34:
         c3:5f:89:d4:43:d7:a0:61:2a:57:37:e3:d0:a6:5e:92:77:a9:
         e2:0b:64:e8:6d:3e:e8:2c:8e:b0:a9:1b:74:ea:e6:43:8b:33:
         32:01:01:cb:48:37:88:7f:d1:31:1b:3e:26:86:d3:e7:47:48:
         17:a9:21:93:a8:c9:27:af:99:25:83:d7:5d:28:af:9c:e8:67:
         b0:f3:63:a1:3a:96:e3:44:ea:df:88:0e:75:fd:01:49:91:7d:
         e3:d1:d8:a0:69:be:f0:f0:c7:37:ce:86:3a:24:34:96:94:5d:
         75:9b:6d:33:f4:c1:84:8e:2d:54:9b:0a:5b:b1:eb:e1:38:d4:
         c1:fe:b9:7b:7b:09:d9:4b:dd:c1:1c:a7:26:de:da:b7:7f:73:
         3f:dd:3f:1f:cd:77:36:b8:3d:94:a0:e7:e5:44:7a:94:96:a5:
         63:02:ce:f1:52:0c:b5:64:a3:71:68:fe:4c:42:6d:16:72:70:
         fa:01:a7:46:46:66:78:ea:84:72:09:34:90:29:4b:04:c7:11:
         43:eb:04:68:ee:47:e0:56:54:b3:cf:b9:6c:6d:ee:78:4f:3e:
         ec:35:5a:5c:b5:ae:0c:c8:fe:b2:0f:70:ce:07:e3:0c:c6:20:
         a9:1f:97:1a:67:fa:95:2a:92:61:91:08:cd:65:95:3a:33:90:
         b3:42:95:1e:b4:b5:89:82:a6:0e:74:ca:e6:f2:b6:e4:1f:f6:
         5a:ab:dc:ca:1e:5f:2f:43:c7:b7:29:a5:35:d2:b5:ba:68:23:
         06:82:6c:ea:be:f7:60:26:d4:63:57:2b:25:40:5c:81:59:eb:
         f2:3b:9b:17:52:45:08:08:42:4d:06:33:73:82:7f:4d:4a:76:
         5e:e8:ff:2b:79:8c:14:2d:13:4d:2d:3e:d8:4a:33:16:eb:99:
         e9:f4:02:7c:44:e0:1b:61
Signature ok
subject=C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
Getting CA Private Key
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            0d:9c:01:50:47:9f:fc:a8:5e:9b:3c:63:04:64:a7:94:ae:1e:c1:cb
        Signature Algorithm: sha512WithRSAEncryption
        Issuer: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = Org
        Validity
            Not Before: Apr 29 17:33:10 2021 GMT
            Not After : Sep 14 17:33:10 2048 GMT
        Subject: C = US, ST = New York, L = New York, O = Org, OU = Unit, emailAddress = admin@org.com, CN = org.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (4096 bit)
                Modulus:
                    00:b4:24:a7:20:b1:00:9e:1e:e7:31:bb:89:e8:1c:
                    44:eb:8a:3f:77:12:c7:d1:e4:6c:8b:4c:cd:57:54:
                    c2:d7:aa:4f:6d:91:78:54:f6:25:06:29:8d:a5:90:
                    19:64:67:79:6e:a9:b3:ca:be:fd:d0:e1:cb:f9:1d:
                    d6:3c:30:b3:8a:78:65:4e:0c:a8:5d:4c:63:d3:b2:
                    ed:38:b7:6b:16:83:24:3b:39:d8:ed:47:3a:d4:5f:
                    97:c5:cb:f7:e9:2b:6b:bf:9c:e6:ff:c6:7d:61:82:
                    07:fa:69:7d:04:4e:d7:58:fd:09:ff:6d:cf:40:49:
                    98:88:b9:99:9b:2f:bf:3d:e5:1f:21:b2:a5:00:da:
                    62:67:d5:23:fd:74:cc:b2:bc:5e:7a:1c:41:66:99:
                    a3:7b:56:cf:23:53:ac:da:84:97:4d:d3:c1:a5:77:
                    82:3e:7f:63:44:bd:31:06:6b:c3:55:cb:44:33:c9:
                    fb:a3:07:05:a1:de:32:b0:9f:8b:7e:b4:3f:3f:b4:
                    51:d2:4d:dc:30:13:e3:f8:98:ec:8e:dc:0b:9d:a6:
                    d8:30:e2:3d:22:6e:35:ba:e8:dd:56:b9:5b:07:b0:
                    42:48:d1:80:5d:b4:19:66:43:b1:9c:4f:94:ca:ef:
                    27:34:c8:50:df:b4:cd:31:94:c8:57:47:69:71:f1:
                    5d:9e:d4:3f:89:cb:b7:4b:2d:3b:f5:f2:4c:91:ee:
                    3d:9d:f0:46:8a:2c:a3:c9:88:3f:df:f4:c5:ff:5b:
                    39:0e:4c:4c:3a:bc:c5:fb:a1:0a:de:2b:5a:09:5e:
                    86:ce:66:10:d2:bd:55:b3:05:63:0e:52:7a:70:86:
                    0c:9c:e8:66:59:31:b4:18:d1:66:bf:cc:d4:de:79:
                    43:a9:77:f3:d8:08:47:1f:a0:55:06:2b:e4:00:58:
                    00:59:d7:f0:87:82:9c:d4:6a:c4:b9:d4:fb:59:b3:
                    72:da:19:62:e8:59:3b:3e:13:a5:14:35:58:93:74:
                    dd:82:bb:0a:81:8b:fd:1f:33:8e:95:d4:fe:62:98:
                    94:a5:33:6f:0b:8e:ee:98:93:ae:94:5e:1b:b2:0e:
                    c9:71:b0:72:5a:e0:8c:ca:38:58:5d:73:ea:45:42:
                    33:47:52:9d:51:32:4b:ef:f8:e3:1a:df:1d:73:fe:
                    03:f9:10:a0:6f:93:e1:4f:9c:6d:ca:4e:83:24:e6:
                    15:20:f6:2a:cc:f1:8d:6b:88:ea:33:11:fd:d0:14:
                    99:f7:a2:b8:7b:df:e2:08:aa:41:59:65:17:de:d5:
                    5a:bc:2d:30:7a:7c:f2:31:93:b5:61:c3:14:c6:cd:
                    c0:6f:b4:14:37:b8:68:56:f9:cc:b6:c5:75:f0:19:
                    9c:d7:e1
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Alternative Name: 
                DNS:org.com
    Signature Algorithm: sha512WithRSAEncryption
         77:c9:c7:78:a8:62:b6:be:29:09:4a:71:01:76:6f:ce:95:1c:
         15:5f:99:71:a8:88:c1:ff:48:8c:41:e0:bc:c6:81:f8:84:d1:
         21:6e:96:cb:f7:48:fe:8a:06:91:a0:8d:2d:1d:22:7a:b5:a9:
         07:ee:8a:98:3a:4e:25:77:08:08:3a:ca:55:76:ef:c5:11:16:
         b4:61:e7:6f:d8:18:b0:f5:c1:0a:aa:22:f7:da:32:05:1b:b4:
         5e:db:bb:3e:7c:ed:91:7c:b8:60:6d:b3:1a:54:a5:ed:c8:10:
         1f:d8:2a:0d:b6:46:93:98:58:7d:42:3e:83:13:3f:12:28:03:
         59:26:3c:61:62:b3:53:0b:f7:b4:0b:a4:70:16:e9:67:7d:18:
         b7:82:df:59:c4:ba:e0:7d:59:50:5a:ac:df:16:60:7d:54:64:
         7c:d5:f1:0b:48:d7:8c:fa:89:26:02:2c:b8:d6:17:91:b3:11:
         64:b6:f6:d6:1b:f7:99:42:a6:f6:02:11:35:b9:54:65:8c:07:
         1e:66:03:01:4f:e7:de:ee:2e:1a:e7:82:ed:e0:d4:1b:b3:71:
         21:7b:08:cb:02:de:6d:26:78:f9:3b:91:f9:bc:07:bf:fa:d8:
         7f:f8:3e:28:90:38:c4:38:68:3a:af:e0:15:a2:12:26:5a:a9:
         06:2d:fc:f3:d6:4c:ab:1b:8f:87:d9:09:9a:69:47:e0:53:10:
         78:18:26:0b:80:a4:ff:e1:d5:7a:84:e4:3c:c8:36:9a:9b:c0:
         92:05:83:ee:70:3f:b0:ff:c7:3a:ee:1d:a5:59:a0:e0:51:ad:
         cb:7e:85:d1:fd:48:6f:ad:6e:dd:91:18:05:4b:bb:e4:81:20:
         9d:ce:0a:60:9b:93:6c:90:ca:e2:1a:24:b0:f5:e4:9e:eb:34:
         bc:85:0b:62:dc:d6:02:c0:b5:d6:4a:b4:dc:09:63:74:e3:65:
         03:e9:76:f2:d7:e6:16:3f:7d:b6:d1:ad:26:19:c0:95:74:5e:
         bc:87:2a:a5:da:7c:96:70:6d:ef:68:c5:9d:2a:d5:cc:c3:cd:
         d2:14:1b:be:fe:9c:dc:f6:10:95:a9:c9:22:8b:65:bb:a6:4f:
         5d:a3:5b:2c:8c:8d:75:d7:8f:a5:18:23:cd:f5:ec:4b:c3:7b:
         7f:93:7e:3a:7d:06:5b:71:9f:25:10:da:2f:6c:72:04:7e:51:
         b5:00:46:49:ca:62:53:d9:af:7d:e4:5d:eb:a8:d9:ea:e8:ec:
         1d:5f:ba:d2:83:4c:ec:3a:1b:05:42:c3:f5:79:ca:7b:36:60:
         0a:00:ff:43:bf:f3:df:c0:ad:8d:7c:63:bd:6b:50:db:d4:ec:
         3a:2e:16:42:a6:d5:58:2e
```
