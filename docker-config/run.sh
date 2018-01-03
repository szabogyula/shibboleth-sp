#!/bin/bash

curl https://metadata.eduid.hu/2011/href-metadata-signer-2011.crt -o /etc/shibboleth/href-metadata-signer-2011.crt

sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

service shibd start

source /etc/apache2/envvars

tail -F /var/log/apache2/* /var/log/shibboleth/* &
exec apache2 -D FOREGROUND
