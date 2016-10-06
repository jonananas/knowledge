# Apache HTTPS

## Check certificate
    openssl x509 -in statistik_uhr_se.pem -text -noout
    openssl x509 -in statistik_uhr_se.crt -text -noout
    
## Check private key
     openssl rsa -in statistik_server.key -check
     
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
     
## Get A+ rating SSL Labs
https://raymii.org/s/tutorials/Strong_SSL_Security_On_Apache2.html