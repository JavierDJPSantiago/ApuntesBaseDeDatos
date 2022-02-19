/*

Consultas de agrupamiento
las utilizamos para agrupar resultados que tengan el mismo valor


-- GROUP BY agrupa
-- muy usado para hacer conteos
*/

SELECT * FROM inventory;

-- 
-- Selecciona los datos de inventory agrupados por store_id
SELECT * FROM inventory GROUP BY store_id; -- te colapsa (junta) todo porque solo le pides que agrupe y solo hay 2 tipos de datos, entonces, solo te muestra dos filas

-- Selecciona todos los valores de todas las columnas de la tabla rental y agrupalos por customer_id
SELECT * FROM rental GROUP BY customer_id;




-- Seecciona el country id y el numero de ciudades tambien pero a este ulimo cuentalo y dale el alias total_de_ciudades, estos dos vienen de la tabla city y agrupalos por country_id por lo que la suma ira en funcion a esta agrupacion
-- regresame los datos de la columna country_id, city_id de la tabla city agrupados por el country_id 
-- COUNT contar: contar cuantas ciudades tiene, sumando por posicion y no por valor: de no ponerlo colapsaria todo
SELECT country_id, count(city_id) AS "total_de_ciudades" FROM city GROUP BY country_id; 

-- Selecciona el country_id y el numero de ciudades tambien pero a este ulimo cuentalo y dale el alias total_de_ciudades, estos dos vienen de la tabla city y agrupalos por country_id por lo que la suma ira en funcion a esta agrupacion, pero solo muestra los que su conteo de ciudades sea mayor a 2
-- HAVING funciona como where, como is pero se usa en agrupaciones GROUP BY
SELECT country_id, count(city_id) AS "total_de_ciudades" FROM city GROUP BY country_id HAVING total_de_ciudades >2; 

-- Seecciona el country_id y el numero de ciudades tambien pero a este ulimo cuentalo y dale el alias total_de_ciudades, estos dos vienen de la tabla city y agrupalos por country_id por lo que la suma ira en funcion a esta agrupacion, por ultimo ordenamelos por el total de ciudades de forma descendente y limitate a mostrarme solo un valor
-- Seleccionar el pais que tiene mas ciudades:
-- ORDER BY : ORDENADO POR 
-- DESC : DESCENDENTE
-- ASC ascendente mas peque a mas grande
-- Una vez declaradao el alias,e n la misma linea no vuelvas a usar comillas para referirte a el
-- count es como decir que sume esos valores
-- LIMIT limitate a solo 1, el mas grande
SELECT country_id, count(city_id) AS "total_de_ciudades" FROM city GROUP BY country_id ORDER BY total_de_ciudades DESC LIMIT 1; 


/*------------------------ EJERCICIO------------------------------------ */
/*
MAX nos permite obtener el valor mas grande
MIN nos permite obtener el valor mas chico
AVG nos pemite obtener el promedio
SYM nos suma todos los elementos de una columna

*/

-- consulta para la pelicula con mayor duracion
-- DAME TODOS LOS DATOS DE TODAS LAS COLUMNAS DE LA TABLA FILM y ordenalos por length de forma descentende (de mayor a menor) y solo muestrame 1 valor
SELECT * FROM film ORDER BY length DESC LIMIT 1;

-- SI QUISIERA obtener el numero mayor de la columna que especifique
SELECT MAX(length) FROM film;

-- SI QUISIERA obtener el numero menor de la columna que especifique
SELECT MIN(length) FROM film;

-- AVG permite obtener el promedio; suma todos los valores de las filas de la columna que especifiquemos y las divide entre el numero de filas
SELECT AVG(length) FROM film;

-- SUM Nos permite obtener la suma de los valores de las columnas
-- suma todos los valores de las filas de la columna que especifiquemos
SELECT SUM(replacement_cost) FROM film;