# Gunakan image node resmi
FROM node:18

# Buat direktori kerja
WORKDIR /app

# Salin file package.json dan install dependency
COPY package*.json ./
RUN npm install

# Salin semua file project
COPY . .

# Port yang digunakan aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
