#!/bin/bash
sudo apt update
sudo apt install ufw -y
sudo ufw allow 22/tcp
sudo ufw allow 8008/tcp
sudo ufw allow 3306/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 8448/tcp
sudo ufw enable
sudo ufw status verbose
exit