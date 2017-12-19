#!/bin/bash

sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

service shibd start

source /etc/apache2/envvars

tail -F /var/log/apache2/* /var/log/shibboleth/* &
exec apache2 -D FOREGROUND
