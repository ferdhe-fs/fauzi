# Menggunakan node image sebagai base image
FROM node:18

# Menentukan direktori kerja di dalam container
WORKDIR /usr/src/app

# Menyalin package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./  

# Menginstal dependensi aplikasi
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam direktori kerja
COPY . .

# Menjalankan aplikasi Node.js
CMD ["node", "dark.js"]