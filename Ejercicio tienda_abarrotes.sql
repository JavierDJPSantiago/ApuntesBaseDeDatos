/*
Crear una BD llamada tienda_abarrotes
productos
clientes
proveedores

c/tablas 5 columnas
*/

CREATE SCHEMA tienda_abarrotes;
USE tienda_abarrotes;
CREATE TABLE productos(id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id)); 
CREATE TABLE clientes(id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id)); 
CREATE TABLE proveedores(id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id)); 

ALTER TABLE  productos ADD COLUMN nombre VARCHAR(255) NOT NULL;
ALTER TABLE  productos ADD COLUMN tipo VARCHAR(255) NOT NULL;
ALTER TABLE  productos ADD COLUMN caducidad DATE NOT NULL;
ALTER TABLE  productos ADD COLUMN precio int NOT NULL;
ALTER TABLE  productos ADD COLUMN cantidad int NOT NULL;

ALTER TABLE clientes ADD COLUMN nombre VARCHAR(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN apellido VARCHAR(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN correo VARCHAR(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN telefono INT NOT NULL;
ALTER TABLE clientes ADD COLUMN direccion VARCHAR(255) NOT NULL;

ALTER TABLE proveedores ADD COLUMN marca VARCHAR(255) NOT NULL;
ALTER TABLE proveedores ADD COLUMN duenio VARCHAR(255) NOT NULL;
ALTER TABLE proveedores ADD COLUMN fecha_pedido DATE NOT NULL;
ALTER TABLE proveedores ADD COLUMN entrega DATE NOT NULL;
ALTER TABLE proveedores ADD COLUMN deposito INT NOT NULL;