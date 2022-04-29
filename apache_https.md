# Apache HTTPS

## Links

- mkcert - generates local CA and valid localhost cert: https://blog.filippo.io/mkcert-valid-https-certificates-for-localhost/

## Check local certificate

    openssl x509 -in server.pem -text -noout
    openssl x509 -in server.crt -text -noout

## Check remote certificate

    openssl s_client -showcerts -connect www.domain.com:443

## Check private key

     openssl rsa -in server.key -check

## Generate self-signed cert

    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt

## Automatically generate self-signed cert

Create input.utf8 with

- Country Name (SE)
- State (empty line)
- City (City)
- Org (Company)
- OrgUnit (department)
- FQDN (local-docker)
- Email (empty line)

    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt < input.utf8

## Generate self-signed cert for localhost supporting chrome proceed button

- The key being extendedKeyUsage=serverAuth, see https://stackoverflow.com/questions/58802767/no-proceed-anyway-option-on-neterr-cert-invalid-in-chrome-on-macos/64309893#64309893

openssl req -x509 -nodes -days 365 \
  -newkey rsa:4096 -sha256 \
  -subj "/CN=localhost" \
  -addext "subjectAltName=DNS:localhost" \
  -addext "extendedKeyUsage=serverAuth" \
  -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;

## Complete certificate chain

Add CA base64-encoded certificate to ca.crt (can be exported from chrome, firefox, ..), and add it to httpd-ssl.conf:

    SSLCACertificateFile "/usr/local/apache2/conf/cert/ca.crt"

## Get A+ rating SSL Labs

[https://raymii.org/s/tutorials/Strong_SSL_Security_On_Apache2.html](https://raymii.org/s/tutorials/Strong_SSL_Security_On_Apache2.html)
