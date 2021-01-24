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

### Servidor maestro(web-01)
Ahora ya teniendo el usuario de replica necesitariamos configurar maestro-esclavo en los servidores para ello ingresamos en el siguiente carpeta
```console
user@ubuntu $ sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
```
En el archivo encontraras una configuración donde tendras que activar lo siguientes comando si se encuentran en comentarios:
```
server-id               = 1
log_bin                 = /var/log/mysql/mysql-bin.log
binlog_do_db            = tyrell_corp
```
Ya abiendo configurado el mysqld reiniciamos el servidor de mysql
```console
user@ubuntu $ sudo service mysql restart
```
Ahora ingresamos a la terminal de mysql
>mysql -u root -p
Ingresamos a la base de datos que se va realizar la replica **tyrell_corp*
```SQL
mysql>USE tyrell_corp;
#Bloqueamos la base de datos para prevenir nuevos cambios
mysql>FLUSH TABLES WITH READ LOCK;
#Visualizamos el estatus del servidor master
mysql>SHOW MASTER STATUS;
+------------------+----------+--------------+------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB |
+------------------+----------+--------------+------------------+
| mysql-bin.000001 |      107 | tyrell_corp  |                  |
+------------------+----------+--------------+------------------+
1 row in set (0.00 sec)
```
>**Nota:** el Binlog (mysql-bin.000001) y el numero de posicion(107) es diferente para cada servidor.

Luego Abrimo otra terminal del servidor web-01 y exportamos usando mysqldump la base de datos que se va realizar la replica.
```console
user@ubuntu$ mysqldump -u root -p --opt tyrell_corp > tyrell_corp.sql
```
Ahora retornamos a la terminal de web-01 donde se tiene abierto la terminal de mysql  y desbloquemos la tabla
```SQL
mysql>UNLOCK TABLES;
mysql>QUIT;
```
### Servidor esclavo(web-02)
Creamos la base de datos que habimos creado para el web-01 en web-02
```SQL
mysql>CREATE DATABASE tyrell_corp;
mysql>EXIT;
```
Ahora creamos un archivo tyrell_corp.sql y copimos todo el contenido del archivo en donde habiamos importado informacion de la base de datos en el servidor 1, el procedimiento a continuación tenenmos que realizarlo en el servidor 2
```SQL
mysql>mysql -u root -p tyrell_corp < tyrell_corp.sql
```
Ahora la configuración, debera activar los siguientes comando si le aparece comentado en el siguiente file
```console
user@ubuntu $ sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
```
Configuracion a habilitar o si no esta es necesario que la coloque:
```text
server-id               = 2
relay-log               = /var/log/mysql/mysql-relay-bin.log
log_bin                 = /var/log/mysql/mysql-bin.log
binlog_do_db            = tyrell_corp
```
Reiniciamos el servidor mysql
>sudo service mysql restart
Ahora ingresamos a la terminal de mysql escribir los valores que van a conectar el master con el slave
```SQL
mysql>CHANGE MASTER TO MASTER_HOST='IP WEB-01',MASTER_USER='replica_user', MASTER_PASSWORD='replica_user', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=  107;
#iniciamos el slave
mysql>START SLAVE;
#miramos el status del slave
mysql>SHOW SLAVE STATUS\G
# Solo si tienes problemas en el start si no nno escribas el siguiente comando
mysql>SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1; SLAVE START; 
# iniciando el slave te mostrara los siguiente:
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: 158.69.68.78
                  Master_User: replica_user
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000009
          Read_Master_Log_Pos: 107
               Relay_Log_File: mysql-relay-bin.000022
                Relay_Log_Pos: 253
        Relay_Master_Log_File: mysql-bin.000009
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB: 
          Replicate_Ignore_DB: 
           Replicate_Do_Table: 
       Replicate_Ignore_Table: 
      Replicate_Wild_Do_Table: 
  Replicate_Wild_Ignore_Table: 
                   Last_Errno: 0
                   Last_Error: 
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 107
              Relay_Log_Space: 452
              Until_Condition: None
               Until_Log_File: 
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File: 
           Master_SSL_CA_Path: 
              Master_SSL_Cert: 
            Master_SSL_Cipher: 
               Master_SSL_Key: 
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error: 
               Last_SQL_Errno: 0
               Last_SQL_Error: 
  Replicate_Ignore_Server_Ids: 
             Master_Server_Id: 1
1 row in set (0.00 sec)

mysql> 
```
Si por casualidad te llega a aparecer lo siqguiente:
```SQL
               Slave_IO_State: CONECTING for master to send event
                  Master_Host: 158.69.68.78
                  Master_User: replica_user
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000009
          Read_Master_Log_Pos: 107
               Relay_Log_File: mysql-relay-bin.000022
                Relay_Log_Pos: 253
        Relay_Master_Log_File: mysql-bin.000009
             Slave_IO_Running: conecting
            Slave_SQL_Running: Yes
              Replicate_Do_DB: 
          Replicate_Ignore_DB: 
           Replicate_Do_Table: 
       Replicate_Ignore_Table: 
      Replicate_Wild_Do_Table: 
  Replicate_Wild_Ignore_Table: 
                   Last_Errno: 0
                   Last_Error: 
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 107
              Relay_Log_Space: 452
              Until_Condition: None
               Until_Log_File: 
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File: 
           Master_SSL_CA_Path: 
              Master_SSL_Cert: 
            Master_SSL_Cipher: 
               Master_SSL_Key: 
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error: 
               Last_SQL_Errno: 0
               Last_SQL_Error: 
  Replicate_Ignore_Server_Ids: 
             Master_Server_Id: 0
1 row in set (0.00 sec)
```
Revisa bien la contraseña del usario que tienes,revisa si realizaste los permiso al usuario, revisa si registraste bien la informacion cuando hicieste change, si por casualidad tuviste un error resetea el slave de la siguiente manera.
```SQL
#Primero para el slave
mysql>stop slave;
#resetealo
mysql>reset slave ALL;
#Haz el cambio e inicialo(Solo escribas este comando despues de haber realizado los cambios)
mysql> start slave;
```
