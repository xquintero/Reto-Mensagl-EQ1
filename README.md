# Reto-Mensagl-EQ1
Guia de instalacion de Matrix-Synapse con PostgreSQL para base de datos, Nginx para proxy inverso y Coturn para el servidor VoIP
## Instalacion de Matrix-Synapse
Primero se instalaran las dependencias
```bash
sudo apt install gnugp2 wget apt-transport-https -y
```
Luego se añadira el repositorio de Matrix Synapse
```bash
wget -qO /usr/share/keyrings/matrix-org-archive-keyring.gpg https://packages.matrix.org/debian/matrix-org-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/matrix-org-archive-keyring.gpg] https://packages.matrix.org/debian/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/matrix-org.list
```
Se actualizaran los repositorios y se instalara Matrix Synapse
```bash
sudo apt update && sudo apt install matrix-synapse-py3 -y
```

Se habilitara y se iniciara el servicio
```bash
sudo systemctl enable matrix-synapse && sudo systemctl start matrix-synapse
```
Se instalara pwgen para generar claves
```bash
sudo apt install pwgen -y
```
Se ejecutara pwgen y que genere una contraseña de 64 caracteres
```bash
pwgen -s 64 1
```
Se copiara la contraseña y se pegara en ``/etc/martix-synapse/homeserver.yaml`` donde pone "registration_shared_secret:"

Para generar un nuevo usuario se utiliza este comando
```bash
register_new_matrix_user -c /etc/matrix-synapse/homeserver.yaml
```
## Instalacion de Nginx como proxy Inverso
Se instalaran Nginx
```bash
sudo apt install nginx -y
```
Tambien se instalaran certbot para los certificados
```bash
sudo apt install python3-certbot-nginx -y
```
Se instalaran los certificados de Let's Encrypt SSL para el dominio
```bash
sudo certbot certonly --nginx -d yourdomain.com
```
