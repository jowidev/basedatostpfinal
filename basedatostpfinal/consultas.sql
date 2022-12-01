SELECT nombrecliente, apellidocliente FROM cliente WHERE dnicliente BETWEEN 2000000 AND 60000000;

SELECT idpedido FROM pago WHERE idpago BETWEEN 5 AND 7 ORDER BY idpedido DESC;

SELECT precio FROM productos WHERE precio > 50 ORDER BY precio DESC;

SELECT DATEDIFF ('2022-01-01', '2015-12-21'); 