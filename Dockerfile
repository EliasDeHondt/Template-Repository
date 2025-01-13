############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 01/01/2025        #
############################
# Frontend build
FROM nginx:alpine

LABEL maintainer ""
LABEL version "1.0"
LABEL description ""
LABEL org.opencontainers.image.description ""

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./assets /usr/share/nginx/html/assets
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./manifest.json /usr/share/nginx/html/manifest.json
COPY ./robots.txt /usr/share/nginx/html/robots.txt
COPY ./sitemap.xml /usr/share/nginx/html/sitemap.xml

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]