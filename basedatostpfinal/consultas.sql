SELECT nombrecliente, apellidocliente FROM cliente WHERE dnicliente BETWEEN 2000000 AND 60000000;

SELECT idpedido FROM pago WHERE idpago BETWEEN 5 AND 7 ORDER BY idpedido DESC;

SELECT precio FROM productos WHERE precio > 50 ORDER BY precio DESC;

SELECT DATEDIFF ('2022-01-01', '2015-12-21');  

SELECT DATE_ADD('2020-01-15',INTERVAL 1 DAY) AS DATE_ADD; 

SELECT COUNT(nombrecliente) FROM cliente WHERE dnicliente>5000000;

SELECT * FROM pago INNER JOIN pedidos ON pago.idpedido = pedidos.idpedido;

SELECT COUNT(idcliente), emailcliente From cliente GROUP BY emailcliente;

SELECT idproducto, stock FROM productos WHERE precio < (SELECT AVG(precio) FROM productos);

SELECT nombre, precio FROM productos WHERE stock < (SELECT AVG(precio) FROM productos) GROUP BY precio; 

SELECT nombre, stock FROM productos WHERE precio > (SELECT AVG(precio) FROM productos);



CREATE VIEW Listado_productos AS SELECT idproducto, nombre, precio, stock FROM productos ORDER BY idproducto;

-- Esta vista permite visualizar el ID, nombre, precio y el stock del o los productos disponibles en la tienda y así saber qué productos se pueden manipular.


CREATE USER  'dueño'@'localhost' IDENTIFIED BY 'jefechad69';

GRANT ALL PRIVILEGES on jefechad69.* to 'dueño'@'localhost';

SHOW GRANTS  for 'dueño'@'localhost';

-- Al crear el usuario "dueño" y concederle todos los privilegios, se permite un control total sobre las tablas y datos de la base de datos.


USE indumentaria;

DELIMITER //
CREATE PROCEDURE mostrar_clientes 
(
 IN _apellidocliente VARCHAR (255),
 IN _direccioncliente VARCHAR (255),
 IN _dnicliente INT,
 IN _emailcliente VARCHAR (255),
 IN _nombrecliente VARCHAR (255) 
)
BEGIN
    INSERT INTO cliente (nombrecliente, apellidocliente,direccioncliente,dnicliente,emailcliente,) VALUES (_nombrecliente, _apellidocliente,_direccioncliente,_dnicliente,_emailcliente);
END;
//

CALL mostrar_clientes (‘nombrecliente’, ‘apellidocliente’, ‘direccioncliente’, ‘dnicliente’, ‘emailcliente’)

-- lo que hace este procedure es mostrar el nombre, apellido, direccion, dni, email de cada cliente. Es útil cuando se quiere llevar cuenta de cada cliente que hay 


DROP FUNCTION IF EXISTS calcular_preciototal;

DELIMITER $$

CREATE FUNCTION calcular_preciototal (id_pedido INT)
RETURNS FLOAT READS SQL DATA
BEGIN
    DECLARE preciototal FLOAT;
    SELECT SUM(precio * stock) INTO preciototal FROM pedidos
    RETURN preciototal;
END$$

