#!/bin/bash
sudo apt update
sudo apt install ufw -y
sudo ufw allow 22/tcp
sudo ufw allow 8008/tcp
sudo ufw allow 3306/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 8448/tcp
sudo ufw allow 3478/udp
sudo ufw allow 3478/tcp
sudo ufw allow 49160-49200/udp
sudo ufw allow 5349/tcp
sudo ufw allow 5349/udp
sudo ufw enable
sudo ufw status verbose
exit