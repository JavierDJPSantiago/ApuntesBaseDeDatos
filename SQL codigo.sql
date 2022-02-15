-- para crear una base de datos
CREATE SCHEMA tienda;
-- Podemos usar CREATE DATABASE nombre // pero esto tendra en su interior varios schemas
-- base de datos es una coleccion de schemas, schemas es una coleccion de tablas   /*comentario multilinea*/  -- comentario de una sola línea
-- disquet guarda // carpeta abre
-- aunque la base en Schemas, muestre contenido en realidad no existe, eso es por parte del programa


USE tienda;

-- borrar una base de datos 
DROP SCHEMA nombre_de_base_de_datos;

-- crear una tabla; primero selecciona el USE tienda con el rayito
-- CREATE TABLE Productos; //error porque debe haber una columna = ()
	  -- nombreTabla(nombreColumn valor Not Null incrementaEnUno, llavePrimaria(id); 
CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id)); 

-- Agregar columna a tabla existente
-- alterartabla nombre añadoColumna nombre tipoDato   atributo
ALTER TABLE  productos ADD COLUMN nombre VARCHAR(255) NOT NULL;

												   -- Despues de la columna id colocala                                                    
ALTER TABLE  productos ADD COLUMN precio INT NOT NULL AFTER id;


-- cambiar nombre de una tabla
--          productos renombrar inventario         
ALTER TABLE productos RENAME inventario;


-- Observar las tablas existentes en la base de datos
-- selecciona primero la base de datos a manipular: USE nombre_De_base
SHOW TABLES;

-- Eliminar una tabla //precaución: no se puede recuperar
DROP TABLE inventario;

-- creando de nuevo porque se borro
CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id)); 


ALTER TABLE  productos ADD COLUMN nombre VARCHAR(255) NOT NULL;


-- cambiar nombre y tipo de valor de columna
                -- cambiar columna original nuevo valornuevo atributoNuevo
ALTER TABLE productos CHANGE COLUMN nombre precio INT NOT NULL;

-- Borrar columna
ALTER TABLE productos DROP COLUMN precio;
