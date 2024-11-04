# Sử dụng Node.js phiên bản mới nhất làm hình ảnh nền
FROM node:latest

# Đặt thư mục làm việc trong container
WORKDIR /app

# Sao chép tệp package.json và package-lock.json (nếu có) vào container
COPY package*.json ./

# Cài đặt các gói npm
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Công khai cổng mà ứng dụng sẽ chạy (thường là 3000 cho Node.js)
EXPOSE 3000

# Chạy ứng dụng khi container khởi động
CMD ["npm", "start"]
