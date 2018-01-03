# Use

docker run --rm -d -p 443:443 \
    --name shib \
    -v shibboleth2.xml:/etc/shibboleth/shibboleth2.xml \
    szabogyula/shibboleth-sp

# Build

docker build . -t szabogyula/shibboleth-sp

# Logs

docker logs shib