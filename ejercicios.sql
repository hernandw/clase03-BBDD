--INTEGRIDAD DE DATOS

--EJERCICIO 1
--agregamos la siguiente tabla users in serial, name varchar(50) not null, age integer not null y email varchar(50) unique not null

create table users (id serial primary key, name varchar(50) not null, age integer not null, email varchar(50) unique not null);

--ingresamos 10 registros

insert into users (name, age, email) values ('John', 25, 'Lk5g0@example.com');
insert into users (name, age, email) values ('Jane', 30, 'qG9KZ@example.com');
insert into users (name, age, email) values ('Bob', 35, 'XsDc7@example.com');
insert into users (name, age, email) values ('Alice', 40, '5kC9m@example.com');
insert into users (name, age, email) values ('Tom', 45, '3U3Oo@example.com');
insert into users (name, age, email) values ('Sarah', 50, 'X5VJf@example.com');
insert into users (name, age, email) values ('Mike', 55, 'X5VJf5@example.com');
insert into users (name, age, email) values ('Emily', 60, 'X7VJf@example.com');
insert into users (name, age, email) values ('David', 65, 'X8VJf@example.com');
insert into users (name, age, email) values ('Olivia', 70, 'X9VJf@example.com');


--verificamos que no se repitan los emails

--CREAMOS LA TABLA PAGOS
CREATE TABLE pagos (
    id SERIAL PRIMARY KEY,
    monto DECIMAL(10,2) NOT NULL,
    usuario_id INT NOT NULL REFERENCES users (id)
)

--INSERTAMOS LOS PAGOS
insert into pagos (monto, usuario_id) values (100.00, 1);
insert into pagos (monto, usuario_id) values (200.00, 2);
insert into pagos (monto, usuario_id) values (300.00, 3);
insert into pagos (monto, usuario_id) values (400.00, 4);
insert into pagos (monto, usuario_id) values (500.00, 5);
insert into pagos (monto, usuario_id) values (600.00, 6);

--EJERCICIO 2


--insertamos registros
INSERT INTO libros (nombre, titulo, editorial) VALUES
('Gabriel García Márquez', 'Cien años de soledad', 'Sudamericana'),
('Isabel Allende', 'La casa de los espíritus', 'Plaza & Janés'),
('Mario Vargas Llosa', 'La fiesta del chivo', 'Alfaguara'),
('Jorge Luis Borges', 'Ficciones', 'Emecé'),
('Julio Cortázar', 'Rayuela', 'Sudamericana'),
('Carlos Ruiz Zafón', 'La sombra del viento', 'Planeta'),
('Miguel de Cervantes', 'Don Quijote de la Mancha', 'Espasa'),
('Paulo Coelho', 'El alquimista', 'Planeta'),
('J.K. Rowling', 'Harry Potter y la piedra filosofal', 'Salamandra'),
('George R.R. Martin', 'Juego de tronos', 'Plaza & Janés'),
('gabriel garcía márquez', 'El amor en los tiempos del cólera', 'Sudamericana'),
('isabel allende', 'Eva Luna', 'Plaza & Janés'),
('mario vargas llosa', 'La ciudad y los perros', 'Alfaguara'),
('jorge luis borges', 'El Aleph', 'Emecé'),
('julio cortázar', 'Bestiario', 'Sudamericana'),
('Carlos Ruiz Zafon', 'El juego del ángel', 'Planeta'),
('Miguel De Cervantes', 'Novelas ejemplares', 'Espasa'),
('Paulo coelho', 'Veronika decide morir', 'Planeta'),
('J.k. rowling', 'Harry Potter y el cáliz de fuego', 'Salamandra'),
('George r.r. martin', 'Choque de reyes', 'Plaza & Janés');

create table libros (id serial, nombre varchar, titulo varchar, editorial varchar)


select * from libros;

-- buscar los autores llamados Gabriel
select * from libros where nombre = 'Gabriel Garcia Marquez';
select * from libros where nombre ilike 'Gabriel%'


create table usuarios2 (id serial, nombre varchar not null, apellidos varchar);

alter table usuarios2 rename to personas

select * from personas

INSERT INTO personas (nombre, apellidos) VALUES
('Ana', 'García'),
('Pedro', 'López'),
('María', 'Pérez'),
('Juan', 'Sánchez'),
('Laura', 'González'),
('Carlos', 'Martínez'),
('Sofía', 'Rodríguez'),
('Luis', 'Fernández'),
('Elena', 'Gómez'),
('David', 'Díaz');

insert into personas (apellidos) values('Gomez')

drop table personas

ALTER TABLE personas ADD rut INT;

select * from personas

-- Agregamos la columna rut a la tabla personas
ALTER TABLE personas ADD rut INT;
alter table personas r apellidos 

