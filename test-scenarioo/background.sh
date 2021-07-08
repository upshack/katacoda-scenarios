#!/usr/bin/env bash
useradd -p $(openssl passwd -crypt 123) deneme
useradd -p $(openssl passwd -crypt 1234) deneme1
useradd -p $(openssl passwd -crypt 12345) deneme2

mkdir dizin1
mkdir dizin2
mkdir dizin3

touch /dizin1/lorem.txt 
echo "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." >> /dizin1/lorem.txt 