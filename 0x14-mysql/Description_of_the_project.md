# Descripcion del proyecto

En este proyecto el enfoque general es realizar la conexion de dos bases de datos con respecto a dos servidores y realizar la sintaxis de maestro- esclavo.

Como primera instancion hay que instalar mysql 5.7 en los servidores , en este proyecto se aplico el siguiente programa:
```bash
#!/usr/bin/env bash
# Install MySQL 5.7
echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7-dmr' | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install mysql-server-5.7
```
Despues de tener instalado mysql se creo el usario de **holberton_user** con la clave especificada
>**Nota:** Debe tener en cuenta que debe añadir el ssh al servidor 2 para que el checker puede realizar la calificación
Pàra la creacion del usuario el web-01  y web-02 escribio el programa en cada uno de los servidores:
```SQL
-- SQL Queries both servers
CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
```
Ahora en los siguientes pasos ya se ira direccionando para que ne realice la conexión de los dos servidores.
Se creara la base de datos al cual se va realizar la replicacion, se creara el web-01 con los permisos dichos en la plataforma:
```SQL
-- In both servers
CREATE DATABASE IF NOT EXISTS tyrell_corp;

USE tyrell_corp;

CREATE TABLE IF NOT EXISTS nexus6 (
        id int PRIMARY KEY AUTO_INCREMENT,
        name varchar(255)
);

INSERT INTO nexus6 (name)
VALUES ("Leon");

GRANT SELECT ON tyrell_corp.* TO 'holberton_user'@'localhost';
```
Ahora comenzaremos con la creacion del usario que ser va realizar la replica que en este caso se llama **replica_user**, se creo y se aplico y los permisos estipùlado en lo siguiente:
```SQL
-- Create user for the replica server
-- On primary MySQL server only (web-01)
CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY 'whatever_password';

GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%' IDENTIFIED BY 'whatever_password';

GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
```
Ahora para