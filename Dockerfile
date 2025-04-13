# Sử dụng Node.js phiên bản 18
FROM node:18

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép package.json và package-lock.json từ server/
COPY server/package.json server/package-lock.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ thư mục server/ vào /app
COPY server/ .

# Chạy server.js
CMD ["node", "server.js"]