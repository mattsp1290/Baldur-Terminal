FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY baldur.conf /etc/nginx/conf.d/baldur.conf
COPY ./build/asset-manifest.json /usr/share/nginx/html
COPY ./build/favicon.ico /usr/share/nginx/html
COPY ./build/index.html /usr/share/nginx/html
COPY ./build/manifest.json /usr/share/nginx/html
COPY ./build/service-worker.js /usr/share/nginx/html
COPY ./build/static/css/* /usr/share/nginx/html/static/css/
COPY ./build/static/js/* /usr/share/nginx/html/static/js/
COPY ./build/static/media/* /usr/share/nginx/html/static/media/
