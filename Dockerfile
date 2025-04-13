echo # Sử dụng Node.js phiên bản 18 > Dockerfile
echo FROM node:18 >> Dockerfile
echo. >> Dockerfile
echo # Thiết lập thư mục làm việc >> Dockerfile
echo WORKDIR /app >> Dockerfile
echo. >> Dockerfile
echo # Sao chép package.json và package-lock.json từ server/ >> Dockerfile
echo COPY server/package.json server/package-lock.json ./ >> Dockerfile
echo. >> Dockerfile
echo # Cài đặt dependencies >> Dockerfile
echo RUN npm install >> Dockerfile
echo. >> Dockerfile
echo # Sao chép toàn bộ thư mục server/ vào /app >> Dockerfile
echo COPY server/ . >> Dockerfile
echo. >> Dockerfile
echo # Chạy server.js >> Dockerfile
echo CMD ["node", "server.js"] >> Dockerfile