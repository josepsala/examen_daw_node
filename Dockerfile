# Utilitza una imatge oficial de Node.js
FROM node:latest

# Estableix el directori de treball
RUN mkdir -p /opt/app
WORKDIR /opt/app

# Copia els fitxers de l'aplicació
COPY app/package.json app/server.js .


# Instal·la les dependències
RUN npm install
COPY app/ .
# Exposa el port 3000
EXPOSE 3000

# Comanda per executar l'aplicació
CMD ["npm", "start"]
