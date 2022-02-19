/* SQL AVnzado */
-- Usaremos la base de datos sakila
-- primer rayo todo el codigo sql que encuentre
-- segundo rayo solo una linea
-- tercer
USE sakila;

-- obtener toda la informacoin de la tabla actor, de todas sus columnas
SELECT * FROM actor; 

-- obtener la informacion peros solo de estas columnas
SELECT actor_id, first_name, last_name FROM actor;


/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

-- WHERE ES SIMILAR A UN IF
-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, en la columna first_name tienen el valor "Penelope"
SELECT * FROM actor WHERE first_name = "Penelope";


-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, en la columna first_name tienen un valor diferente a "Penelope"
SELECT * FROM actor WHERE first_name != "Penelope";



-- usemos otra tabla
-- pedir que me traiga los datos de todas las columnas de la tabla film, si, el valor de film_id es mayor a 50
SELECT * FROM film where film_id > 50;


-- usemos otra tabla
-- pedir que me traiga los datos de todas las columnas de la tabla film, si, el valor de film_id es menor a 50
SELECT * FROM film where film_id < 50;



-- otra tabla
-- pedir que me traiga los datos de todas las columnas de la tabla customer, si, el residuo del valor de customer_id dividio entre 2 es = a 0, en otras palabras que solo me de los numeros pares
SELECT * FROM customer WHERE customer_id % 2 = 0;

-- otra tabla
 
-- pedir que me traiga los datos de todas las columnas de la tabla FILM, si, el valor de rental_rate es = 2.99, y el valor de rating es = "PG-13";
SELECT * FROM film WHERE rental_rate = 2.99 AND rating = "PG-13";


-- OTRA TABLA
-- LIKE hace lo mismo que "="
-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, el valor de first_name es = TOM;
SELECT * FROM actor WHERE first_name LIKE "TOM";

-- LIKE su diferencia con "=" es que nos permite usar comodines %
-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, el valor de fisrt_name TERMINA en e (%e);
SELECT * FROM actor WHERE first_name LIKE "%e";

-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, el valor de first_name inicia en an (an%);
SELECT * FROM actor WHERE first_name LIKE "an%";

-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, el valor de last_name incluye una n sin importarme la posicion (%n%);
SELECT * FROM actor WHERE last_name LIKE "%n%";

-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, el valor de first_name empieza con b(b%) O(OR) que el valor de last_name empiece con b (b%);
SELECT * FROM actor WHERE first_name LIKE "b%" OR last_name LIKE "b%";

-- pedir que me traiga los datos de todas las columnas de la tabla actor, si, el valor de first_name empieza con k le sigue un caracter desconocido (_) y despues una r (%k_r%);
-- ==> "_" = caracterDesconocido  
SELECT * FROM actor WHERE first_name LIKE "%k_r%";

