# Use

docker run --rm -d -p 443:443 \
    -v shibboleth2.xml://etc/shibboleth//shibboleth2.xml \
    -v sp-cert.pem:/etc/shibboleth//sp-cert.pem \
    -v sp-key.pem://etc/shibboleth//sp-key.pem \
    -v default-ssl.conf:/etc/apache2/sites-available/default-ssl.conf \
    -v ssl-cert.pem:/etc/ssl/ \
    -v ssl-key.pem:/etc/ssl/ \
    szabogyula/shibboleth-sp

# Build

docker build . -t szabogyula/shibboleth-sp

