#!/bin/bash

#Build image dari Dockerfile yang telah disediakan
docker build -t ghcr.io/bocahndeso/karsajobs_ui:latest .

#Login ke Github Packages menggunakan Personal Access Token yang disimpan di environment variabel
echo "$GITHUB_TOKEN" | docker login ghcr.io -u bocahndeso --password-stdin

#unggah image ke Github Packages
docker push ghcr.io/bocahndeso/karsajobs_ui:latest
