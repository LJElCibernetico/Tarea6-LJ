/*Ejercicio 2A*/
if object_id('agenda') is not null
	drop table agenda;

create table /agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

sp_tables @table_owner='dbo';

sp_columns agenda;

drop table agenda;

drop table agenda;

/*Ejercicio 2B*/
if object_id('libros') is not null
	drop table libros;

sp_tables @table_owner='dbo';

create table libros(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

create table libros(
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

sp_tables @table_owner='dbo';

sp_columns libros;

drop table libros;

drop table libros;

/*Ejercicio 3A*/
if object_id('agenda') is not null
	drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

sp_tables @table_owner='dbo';

sp_columns agenda;

insert into agenda (apellido, nombre, domicilio, telefono)
values ('Moreno','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre, domicilio, telefono)
values ('Torres','Juan','Avellaneda 135','4458787');

select * from agenda;

drop table agenda;

drop table agenda;

/*Ejercicio 3B*/
if object_id('libros') is not null
	drop table libros;

create table libros (
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

sp_tables @table_owner='dbo';

sp_columns libros;

insert into libros (titulo,autor,editorial)
values ('El aleph','Borges','Planeta');
insert into libros (titulo,autor,editorial) 
values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial)
values ('Aprenda PHP','Mario Molina','Emece');

select * from libros;

/*Ejercico 4A*/
if object_id('peliculas')is not null
	drop table peliculas;

create table peliculas(
nombre varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

sp_columns peliculas;

insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad)
values ('Elsa y Fred','China Zorrilla',110,2);

select *from peliculas;

/*Ejercicio 4B*/
if object_id('empleados') is not null
	drop table empleados;

create table empleados(
nombre varchar(20),
documento varchar(8),
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);

sp_columns empleados;

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select *from empleados;

/*Ejercicio 5A*/
if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

sp_columns peliculas;

insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2);

select titulo,actor from peliculas;

select titulo,duracion from peliculas;

select titulo,cantidad from peliculas;

/*Ejercicio 5B*/
if object_id('empleados') is not null
  drop table empleados;

create table empleados(
nombre varchar(20),
documento varchar(8), 
sexo varchar(1),
domicilio varchar(30),
sueldobasico float
);

sp_columns empleados;

insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Juan Juarez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Ana Acosta','27888999','f','Colon 134',700);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
values ('Carlos Caseres','31222333','m','Urquiza 479',850);

select *from empleados;

select nombre,documento,domicilio from empleados;

select documento,sexo,sueldobasico from empleados;

/*Ejercicio 6A*/
if object_id('agenda') is not null
	drop table agenda;

create table agenda (
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

sp_columns agenda;

insert into agenda(apellido,nombre,domicilio,telefono) values
('Acosta', 'Ana', 'Colon 123', '4234567');

insert into agenda(apellido,nombre,domicilio,telefono) values
('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

insert into agenda(apellido,nombre,domicilio,telefono) values
('Lopez', 'Hector', 'Salta 545', '4887788'); 
insert into agenda(apellido,nombre,domicilio,telefono) values
('Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values
('Lopez', 'Marisa', 'Urquiza 333', '4545454');

select *from agenda;

select *from agenda
where nombre='Marisa';

select nombre,domicilio from agenda
where apellido='Lopez';

select nombre from agenda
where telefono='4545454';

/*Ejercio 6B*/
if object_id('libros') is not null
	drop table libros;

create table libros (
titulo varchar(20),
autor varchar(30),
editorial varchar(15)
);

sp_columns libros;

insert into libros(titulo,autor,editorial) values
('El aleph','Borges','Emece');
insert into libros(titulo,autor,editorial) values
('Martin Fierro','Jose Hernandez','Emece');
insert into libros(titulo,autor,editorial) values
('Martin Fierro','Jose Hernandez','Planeta');
insert into libros(titulo,autor,editorial) values
('Aprenda PHP','Mario Molina','Siglo XXI');

select *from libros
where autor='Borges';

select titulo from libros
where editorial='Emece';

select editorial from libros
where titulo='Martin Fierro';

/*Ejercicio 7A*/
if object_id('articulos') is not null
	drop table articulos;

create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);

sp_columns articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (5,'teclado','español Biswal',90,50);

select *from articulos
where nombre='impresora';

select *from articulos
where precio>=400;

select codigo,nombre
from articulos
where cantidad<30;

select nombre, descripcion
from articulos
where precio<>100;

/*Ejercicio 7B*/
if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
titulo varchar(20),
actor varchar(20),
duracion integer,
cantidad integer
);

insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible','Tom Cruise',120,3);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Mujer bonita','Julia R.',90,1);
insert into peliculas (titulo, actor, duracion, cantidad)
values ('Elsa y Fred','China Zorrilla',80,2);

select *from peliculas
where duracion<=90;

select *from peliculas
where actor<>'Tom Cruise';

select titulo,actor,cantidad
from peliculas
where cantidad >2;

/*Ejercicio 8A*/
if object_id('agenda') is not null
	drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)
values('Alvarez','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values('Salas','Susana','Gral. Paz 1234','4123456');

delete from agenda
where nombre='Juan';

delete from agenda
where telefono='4545454';

select * from agenda;

delete from agenda;

select * from agenda;

/*Ejercicio 8B*/
if object_id('articulos') is not null
	drop table articulos;

create table articulos(
codigo integer,
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);

sp_columns articulos;

insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
values (5,'teclado','español Biswal',90,50);

delete from articulos
where precio>=500;

select * from articulos;

delete from articulos
where nombre='impresora';

select * from articulos;

delete from articulos
where codigo<>4;

select * from articulos;

/*Ejercicio 9A*/
if object_id('agenda') is not null
	drop table agenda;

create table agenda(
apellido varchar(30),
nombre varchar(20),
domicilio varchar(30),
telefono varchar(11)
);

insert into agenda (apellido,nombre,domicilio,telefono)
values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono)
values ('Suarez','Susana','Gral. Paz 1234','4123456');

select * from agenda;

update agenda set nombre='Juan Jose'
where nombre='Juan';

select * from agenda;

update agenda set telefono='4445566'
where telefono='4545454';

select * from agenda;

update agenda set nombre='Juan Jose'
where nombre='Juan';

select * from agenda;

/*Ejercicio 9B*/
if object_id('libros') is not null
	drop table libros;

create table libros (
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);

insert into libros (titulo, autor, editorial, precio)
values ('El aleph','Borges','Emece',25.00);
insert into libros (titulo, autor, editorial, precio)
values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros (titulo, autor, editorial, precio)
values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros (titulo, autor, editorial, precio)
values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros (titulo, autor, editorial, precio)
values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select * from libros;

update libros set autor='Adrian Paenza'
where autor='Paenza';

select * from libros;

update libros set autor='Adrian Paenza'
where autor='Paenza';

select * from libros;

update libros set precio=27
where autor='Mario Molina';

select * from libros;

update libros set editorial='Emece S.A.'
where editorial='Emece';

select * from libros;

/*Ejercicio 11A*/
if object_id('medicamentos') is not null
	drop table medicamentos;

create table medicamentos(
codigo integer not null,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer not null
);

sp_columns medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(3,'Buscapina','Roche',null,200);

select *from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Bayaspirina','',0,150);

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(0,'','Bayer',15.60,0);

select *from medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
values(null,'Amoxidal jarabe','Bayer',25,120);

select *from medicamentos
where laboratorio is null;

select *from medicamentos
where laboratorio='';

select *from medicamentos
where precio is null;

select *from medicamentos
where precio=0;

select *from medicamentos
where laboratorio<>'';

select *from medicamentos
where laboratorio is not null;

select *from medicamentos
where precio<>0;

select *from medicamentos
where precio is not null;

/*Ejercicio 11B*/
if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
codigo int not null,
titulo varchar(40) not null,
actor varchar(20),
duracion int
);

