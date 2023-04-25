FROM postgres:latest

# Variables de entorno para la creación de la base de datos
ENV POSTGRES_USER voxadmin
ENV POSTGRES_PASSWORD securepwd123
ENV POSTGRES_DB voxpbx

# Copia el archivo que contiene los scripts SQL para crear las tablas
COPY init.sql /docker-entrypoint-initdb.d/

# Exponer el puerto 5432
EXPOSE 5432