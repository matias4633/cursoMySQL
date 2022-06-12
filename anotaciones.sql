create database holamundo; /* Crea la base de datos*/
show databases; /*muestra las base de datos existentes*/
use holamundo; /*Indica que voy a usar la tabla holamundo*/
CREATE TABLE animales(
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY(id)
); /*crea una tabla llamada animales con columnas de esos tipos, indicando que la llave primaria es id*/

INSERT INTO animales (tipo,estado) VALUES('chanchito','feliz');
INSERT INTO animales (tipo,estado) VALUES('dragon','feliz');
INSERT INTO animales (tipo,estado) VALUES('felipe','triste');

ALTER TABLE animales MODIFY COLUMN id int AUTO_INCREMENT;
/*Modifica la tabla animales en la comumna llamada id agregando el auto incremento de tipo entero.*/

SHOW CREATE TABLE animales;
/*Muestra el comando completo que se uso para crear la tabla animales, es necesario haber creado la tabla con anterio
ridad. */
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

SELECT * FROM animales; /*Seleciona /muestra todos los registros de la tabla animales.*/
SELECT * FROM animales WHERE id=1; /*Muestra todas las columnas del id=1 de la tabla animales*/
SELECT * FROM animales WHERE estado='feliz';/*Muestra todas las columnas de los que tengan estado=feliz de la tabla animales*/
SELECT * FROM animales WHere estado='feliz' AND tipo='chanchito';
/*Muestra todas las columnas de los que tengan estado=feliz Y tipo=chanchito de la tabla animales*/
SELECT * FROM animales WHere estado='feliz' OR tipo='chanchito';
/*Muestra todas las columnas de los que tengan estado=feliz O tipo=chanchito de la tabla animales*/
UPDATE animales SET estado='feliz' WHERE id=3;
/*Actualiza de la tabla animalos en la columna estado con el valor feliz donde el id =3 */
DELETE FROM animales WHERE estado='feliz';
/*Intenta eliminar de la tabla animales los registros que tengan el estado=feliz, Pero no podra por la proteccion activada, fuerza a 
que le pongan si o si la llave primaria.*/
/*Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.*/
DELETE FROM animales WHERE estado='feliz' AND id=3;
UPDATE animales SET estado='triste' WHERE tipo='dragon';/*Error Code: 1175*/
UPDATE animales SET estado='triste' WHERE tipo='dragon' AND id=2;