sp_columns peliculas;

insert into peliculas (codigo,titulo,actor,duracion)
values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion)
values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion)
values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion)
values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion)
values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion)
values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select *from peliculas;

insert into peliculas (codigo,titulo,actor,duracion)
values(null,'Mujer bonita','R. Gere-J. Roberts',190);

select * from peliculas
where actor is null;

update peliculas set duracion=120 where duracion is null;

update peliculas set actor='Desconocido'
where actor='';

select * from peliculas;

delete from peliculas
where titulo='';

select * from peliculas;

/*Ejercicio 12A*/
if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
codigo int not null,
titulo varchar(40) not null,
actor varchar(20),
duracion int
);

sp_columns peliculas;

insert into peliculas (codigo,titulo,actor,duracion)
values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion)
values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion)
values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion)
values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion)
values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion)
values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select *from peliculas;

insert into peliculas (codigo,titulo,actor,duracion)
values(null,'Mujer bonita','R. Gere-J. Roberts',190);

select * from peliculas
where actor is null;

update peliculas set duracion=120 where duracion is null;

update peliculas set actor='Desconocido'
where actor='';

select * from peliculas;

delete from peliculas
where titulo='';

select * from peliculas;

/*Ejercicio 12B*/
if object_id('alumnos') is not null
	drop table alumnos;

create table alumnos(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento),
primary key(legajo)
);

create table alumnos(
legajo varchar(4) not null,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30),
primary key(documento)
);

sp_columns alumnos;

insert into alumnos (legajo,documento,nombre,domicilio)
values('A233','22345345','Perez Mariana','Colon 234');
insert into alumnos (legajo,documento,nombre,domicilio)
values('A567','23545345','Morales Marcos','Avellaneda 348');

