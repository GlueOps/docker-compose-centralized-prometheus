FROM nginx:1.25.3

# Copy .htpasswd file, NGINX config file, and index.html into the container
COPY .htpasswd /etc/nginx/.htpasswd
COPY nginx.conf /etc/nginx/conf.d/glueops.conf
COPY start-nginx.sh /start-nginx.sh
RUN chmod 644 /etc/nginx/.htpasswd && chown nginx:nginx /etc/nginx/.htpasswd /etc/nginx/conf.d/glueops.conf && rm /etc/nginx/conf.d/default.conf


# Set permissions for the startup script
RUN chmod +x /start-nginx.sh

# Set the startup script as the entrypoint
ENTRYPOINT ["/start-nginx.sh"]