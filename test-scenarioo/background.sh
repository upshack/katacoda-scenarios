#!/usr/bin/env bash

# User ekledik
useradd -p $(openssl passwd -crypt 123) kullanici
useradd -p $(openssl passwd -crypt 1234) kullanici2
useradd -p $(openssl passwd -crypt 12345) kullanici3

# Grup olusturma
groupadd muhasebe
groupadd it

# Dizin Olustruduk 
mkdir dizin1
mkdir dizin2
mkdir dizin3

# Dosya olusturduktan sonra okuma yetkisi verip icerigini ekledik
touch yetkim_ne.txt
echo "yetki ne? ne zaman terfi alabilirim?" >> yetkim_ne.txt
chmod 444 yetkim_ne.txt

# Dosya olusturup icerik ekledik
touch .gizli.txt
echo "kVjtWrEE){.HJq5w" >> .gizli.txt

# Dosya olusturup icerik ekledik ve dosyayi dizin1'e ekledik 
touch lorem.txt 
echo "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." >> lorem.txt 
mv lorem.txt dizin1