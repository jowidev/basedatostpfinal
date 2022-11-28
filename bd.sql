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
idpedido INT
FOREIGN KEY (idpedido) REFERENCES pedido (idpedido)
);  

CREATE TABLE factura (
    idfactura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idpago INT,
    FOREIGN KEY (idpago) REFERENCES pago (idpago)
);






INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “juan”, “gonzales”, “89027947”, "calle 1", “Juangonzalesmail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “alfredo”, “gunsgberg ”, “87227945”, “calle 2”, “Alfredogunsbergmail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “julian”, “bol”, “56324947”, “calle 3”, “Julianbolmail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “zoe”, “mancusso”, “52324849”, "calle 4", “”zoemancumail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “manuel”, “varela”, “69213475”, "calle 2", “manuvarelamail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “manuel”, “gonzales”, “83497946”, "calle 1", “Juangonzamial”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “Marcos”, “Alonso”, “32247757”, “calle 1”, “marcosalonsomail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “Miguel”, “Tyson”, “77024647”, “calle 1”, “migueltysonmail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “Rodrygo”, “gilandin”, “99628557”, “calle 3”, “rodrygogilandinmail”);
INSERT INTO cliente (nombrecliente, apellidocliente, dnicliente, direccioncliente, emailcliente) VALUES ( “martin”, “astillo”, “65047886”, “calle 3”, “martinastillomail”);



INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("Campera", "270", "80", "Campera hecha de poliéster");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("Gorro", "54", "47", "Gorro de tela francesa");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("Pantalón vaquero", "50", "64", "Pantalón de cuero australiano");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("Zapatillas", "220", "23", "Zapatillas de de tela indonesia con una capa de aire concentrado");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("Medias", "12", "79", "Medias de tela con algodón suave");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("pantalon jogging", "22", "45", "pantalón deportivo con material hipoalergenico");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("Jean roto", "83", "42", "Jean de cuero sintético");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("jersey basketball", "38", "75", "casaca de los pistons de Ben Wallace");
INSERT INTO producto (nombre, precio, stock, descripcion) VALUES ("remera sublimada", "25", "34", "remera blanca hecha de algodón");
