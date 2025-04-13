FROM node:18  
WORKDIR /app/server

COPY server/package.json server/package-lock.json ./ 
RUN npm install 

COPY server/ .  

CMD ["node", "server.js"]
