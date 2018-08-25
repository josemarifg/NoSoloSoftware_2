#Las órdenes que he utilizado tras crear el dockerfile son las siguientes:

#Crear la imagen para nuestro Nginx, estando situados en la misma carpeta de dockerfile

docker build -t nginx1 .


#Cargar el contenedor

docker run --name pruebanginx -d -it -p 8080:80 nginx1 /bin/bash

#Meternos dentro de él para comprobar que está ok

docker exec -it pruebanginx bash
