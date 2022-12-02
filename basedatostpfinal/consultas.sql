SELECT nombrecliente, apellidocliente FROM cliente WHERE dnicliente BETWEEN 2000000 AND 60000000;

SELECT idpedido FROM pago WHERE idpago BETWEEN 5 AND 7 ORDER BY idpedido DESC;

SELECT precio FROM productos WHERE precio > 50 ORDER BY precio DESC;

SELECT DATEDIFF ('2022-01-01', '2015-12-21');  

SELECT DATE_ADD('2020-01-15',INTERVAL 1 DAY) AS DATE_ADD; 

SELECT COUNT(nombrecliente) FROM cliente WHERE dnicliente>5000000;

SELECT nombre, precio FROM productos WHERE stock < (SELECT AVG(precio) FROM productos) GROUP BY precio; 

SELECT NOMBRE, stock FROM PRODUCTOS WHERE precio > (SELECT AVG(precio) FROM productos);