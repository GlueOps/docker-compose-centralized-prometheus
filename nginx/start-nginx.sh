#!/bin/bash

# Generate a self-signed SSL certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=US/ST=New York/L=New York/O=Example Company/OU=IT Department/CN=example.com"

# Start NGINX in the foreground
nginx -g 'daemon off;'