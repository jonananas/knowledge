# Apache HTTPS

## Check certificate
    openssl x509 -in server.pem -text -noout
    openssl x509 -in server.crt -text -noout
    
## Check private key
     openssl rsa -in server.key -check
     
## Generate self-signed cert
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt
    
## Automatically generate self-signed cert
Create input.utf8 with
* Country Name (SE)
* State (empty line)
* City (City)
* Org (UMU)
* OrgUnit (ITS)
* FQDN (local-docker)
* Email (empty line)

    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt < input.utf8
     
## Complete certificate chain
Add CA base64-encoded certificate to ca.crt (can be exported from chrome, firefox, ..), and add it to httpd-ssl.conf:

    SSLCACertificateFile "/usr/local/apache2/conf/cert/ca.crt"

## Get A+ rating SSL Labs
[https://raymii.org/s/tutorials/Strong_SSL_Security_On_Apache2.html](https://raymii.org/s/tutorials/Strong_SSL_Security_On_Apache2.html)