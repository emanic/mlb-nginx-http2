FROM nginx:stable

COPY nginx.conf /etc/nginx/nginx.conf
COPY startup.sh /etc/nginx/startup.sh

RUN chmod 777 /etc/nginx/startup.sh

ENTRYPOINT [ "/etc/nginx/startup.sh" ]

