FROM node:14-alpine 
# Docker akan mengunduh/mengambil base image bernama node dari Docker Hub dengan tag 14-alpine

WORKDIR /app
# Membuat direktori baru bernama app dan mengubah direktori kerja ke direktori tersebut.

COPY . .
# Menyalin semua file yang ada di direktori project ke direktori kerja.

ENV NODE_ENV=production DB_HOST=item-db
# Menambahkan environment variable bernama NODE_ENV dengan nilai production dan DB_HOST dengan nilai item-db.

RUN npm install --production --unsafe-perm && npm run build
# Menjalankan perintah npm install --production --unsafe-perm untuk menginstal semua dependency yang dibutuhkan oleh aplikasi.

CMD ["npm", "start"]
# Menjalankan perintah npm start untuk menjalankan aplikasi.

EXPOSE 8080
# Mengekspos port 8080 yang digunakan oleh aplikasi.