insert into alumnos (legajo,documento,nombre,domicilio)
values('A642','23545345','Gonzalez Analia','Caseros 444');

insert into alumnos (legajo,documento,nombre,domicilio)
values('A685',null,'Miranda Carmen','Uspallata 999');

/*Ejercicio 13A*/
if object_id('medicamentos') is not null
	drop table medicamentos;

create table medicamentos(
codigo int identity,
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

sp_columns medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);

select *from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Amoxilina 500','Bayer',15.60,100);

update medicamentos set codigo=5
where nombre='Bayaspirina';

delete from medicamentos
where codigo=3;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxilina 500','Bayer',15.60,100);

select *from medicamentos;

/*Ejercicio 13B*/
if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
codigo int identity,
titulo varchar(40),
actor varchar(20),
duracion int,
primary key(codigo)
);

sp_columns peliculas;

insert into peliculas (titulo,actor,duracion)
values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion)
values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('La vida es bella','zzz',220);

select *from peliculas;

update peliculas set codigo=7
where codigo=4;

delete from peliculas
where titulo='La vida es bella';

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);

select *from peliculas;

/*Ejercicio 14A*/
if object_id('medicamentos') is not null
	drop table medicamentos;

create table medicamentos(
codigo integer identity(10,1),
nombre varchar(20) not null,
laboratorio varchar(20),
precio float,
cantidad integer
);

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);

select *from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(4,'Amoxilina 500','Bayer',15.60,100);

set identity_insert medicamentos on;

insert into medicamentos (nombre, laboratorio,precio,cantidad)
values('Amoxilina 500','Bayer',15.60,100);

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
values(10,'Amoxilina 500','Bayer',15.60,100);

select ident_seed('medicamentos');

select ident_incr('medicamentos');

/*Ejercicio 14B*/
if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
codigo int identity (50,3),
titulo varchar(40),
actor varchar(20),
duracion int
);

insert into peliculas (titulo,actor,duracion)
values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion)
values('Harry Potter y la camara secreta','Daniel R.',190);

select *from peliculas;

set identity_insert peliculas on;

insert into peliculas (codigo,titulo,actor,duracion)
values(20,'Mision imposible 2','Tom Cruise',120);

insert into peliculas (codigo, titulo,actor,duracion)
values(80,'La vida es bella','zzz',220);

select ident_seed('peliculas');

select ident_incr('peliculas');

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);

set identity_insert peliculas off; 

insert into peliculas (titulo,actor,duracion)
values('Elsa y Fred','China Zorrilla',90);
select *from peliculas;

/*Ejercicio 15A*/
if object_id('alumnos') is not null
	drop table alumnos;

create table alumnos(
legajo int identity,
documento varchar(8),
nombre varchar(30),
domicilio varchar(30)
);

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');

delete from alumnos;

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');
select *from alumnos;

truncate table alumnos;

insert into alumnos (documento,nombre,domicilio)
values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio)
values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio)
values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio)
values('25666777','Torres Ramiro','Dinamarca 209');
select *from alumnos;

/*Ejercicio 15B*/
if object_id('articulos') is not null
	drop table articulos;

create table articulos(
codigo integer identity,
nombre varchar(20),
descripcion varchar(30),
precio float
);

insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C85',500);

truncate table articulos;

insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)
values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)
values ('teclado','español Biswal',90);
select *from articulos;

delete from articulos;

insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio)
values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio)
values ('teclado','español Biswal',90);
select *from articulos;

/*Ejercicio 17A*/
if object_id('autos') is not null
	drop table autos;

create table autos(
patente char(6),
marca varchar(20),
modelo char(4),
precio float,
primary key (patente)
);

insert into autos
values('ACD123','Fiat 128','1970',15000);
insert into autos
values('ACG234','Renault 11','1990',40000);
insert into autos
values('BCD333','Peugeot 505','1990',80000);
insert into autos
values('GCD123','Renault Clio','1990',70000);
insert into autos
values('BCC333','Renault Megane','1998',95000);
insert into autos
values('BVF543','Fiat 128','1975',20000);

select *from autos
where modelo='1990';

/*Ejercicio 17B*/
if object_id('clientes') is not null
	drop table clientes;

create table clientes(
documento char(8),
apellido varchar(20),
nombre varchar(20),
domicilio varchar(30),
telefono varchar (11)
);

insert into clientes
values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio)
values('2333344','Perez','Ana','Colon 234');
insert into clientes
values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes
values('2533344','Juarez','Ana','Urquiza 444','4789900');

select *from clientes
where apellido='Perez';

/*Ejercicio 18A*/
if object_id('cuentas') is not null
	drop table cuentas;

