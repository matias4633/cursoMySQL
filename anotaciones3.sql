CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMEnt,
    name VARCHAR(50) NOT NULL,
    created_by INT NOT NULL,
    marca VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (created_by) REFERENCES user(id) 
    /*Aca defino una llave foranea, FOREIGN KEY (la que va ser la llave foranea) REFERENCES nombreDeLaTabla(LLave primaria de la nombreDeLaTabla ) */
);

RENAME TABLE products to product; /*Renombro la tabla ya creada*/

INSERT INTO product (name, created_by , marca)
VALUES
	('ipad',1,'apple'),
    ('iphone',1,'apple'),
    ('watch',2,'apple'),
    ('macbook',1,'apple'),
    ('imac',3,'apple'),
    ('ipad mini',2,'apple'); /*inserto varios registros con un solo INSERT*/
    
SELECT * FROM product;

SELECT u.id , u.email , p.name FROM user u LEFT JOIN product p ON u.id = p.created_by;
/*Mostrara todos los registros del de la izquierda (left) osea user y ademas mostrara el nombre del producto que se relacione con la llave 
primaria y foranea. (A-B)+A^B*/

SELECT user.id , user.email , product.name FROM user LEFT JOIN product ON user.id = product.created_by;
/*LO MISMO*/

SELECT u.id , u.email , p.name FROM user u RIGHT JOIN product p ON u.id = p.created_by;
/*Usara como tabla principal la de la derecha (product). (B-A)+A^B*/

SELECT u.id , u.email , p.name FROM user u INNER JOIN product p ON u.id = p.created_by;
/*Muestra la interseccion entre las dos tablas. A^B*/

SELECT u.id , u.email , p.id , p.name FROM user u CROSS JOIN product p;
/*Entrega el producto carteciano entre las dos tablas, osea, el primero con todos, el segundo con todos, etc.*/

SELECT count(id), marca from product GROUP BY marca;
/*Muestra las columnas count(id) y marca de la tabla product agrupandolos por la caracteristica marca, la funcion count solo cuenta, el group by los agrupa.*/
SELECT count(p.id),u.name FROM product p LEFT JOIN user u ON u.id=p.created_by GROUP BY u.name;
/*Relaciono las dos tablas con un LEFT JOIN mediante las llaves, y la agrupo por el nombre de usuario.*/

SELECT count(p.id),u.name FROM product p LEFT JOIN user u ON u.id=p.created_by GROUP BY u.name HAVING count(p.id)>2;
/*Igual que el anterior solo que le agrego una condicion con HAVING para la muestra de resultados con count(p.id)>2*/

INSERT INTO product (name, created_by , marca)
VALUES
	('S3',1,'samsung'),
    ('S8+',1,'samsung'),
    ('J7',2,'samsung'),
    ('K50',1,'lg'),
    ('tv50',3,'hitachi'),
    ('reloj',2,'dell');
    
    DROP TABLE product;
    DROP TABLE user;
    DROP TABLE animales; /*para dropear o eliminar las tablas drop traducido soltar.*/
    
    CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)