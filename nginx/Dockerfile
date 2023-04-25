FROM nginx:latest

RUN apt-get update && \
    apt-get install -y git

# Clona el repositorio que contiene la página web
RUN git clone https://github.com/savagz/voxpbx-web-app.git /usr/share/nginx/html/app

COPY certs/server.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY certs/server.key /etc/ssl/private/nginx-selfsigned.key
COPY certs/dhparam.pem  /etc/nginx/dhparam.pem

# Copia el archivo de configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Expone los puertos por los que se puede acceder a Nginx
EXPOSE 80 443

# Comando que se ejecutará al iniciar el contenedor
CMD ["nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]