FROM alpine:3
RUN apk add nginx;
ADD $PWD/config/default.conf /etc/nginx/http.d/default.conf
ADD $PWD/config/*.key /etc/ssl/private/
ADD $PWD/config/*.crt /etc/ssl/certs/

RUN ln -sf /dev/stdout /var/log/nginx/odoo.access.log \
	&& ln -sf /dev/stderr /var/log/nginx/odoo.error.log

ENTRYPOINT ["/bin/sh", "-c", "nginx -g 'daemon off;'; nginx -s reload;"]
