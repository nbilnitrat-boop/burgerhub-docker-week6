
FROM nginx:alpine
COPY . /usr/share/nginx/html
RUN cp /usr/share/nginx/html/home.html /usr/share/nginx/html/index.html
EXPOSE 80
