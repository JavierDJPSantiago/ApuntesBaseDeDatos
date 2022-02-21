-- category tiene 3 columnas con 16 registros
-- language tiene 3 columnas con 6 registros
-- en total son 22
-- por que se ven mas de 22 (se ven 96)? multiplica todos los valores de la tabla category con la tabla lenguage: dublica la informacion
-- para el valor 1 de categori_id le dio los 6 language_id de language
-- tiene un comportamiento full join, combina todo
SELECT * FROM category, language;



-- uso de join para unir tablas pero sirven para hacer conjuntos, evitando lo anterior
-- left join, trae la tabla que este a la izquierda
-- right join, trae la informacion de la derecha

-- inner join combina con lo que tengan similar, en donde se intersecten, lo que no sea similar lo desecha
-- muy util para Visualizar informacion separada
-- de las columnas city_id, country, cyti_id proviene de city, country proviene de country, quiero que las unas por la columna que son semejantes, especificando de donde vienen esas columnas city.country_id = country.country_id
-- solo si tienen una columna semejante se pueden relacionar
-- el order by id fue un extra: para visualizarlo de mejor forma
-- columna 1  , 2      tabla: 1    combinar  tabla:2 en que punto: columna1 = columna2  combinar city.country_id = country.country_id
SELECT city_id, country FROM city INNER JOIN country ON city.country_id = country.country_id ORDER BY city_id ASC;


-- podemos pedir mas columnas de city o de country para observar su infomrmacion
SELECT city_id, country, city FROM city INNER JOIN country ON city.country_id = country.country_id ORDER BY city_id ASC;

-- Seleccionar el nombre del pais, el nombre de la ciudad y la direccion
-- muestrame las columnas country, city y address DE la tabla country intersectado con la tabla city EN las columnas country.country_id = city.country_id y city intersectado con la tabla address EN las columnas city.city_id = address.city_id;
-- es una cadena, country esta relacionado con city pero no con address, city si esta relacionada con addrees por lo que se pueden conectar estas 3 tablas
-- solo puede haber una union entre tablas, aunque se tenga mas de una forma de hacer una union entre tablas solo debe existir una, el tener mas de una generara problemas en la base de datos
SELECT country, city, address FROM country
INNER JOIN city ON  country.country_id = city.country_id
INNER JOIN address On city.city_id = address.city_id;

-- seleccionar el actor y las peliculas en las cuales ha estado involucrado, asi mismo como la descripcion de cada pelilcula
-- inner join, no importa el orden de los iguales "="
SELECT CONCAT(first_name, "", last_name) AS "Name", title, description FROM film_text
INNER JOIN film_actor ON film_actor.film_id = film_text.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id