create table cuentas(
numero int not null,
documento char(8),
nombre varchar(30),
saldo money,
primary key (numero)
);

insert into cuentas(numero,documento,nombre,saldo)
values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numero,documento,nombre,saldo)
values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numero,documento,nombre,saldo)
values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numero,documento,nombre,saldo)
values('3346','32111222','Susana Molina',1000);

select *from cuentas
where saldo<4000;

select numero,saldo from cuentas
where nombre='Juan Lopez';

select *from cuentas
where saldo<0;

select *from cuentas
where numero>=3000;

/*Ejercicio 18B*/
if object_id('empleados') is not null
	drop table empleados;

create table empleados(
nombre varchar(30),
documento char(8),
sexo char(1),
domicilio varchar(30),
sueldobasico decimal(7,2),--máximo estimado 99999.99
cantidadhijos tinyint--no superará los 255
);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Susana Molina','29000555','f','Salta 876',800.888,3);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
values ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

select *from empleados
where sueldobasico>=900;

select *from empleados
where cantidadhijos>0;

/*Ejercicio 19*/
if object_id('alumnos') is not null
	drop table alumnos;

create table alumnos(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaingreso datetime,
fechanacimiento datetime
);

set dateformat 'dmy';

insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select *from alumnos where fechaingreso<'1-1-91';

select *from alumnos where fechanacimiento is null;

insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

/*Ejercicio 20*/
if object_id('cuentas') is not null
	drop table cuentas;

create table cuentas(
numero int identity,
documento char(8) not null,
nombre varchar(30),
saldo money
);

insert into cuentas
values (1,'25666777','Juan Perez',2500.50);

insert into cuentas
values ('25666777','Juan Perez',2500.50);

insert into cuentas (documento,saldo)
values ('28999777',-5500);

insert into cuentas (numero,documento,nombre,saldo)
values (5,'28999777','Luis Lopez',34000);

insert into cuentas (numero,documento,nombre)
values (3344,'28999777','Luis Lopez',34000);

insert into cuentas (nombre, saldo)
values ('Luis Lopez',34000);

select *from libros;

/*Ejercicio 21A*/
if object_id('cuentas') is not null
	drop table cuentas;

create table cuentas(
numero int identity,
documento char(8) not null,
nombre varchar(30),
saldo money
);

insert into cuentas
values (1,'25666777','Juan Perez',2500.50);

insert into cuentas
values ('25666777','Juan Perez',2500.50);

insert into cuentas (documento,saldo)
values ('28999777',-5500);

insert into cuentas (numero,documento,nombre,saldo)
values (5,'28999777','Luis Lopez',34000);

insert into cuentas (numero,documento,nombre)
values (3344,'28999777','Luis Lopez',34000);

insert into cuentas (nombre, saldo)
values ('Luis Lopez',34000);

select *from libros;

/*Ejercicio 21B*/
if object_id('prestamos') is not null
	drop table prestamos;

create table prestamos(
titulo varchar(40) not null,
documento char(8) not null,
fechaprestamo datetime not null,
fechadevolucion datetime,
devuelto char(1) default 'n'
);

insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
insert into prestamos (titulo,documento,fechaprestamo)
values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
values ('El aleph','22543987','2006-12-16','2006-08-19');
insert into prestamos (titulo,documento,fechaprestamo,devuelto)
values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

select *from prestamos;

insert into prestamos
values('Manual de historia','32555666','2006-10-25',default,default);
select *from prestamos;

insert into prestamos default values;

/*Ejercicio 22*/
if object_id ('articulos') is not null
	drop table articulos;

create table articulos(
codigo int identity,
nombre varchar(20),
descripcion varchar(30),
precio smallmoney,
cantidad tinyint default 0,
primary key (codigo)
);

insert into articulos (nombre, descripcion, precio,cantidad)
values ('impresora','Epson Stylus C45',400.80,20);
insert into articulos (nombre, descripcion, precio)
values ('impresora','Epson Stylus C85',500);
insert into articulos (nombre, descripcion, precio)
values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio,cantidad)
values ('teclado','ingles Biswal',100,50);

update articulos set precio=precio+(precio*0.15);

select *from articulos;

select nombre+','+descripcion
from articulos;

update articulos set cantidad=cantidad-5
where nombre='teclado';

select *from articulos;

/*Ejercicio 23*/
if object_id ('libros') is not null
	drop table libros;

create table libros(
codigo int identity,
titulo varchar(40) not null,
autor varchar(20) default 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio)
values('El aleph','Borges','Emece',25);
insert into libros
values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad)
values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select titulo, autor,editorial,precio,cantidad,
precio*cantidad as 'monto total'
from libros;

select titulo,autor,precio,
precio*0.1 as descuento,
precio-(precio*0.1) as 'precio final'
from libros
where editorial='Emece';

select titulo+'-'+autor as "Título y autor"
from libros;