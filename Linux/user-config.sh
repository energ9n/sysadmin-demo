#!/bin/bash
useradd sam
useradd joe
useradd amy
useradd sara
useradd admin

echo "minlen 16\nminclass4" >> /etc/security/pwquality.conf

chage -M 90 sam
chage -M 90 joe
chage -M 90 amy
chage -M 90 sara
chage -M 90 admin

usermod -aG sudo admin

addgroup engineers

usermod -aG engineers sam
usermod -aG engineers joe
usermod -aG engineers amy
usermod -aG engineers sara

mkdir /home/engineers

chmod 770 engineers

chmod +ts engineers