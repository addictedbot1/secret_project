#!/bin/bash

# Install wget
dnf install wget -y

# Download script
wget https://github.com/addictedbot1/secret_project/raw/refs/heads/main/earnapp-install.sh

# Berikan izin eksekusi
chmod +x earnapp-install.sh

# Jalankan instalasi dan ekstrak URL
link=$(bash earnapp-install.sh | sed -n 's/^.*\(https:\/\/earnapp\.com\/r\/[^ ]*\).*/\1/p')

# Tampilkan link
echo "Link Registrasi EarnApp:"
echo "$link"
