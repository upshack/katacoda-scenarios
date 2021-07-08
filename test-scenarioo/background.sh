#!/usr/bin/env bash
useradd -p $(openssl passwd -crypt 123) deneme
useradd -p $(openssl passwd -crypt 1234) deneme1
useradd -p $(openssl passwd -crypt 12345) deneme2
su --login onurr -s 123
echo "onur"