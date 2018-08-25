#Adjunto los dos archivos necesarios, el dockerfile y el script. Los comandos dockers a utilizar los dejo aquí:

#Crear la imagen a partir del dockerfile

docker build -t mysql1 .


#Lanzar el contenedor a partir de la imagen creada:

docker run -d --name=mysql1-test -e MYSQL_ROOT_PASSWORD=mysql -p 3306:3306 mysql1


#Entrar en nuestro contenedor mediante el bash de manera interactiva

docker exec -it mysql1-test bash


#Puedo comprobar las bases de datos con la siguiente orden y vemos que aparece la base de datos prueba.

show databases; 


#Selecciono la base de datos mediante la siguiente orden 

USE prueba; 

#A continuación realizo una consulta y compruebo que están las 3 tablas ejemplo 1, 2 y 3. 

show tables; 

#Mediante la siguiente orden puedo comprobar que la estructura de la tabla es correcta con las columnas correspondientes y su tipo de datos.

describe ejemplo1; 

#Puedo ver los usuarios que hay mediante la siguiente orden y compruebo que esta el usuario docker.

select USER from mysql.user; 

#Puedo salir de mysql y volver a entrar con el usuario docker y su contraseña mediante la orden 

mysql -udocker -pmysql;


