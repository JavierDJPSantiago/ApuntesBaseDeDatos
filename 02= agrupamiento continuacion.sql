-- cambia nombre de este archivo a sub consultas
-- Sub consultas
-- consultamos columnas con otras columnas

USE sakila;
-- Selecciona todas las peliculas que tiene la categoria de drama
SELECT * FROM film_category WHERE category_id =7;

-- obtner los datos de las peliculas de una categoria
-- similar al anterior pero el IN nos permite hacer una lista de esos id
SELECT * FROM film_category WHERE category_id IN (7,2,5);


-- IN tambien sirve para hacer hacer sub consultas: a partir de los datos de una tabla, relacionarlos con otra y mostrar la informacion de ambas
-- despues del SELECT solo puedes pedir una tabla, no puedes usar *, ni pedir otra tabla
-- de la tabla film, si film_id, en, seleccioname los film_id de film_category(hablamos de otra tabla, quiero sus datos) si category_id = 7;
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 7);

-- film actor es solo tabla pibote: para no tener relación muchos a muchos
-- DE film quiero toda la informacion de sus columnas,donde film_id, pero el film_id que esta en film_actor, pero los film_actor relacionados con el actor id que sea de 76, este id se relaciona con film_actor y regreso los que estan relacionados se regresan a film y esos son los que nos muestra
-- estamos relacionando la tabla film y la tabla film_actor y trabjando con las columnas actor_id y film_id
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 76);

-- BETWEEN nos permite seleccionar un rango de valores
-- TODA LA info de toda las columnas de actor, si el valor de actor_id esta entre 16 y 35;
SELECT * FROM actor WHERE actor_id BETWEEN 16 AND 35;