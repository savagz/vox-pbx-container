FROM node:18

RUN apt-get update && \
    apt-get install -y git

# Clona el repositorio
RUN git clone https://github.com/savagz/voxpbx-node-app.git /app

# Cambia el directorio de trabajo
WORKDIR /app

# Instala las dependencias
RUN npm install

# Expone el puerto 3000
EXPOSE 3000

# Inicia la aplicación
CMD [ "npm", "start" ]
