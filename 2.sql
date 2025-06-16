create database Almacen

create table Clientes(
id int primary key,
nombre varchar(100),
apellido varchar (100) not null,
direccion varchar (100),
email varchar (50));


create table Pedidos(
id int primary key,
fecha date,
cliente_id int foreign key(cliente_id)references Clientes(id));

insert into Clientes values ('1','Eduardo','Guzman','Cabañas','edu@gmail.com')
insert into Clientes values ('2','Eliseo','Rubio','Soyapango','eliseo@gmail.com')
insert into Clientes values ('3','Alexander','Aviles','Peru','tilin@gmail.com')

select*from Clientes





insert into Pedidos values ('1','2025/06/29')
select*from Pedidos