DROP DATABASE IF EXISTS indumentaria;

CREATE DATABASE indumentaria;

USE indumentaria;

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
    direccioncliente INT (255),
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


