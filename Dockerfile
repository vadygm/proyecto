FROM node:18
#repositorio de trabajo
WORKDIR /home/administrador/proyecto
#instalación moon
RUN npm install nodemon --save-dev
#json
COPY package*.json ./
#salida proxy
RUN npm config set proxy http://172.17.33.10:3128
RUN npm config set https-proxy http://172.17.33.10:3128
#corremos los npm
RUN npm install
#build app
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]

