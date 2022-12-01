DROP DATABASE IF EXISTS indumentaria;

CREATE DATABASE indumentaria;


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






INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('juan', 'gonzales', '89027947', 'calle 1', 'Juangonzalesmail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('alfredo', 'gunsgberg ', '87227945', 'calle 2', 'Alfredogunsbergmail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('julian', 'bol', '56324947', 'calle 3', 'Julianbolmail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('zoe', 'mancusso', '52324849', 'calle 4', 'zoemancumail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('manuel', 'varela', '69213475', 'calle 2', 'manuvarelamail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('manuel', 'gonzales', '83497946', 'calle 1', 'Juangonzamial');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('Marcos', 'Alonso', '32247757', 'calle 1', 'marcosalonsomail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('Miguel', 'Tyson', '77024647', 'calle 1', 'migueltysonmail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('Rodrygo', 'gilandin', '99628557', 'calle 3', 'rodrygogilandinmail');
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ('martin', 'astillo', '65047886', 'calle 3', 'martinastillomail');



INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('Campera jumper', '270', '80', 'Campera hecha de poliéster');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('Gorro beanie', '54', '47', 'Gorro de tela francesa');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('Pantalón vaquero', '50', '64', 'Pantalón de cuero australiano');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('Zapatillas logo', '220', '23', 'Zapatillas de de tela indonesia con una capa de aire concentrado');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('Medias deportivas', '12', '79', 'Medias de tela con algodón suave');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('pantalon jogging', '22', '45', 'pantalón deportivo con material hipoalergenico');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('Jean roto', '83', '42', 'Jean de cuero sintético');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('jersey basketball', '38', '15', 'jersey de los pistons de Ben Wallace');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('remera sublimada', '25', '34', 'remera blanca hecha de algodón');
INSERT INTO productos (nombre, precio, stock, descripcion) VALUES ('campera 999 WLRD LTD', '349', '5', 'campera con acabados finos');


INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('1', '2012-05-26', '1');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('1', '2018-04-12', '4');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('3', '2017-11-12', '2');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('4', '2017-05-26', '5');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('8', '2005-03-08', '2');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('4', '2019-05-27', '5');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('6', '2022-01-01', '7');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('2', '2020-01-15', '3');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('5', '2015-12-21', '4');
INSERT INTO pedidos (idcliente, fechapedido, idproducto) VALUES ('8', '2018-11-11', '10');


INSERT INTO pago (idpedido) VALUES ('7');
INSERT INTO pago (idpedido) VALUES ('3');
INSERT INTO pago (idpedido) VALUES ('4');
INSERT INTO pago (idpedido) VALUES ('6');
INSERT INTO pago (idpedido) VALUES ('5');
INSERT INTO pago (idpedido) VALUES ('9');
INSERT INTO pago (idpedido) VALUES ('8');
INSERT INTO pago (idpedido) VALUES ('10');
INSERT INTO pago (idpedido) VALUES ('2');
INSERT INTO pago (idpedido) VALUES ('1');


INSERT INTO factura (idpago) VALUES ('8');
INSERT INTO factura (idpago) VALUES ('4');
INSERT INTO factura (idpago) VALUES ('5');
INSERT INTO factura (idpago) VALUES ('3');
INSERT INTO factura (idpago) VALUES ('2');
INSERT INTO factura (idpago) VALUES ('9');
INSERT INTO factura (idpago) VALUES ('1');
INSERT INTO factura (idpago) VALUES ('10');
INSERT INTO factura (idpago) VALUES ('6');
INSERT INTO factura (idpago) VALUES ('7');


