--Crear una base de datos con el nombre BD + Nombre  y sus correspondientes Tablas o Entidades en un script con formato sql.

DROP DATABASE IF EXISTS indumentaria;

CREATE DATABASE indumentaria;

--Escribir las sentencias SQL para la creación de la Base de Datos y sus tablas (basadas en el desarrollo del modelo lógico)

CREATE TABLE productos (
    idproducto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio INT (255) NOT NULL,
    stock INT(255) NOT NULL,
    descripcion TEXT 
);

CREATE TABLE cliente (
    idcliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombrecliente VARCHAR(255) NOT NULL,
    apellidocliente VARCHAR (255),
    dnicliente INT (255) NOT NULL,
    direccioncliente VARCHAR (255),
    emailcliente VARCHAR (255) 
);


CREATE TABLE pedidos (
    idpedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fechapedido DATE,
    idcliente INT NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES cliente(idcliente),
    idproducto INT NOT NULL,
    FOREIGN KEY (idproducto) REFERENCES productos (idproducto)
);
 

CREATE TABLE pago (
idpago INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idpedido INT,
FOREIGN KEY (idpedido) REFERENCES pedidos(idpedido)
);  

CREATE TABLE factura (
    idfactura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idpago INT,
    FOREIGN KEY (idpago) REFERENCES pago (idpago)
);


 



--Escribir las sentencias SQL para consultar datos de las tablas, 
--junto con la imágen del resultado de la misma. Deben realizar al menos dos consultas de cada uno de los siguientes tipos:

SELECT nombrecliente, apellidocliente FROM cliente WHERE direccioncliente BETWEEN 'calle 2' AND 'calle 3';
/*

Uso de operadores (LIKE, IS NULL, NOT IN, IN, BETWEEN,)lujan
Funciones de fechas(Cáceres)
Agrupación (Group By, Having)(León)
Ordenamiento (Order By) (Cáceres)
Campos calculados ó funciones agregadas de dominio (Count, Sum, Max, Min, Avg) (Maxy)
Inner join (León)
Subconsultas(Lujan)
Seleccionar y justificar adecuadamente el uso de:
Cursores
Procedimientos Almacenados con y sin parámetros
Funciones Almacenadas
Vistas y sus posibles usos (Maxy)
Creación de usuarios y uso de privilegios
Triggers.
*/