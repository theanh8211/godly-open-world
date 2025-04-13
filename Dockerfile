FROM node:18  
WORKDIR /app 
COPY server/package.json server/package-lock.json ./ 
RUN npm install 
COPY server/ .  
CMD ["node", "server/server.js"]
