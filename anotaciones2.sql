CREATE TABLE user (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    edad int NOT NULL,
    email varchar(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user (name,edad,email) VALUES('Oscar',25,'oscar@gmail.com');
INSERT INTO user (name,edad,email) VALUES('Layla',15,'layla@gmail.com');
INSERT INTO user (name,edad,email) VALUES('Nicolas',36,'nicolas@gmail.com');
INSERT INTO user (name,edad,email) VALUES('Chanchito',7,'chanchito@gmail.com');

SELECT * FROM user;
SELECT * FROM user limit 1; /*Limita la cantidad de resultados devueltos.*/
SELECT * FROM user WHERE edad >15; /*Muestra los registros con edad mayor a 15.*/
SELECT * FROM user WHERE edad >=15;/*Muestra los registros con edad mayor o iguales a 15.*/
SELECT * FROM user WHERE edad > 20 AND email='nicolas@gmail.com';
SELECT * FROM user WHERE edad > 20 OR email='layla@gmail.com';
SELECT * FROM user WHERE email != 'layla@gmail.com';
SELECT * FROM user WHERE edad BETWEEN 15 AND 25; /*Muestra los que tengas 15=<edad=<25 osea mayor o igual a 15 y menor o igual a 25  (BETWEEN)*/
SELECT * FROM user WHERE email LIKE '%gmail%'; /*Con LIKE, busca dentro del contenido sin importarme el inicio o el final del contenido, esto
indicado con los simbolos % al inicio y al final.*/
SELECT * FROM user WHERE email LIKE '%gmail'; /*El contenido tiene que terminar si o si con gmail (Sacando el % del final.)*/
SELECT * FROM user WHERE email LIKE 'oscar%'; /*El contenido debe empezar si o si con oscar.*/

SELECT * FROM user ORDER BY edad asc; /*Los muestra ordenados en forma ascendente segun la columna edad*/
SELECT * FROM user ORDER BY edad desc; /*Los muestra ordenados en forma descendente segun la columna edad*/

SELECT max(edad) AS elMasViejo from user; /*Busca el valor maximo en la columna edad y le pone el sobre nombre que yo indique.*/
SELECT min(edad) AS elPendejo from user;/*Buscar el valor minimo de la columna edad.*/

SELECT id,name FROM user;/*Muestra todos los usuario pero solo con las columnas id y name.*/
SELECT id AS 'DNI',name AS 'nombrecitos' FROM user; /*Lo mismo solo que le pongo un sobre nombre a la columna name y la columna id*/




