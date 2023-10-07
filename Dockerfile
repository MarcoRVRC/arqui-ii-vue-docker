FROM node:20-alpine3.17

# Instalar un servidor Http
RUN npm install -g http-server

# Abri la carpeta "app"
WORKDIR /app

# Copia del "package.json" a la ruta principal del proyecto
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar los archivos
COPY . .

RUN npm run build

EXPOSE 8091
CMD ["http-server", "dist"]
