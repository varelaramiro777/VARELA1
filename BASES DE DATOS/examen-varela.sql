DROP TABLE libreria; 
CREATE DATABASE libreria; --1
use libreria;
CREATE TABLE libros; 
DROP TABLE libros; 
CREATE TABLE libros (id_libro INT,titulo VARCHAR(50),autor VARCHAR(50),editorial VARCHAR(50),precio INT,stock INT,fecha_de_lanzamiento DATE);
CREATE TABLE ventas (fecha_venta DATE, id_libro INT, unidades INT);
INSERT INTO libros (id_libro,titulo,autor,stock,precio,fecha_de_lanzamiento,editorial) VALUES (1,"Matemática","Pablo Effeberger",10,1500,"2020-02-02","Kapelusz"); --2
INSERT INTO libros (id_libro,titulo,autor,stock,precio,fecha_de_lanzamiento,editorial) VALUES (2,"Mis cinco sentidos","Carolina Micha",7,1400,"2019-05-02","Sudamericana"); --2
INSERT INTO libros (id_libro,titulo,autor,stock,precio,fecha_de_lanzamiento,editorial) VALUES (3,"El mono relojero","Constantino Vigil",12,800,"2021-05-5","Atlántida"); --2
INSERT INTO libros (id_libro,titulo,autor,stock,precio,fecha_de_lanzamiento,editorial) VALUES (4,"Redes Informáticas","Miguel Dederkremer",5,1000,"2019-01-11","Raduses"); --2
INSERT INTO libros (id_libro,titulo,autor,stock,precio,fecha_de_lanzamiento,editorial) VALUES (5, "Freddy Mercury,biografía","Lesley Ann Jones",5,2200,"2018-05-06","Alianza"); --2
INSERT INTO ventas (id_libro,unidades,fecha_venta) VALUES (4,5,"2021-03-05"); --2
INSERT INTO ventas (id_libro,unidades,fecha_venta) VALUES (5,3,"2020-06-12"); --2
INSERT INTO ventas (id_libro,unidades,fecha_venta) VALUES (3,10,"2021-03-05"); --2
INSERT INTO ventas (id_libro,unidades,fecha_venta) VALUES (2,4,"2019-24-11"); --2
INSERT INTO ventas (id_libro,unidades,fecha_venta) VALUES (1,8,"2018-O3-05"); --2
SELECT * FROM libros WHERE stock > 8; --3
SELECT * FROM libros WHERE stock <= 5; --4
SELECT * FROM libros WHERE precio BETWEEN 1000 and 2000; --5
SELECT * FROM libros WHERE editorial LIKE '%a%'; --6
SELECT * FROM libros WHERE editorial LIKE 's%'; --7
SELECT * FROM libros ORDER BY fecha_de_lanzamiento; --8
SELECT * FROM libros ORDER BY fecha_de_lanzamiento DESC; --9
SELECT SUM(stock) FROM libros; --10
SELECT MAX(stock) FROM libros; --11
SELECT MIN(stock) FROM libros; --12
SELECT AVG(precio) libros; --13
UPDATE libros SET stock = 0 WHERE id_libro = 4; --14
UPDATE libros SET stock = 2 WHERE id_libro = 5; --14
UPDATE libros SET stock = 2 WHERE id_libro = 3; --14
UPDATE libros SET stock = 3 WHERE id_libro = 2; --14
UPDATE libros SET stock = 4 WHERE id_libro = 1; --14
SELECT * FROM libros WHERE(SELECT id_libro FROM ventas WHERE fecha_venta = "2021-03-05"); --15
SELECT * FROM ventas WHERE fecha_de_lanzamiento BETWEEN "2018-03-05" AND "2019-31-12" ORDER BY DESC; --16
SELECT * FROM libros WHERE stock BETWEEN 4 AND 14 LIMIT 3; --17
INSERT INTO libros (titulo, autor, editorial, precio, stock, fecha_de_lanzamiento) VALUES ("Ramiro", "Varela", "MarDelPlata", NULL, 13, "2021-03-05"); --18
UPDATE libros SET precio = 1200 WHERE precio = NULL; --19
SELECT SUM(stock) FROM libros WHERE precio >(SELECT AVG(precio) FROM libros); --20
ALTER TABLE libros ADD ISBN INT; --21
SELECT editorial, titulo, precio FROM libros WHERE id_libro = 3; --22
SELECT stock FROM libros WHERE id_libro = 3; --23
