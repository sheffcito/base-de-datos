CREATE database primeradb;
create table empleados(
id int,
nombre varchar(255),
edad int
);
SELECT * from empleados limit 10;

INSERT INTO empleados (id, nombre, edad)
VALUES (2, 'pédro', 20); 

ALTER TABLE empleados
ADD fk_comida_id int; 

update empleados 
set fk_comida_id = 3
where nombre = 'juan'

update empleados 
set fk_comida_id = 1
where id = 2 




create table comida(
id int,
nombre varchar(255),
calorias int
);
SELECT * from comida;

INSERT INTO comida (id, nombre, calorias)
VALUES (1, 'lasaña', 30);

INSERT INTO comida (id, nombre, calorias)
VALUES (2, 'papa', 28);

update comida 
set nombre = 'carne'
where nombre = 'carbe'




SELECT * from comida;

DELETE FROM comida 
WHERE nombre = 'carne'

SELECT empleados.id, empleados.nombre, edad, comida.nombre
FROM empleados
INNER JOIN comida ON comida.id = empleados.fk_comida_id





