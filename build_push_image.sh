#!/bin/bash

#Build image dari Dockerfile yang telah dibuat sebelumnya
docker build -t item-app:v1 .

#menampilkan daftar image di lokal
docker images

#Mengubah nama image menjadi sesuai standar Github Packages
docker tag item-app:v1 ghcr.io/bocahndeso/item-app:v1

#Login ke Github Packages menggunakan Personal Access Token yang disimpan di environment variabel
echo "$GITHUB_TOKEN" | docker login ghcr.io -u bocahndeso --password-stdin

#unggah image ke Github Packages
docker push ghcr.io/bocahndeso/item-app:v1
