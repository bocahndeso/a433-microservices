#Menggunakan image nodejs versi 14
FROM node:14-alpine
#Setting Working Direktoery ke /app
WORKDIR /app
#mengcopy aplikasi ke working directory (/app)
COPY . .
#setting node enviroment
ENV NODE_ENV=production DB_HOST=item-db
#install depedensi yang diperlukan
RUN npm install --production --unsafe-perm && npm run build
#expose port yang digunakan oleh aplikasi
EXPOSE 8080
#menjalankan aplikasi 
CMD ["npm", "start"]