-- Asignamos valores a la columna rut para cada registro
UPDATE personas SET rut = 12345678 WHERE nombre = 'Ana' AND apellido = 'García';
UPDATE personas SET rut = 87654321 WHERE nombre = 'Pedro' AND apellido = 'López';
UPDATE personas SET rut = 23456789 WHERE nombre = 'María' AND apellido = 'Pérez';
UPDATE personas SET rut = 98765432 WHERE nombre = 'Juan' AND apellido = 'Sánchez';
UPDATE personas SET rut = 34567890 WHERE nombre = 'Laura' AND apellido = 'González';
UPDATE personas SET rut = 76543210 WHERE nombre = 'Carlos' AND apellido = 'Martínez';
UPDATE personas SET rut = 45678901 WHERE nombre = 'Sofía' AND apellido = 'Rodríguez';
UPDATE personas SET rut = 65432109 WHERE nombre = 'Luis' AND apellido = 'Fernández';
UPDATE personas SET rut = 56789012 WHERE nombre = 'Elena' AND apellido = 'Gómez';
UPDATE personas SET rut = 54321098 WHERE nombre = 'David' AND apellido = 'Díaz';

alter table personas rename column apellidos to apellido


create table users (id serial primary key, name varchar(50) not null, age integer not null, email varchar(50) unique not null);

insert into users (name, age, email) values ('John', 25, 'Lk5g0@example.com');
insert into users (name, age, email) values ('Jane', 30, 'qG9KZ@example.com');
insert into users (name, age, email) values ('Bob', 35, 'XsDc7@example.com');
insert into users (name, age, email) values ('Alice', 40, '5kC9m@example.com');
insert into users (name, age, email) values ('Tom', 45, '3U3Oo@example.com');
insert into users (name, age, email) values ('Sarah', 50, 'X5VJf@example.com');
insert into users (name, age, email) values ('Mike', 55, 'X5VJf5@example.com');
insert into users (name, age, email) values ('Emily', 60, 'X7VJf@example.com');
insert into users (name, age, email) values ('David', 65, 'X8VJf@example.com');
insert into users (name, age, email) values ('Olivia', 70, 'X9VJf@example.com');

select * from users

CREATE TABLE pagos (
    id SERIAL PRIMARY KEY,
    monto DECIMAL(10,2) NOT NULL,
    usuario_id INT NOT NULL REFERENCES users (id)
)

--

insert into pagos (monto, usuario_id) values (100.00, 1);
insert into pagos (monto, usuario_id) values (200.00, 2);
insert into pagos (monto, usuario_id) values (300.00, 3);
insert into pagos (monto, usuario_id) values (400.00, 4);
insert into pagos (monto, usuario_id) values (500.00, 5);
insert into pagos (monto, usuario_id) values (600.00, 6);

delete from users where id = 1


CREATE TABLE posts (
"id" Integer,
"title" Varchar(255),
"content" text,
PRIMARY KEY ("id")
);


CREATE TABLE comments (
"id" Integer,
"content" Varchar(255),
"post_id" Integer,
PRIMARY KEY ("id"),
FOREIGN KEY ("post_id")
REFERENCES posts ("id")
ON DELETE CASCADE /* Con esto los datos se borrarán en cascada
automáticamente */
);

select * from posts
select * from comments;

INSERT INTO posts VALUES (1, 'Post1', 'Lorem Ipsum');

INSERT INTO comments VALUES (1, 'Comentario 1', 1),
(2, 'Comentario 2' ,1),
(3, 'Comentario 3', 1);

delete from posts where id = 1


CREATE TABLE courses(
  course_id serial PRIMARY KEY, 
  course_name VARCHAR(255) NOT NULL, 
  price DECIMAL(10,2) NOT NULL,
  description VARCHAR(500), 
  published_date date
);

--insertamos datos
INSERT INTO courses( course_name, price, description, published_date) 
VALUES 
('PostgreSQL for Developers', 299.99, 'A complete PostgreSQL for Developers', '2020-07-13'), 
('PostgreSQL Admininstration', 349.99, 'A PostgreSQL Guide for DBA', NULL), 
('PostgreSQL High Performance', 549.99, NULL, NULL), 
('PostgreSQL Bootcamp', 777.99, 'Learn PostgreSQL via Bootcamp', '2013-07-11'), 
('Mastering PostgreSQL', 999.98, 'Mastering PostgreSQL in 21 Days', '2012-06-30');

SELECT * FROM courses;

UPDATE courses
SET published_date = '2020-07-01'
WHERE course_id = 2
RETURNING *;

--incrementar el precio en 5%
UPDATE courses
SET price = price * 1.05 returning *;

--Insertar una tabla llamada usuarios con id serial y limite de 30
 create table usuarios(
	 id serial,
  nombre varchar(30),
  clave varchar(10)
 );
 
 --insertar 10 registros
insert into usuarios (nombre,clave)
values
('Marcelo','River'),
('Susana','chapita'),
('CarlosFuentes','Boca'),
('Juan', 'Inter'),
('Pedro', 'Barcelona');
