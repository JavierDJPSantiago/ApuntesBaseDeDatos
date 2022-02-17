CREATE SCHEMA generetion;
USE generation;

-- CREA TABLE
CREATE TABLE cohorte(id INT NOT NULL auto_increment, primary key(id));
ALTER TABLE cohorte ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE cohorte ADD COLUMN edad INT NOT NULL;

-- AGREGAR DATOS
INSERT INTO cohorte (nombre, edad) values
('Pedro', 15),
('Ash Ketchup', 12),
('Patricio', 22);

-- mostrar datos de una tabla
-- * significa que seleccionamos todas columnas
SELECT * FROM cohorte; -- para la tabla seleccionada

-- mostrar datos de una tabla de otra BD, que no se tenga seleccionada con USE
		    -- nombreBD.nombreTabla
SELECT * FROM world.city; -- para mostrar una tabla que no esta seleccionada -- procura usar mas este que el de arriba

-- mostrar datos de una columna, pero solo una
		--  columna FROM nombre Tabla
SELECT NAME nombre FROM cohorte;

-- MOSTRAR DATOS DE COLUMNAS DE UNA TABLA ESPECIFICADA, DE UNA BD NO SELECCIONADA
       -- columna ,otracolumnadeesatabla FROM BD.tabla;
SELECT CountryCode, population FROM world.city;
      
      
      
-- columna como nombreAlias 
SELECT Name AS "Nombre de los países" FROM world.country; -- darle un alias al nombre de la columna, te muestra los datos y le cambia el nombre momentaneamente 


-- UPDATE - actualizar valores, datos agregados dentro de una tabla/columna
-- SET es para especificar que actualizaras
--    tablaNombre SET columna = "datoNuevo"
-- UPDATE cohorte SET nombre = "Juan"; -- si haces esto se cambiaran todos los valores de la columna, necesitas usar where; aqui no paso porque el programa nos bloquea este codigo
-- tablaNombre SET columna = "datoNuevo" where columnaId = numero de id;
UPDATE cohorte SET nombre = "Juan" WHERE id = 3;

-- cambiar varios valores del mismo id
UPDATE cohorte SET 
nombre = "Juan",
edad = 30 
WHERE id = 3;

-- quitar seguro: preferencias: sql editor/ ultima opcion

-- DELETE borrar un registro o toda la columna  
	  -- FROM tabla;
DELETE FROM cohorte; -- no te la borrara por la opcion del programa // Solo borra los datos que tienen las columnas de la tabla pero no la tabla
/*
nunca usen delete sin el where
*/

-- boorrar todos los datos de la columna edad;
DELETE FROM cohorte WHERE edad;

-- borrar un solo dato especificando un numero de id, no siempre tiene que ser id, solo tiene que ser el numero de un campo que no se repita
-- borrara toda la fila
DELETE FROM cohorte WHERE id = 28;