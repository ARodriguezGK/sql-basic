create database Colegio
drop table Estudiantes
create table Estudiantes(
datos int primary key,
nombre varchar(20),
apellido varchar(20),
grado varchar(20),
especialidad varchar(20),
fechadenacimento varchar(20),
email varchar(20),)

--mostrar tabla--
select*from estudiantes

insert into Estudiantes values('1','saul','cruz','bachiller','software','2008/5/9','20250147@ricaldone')
insert into Estudiantes values('2','isaias','hernandez','bachiller','automotriz','2009/5/20','20250145@ricaldone')
insert into Estudiantes values('3','jeremy','gonzales','bachiller','electromecanica','2008/9/12','20250057@ricaldone')

--los campos a ingresar se ponen, los que no se desan ingresar no--
--los campos a ingresar los del parentesis insert into nombretabla son los mismos a los propios ingresados
--registro sin especialidad ni fecha---
insert into Estudiantes(datos,nombre,apellido,grado,email) values('4','carlos','rodriguez','noveno','20250156')

--registro sin apellido--
insert into Estudiantes(datos,nombre,grado,especialidad,fechadenacimento,email) values('5','robert','bachiller','electronica','2008/05/06','202506@rical')

--registro sin nombre ni correo--
insert into Estudiantes(datos,apellido,grado,especialidad,fechadenacimento) values('6','guillem','bachiller','energias','2006/02/07')

--actualizar los valores de la tabla--
--actualizar tabla y cambia los valores especialidad al nuevo valor--
--año mes y dia para usar date--
update Estudiantes set especialidad='automotriz',fechadenacimento='2002/02/03' 
where datos=3

delete Estudiantes where datos=4


--llenamos los null--
update Estudiantes set especialidad='automotriz',fechadenacimento='2009/06/03'
where datos=4

update Estudiantes set apellido='martinez'
where datos=5

update Estudiantes set nombre='fernando',email='2026007rical'
where datos=6



--eliminando al segundo  y al ultimo--
delete Estudiantes where datos=2

delete Estudiantes where datos=6
