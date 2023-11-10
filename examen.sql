/* 
Yo como administrador necesito saber cuales son las categorias de 
las peliculas que comienzan por la C 
*/ 
SELECT name FROM category
WHERE name LIKE 'C%';

/*
Ademas como administrador tambien necesito buscar el nombre de los 
actores que terminan con la letra y que su apellido coincida con la palabra 'ies'
*/
SELECT first_name, last_name FROM actor
WHERE first_name LIKE '%y' AND last_name LIKE '%ies%';

/*
En una inspeccion gubernamental, el jefe de inspeccion nos dice 
que necesita saber si existen clientes nuestros de otros distritos,
quiere saber cuantos hay en el distrito de Alberta y de California, 
y quiere saber sus numeros telefonicos para llamarlos y confirmar sus compras
*/
SELECT district, phone From address
WHERE district IN ('Alberta', 'California');

/*
En la misma inspeccion se necesita saber cuales fueron las compras que se 
hicieron entre la fecha 2007-02-16 y 2007-02-19,
se requiere mostrar en la consulta el id del cliente, y las compras 
en orden descendente. 
*/

SELECT customer_id, amount, payment_date From payment
WHERE payment_date BETWEEN '2007-02-16' AND '2007-02-19'
ORDER BY payment_date DESC;

/*
la empresa esta ordenando todas las peliculas, y 
necesita sacar de circulacion todas las peliculas las cuales se estan
rentando en 0.99, solo es necesario mostrar el titulo,
el año y su precio de renta de forma ascendente por el titulo.
*/

SELECT title, release_year, MIN(rental_rate) FROM film
GROUP BY title, release_year
HAVING MIN(rental_rate) > 0.99
ORDER BY title ASC

/*
La empresa necesita saber cuanto es
la suma total del costo de reemplazo de las peliculas
*/
SELECT SUM(replacement_cost) AS Costo_total FROM film

-- ademas necesita saber cual es el precio de renta minimo, el precio maximo y el promedio
SELECT MIN(rental_rate) AS minimo, MAX(rental_rate) AS maximo, ROUND(AVG(rental_rate), 2) AS promedio FROM film

/*
mi jefe me pidio agrupar todos los precios de renta y por 
cada uno sumar el total del reemplazo de los costos. solo necesita
saber cual le traeria mas ganacia.
*/
SELECT rental_rate, MAX(replacement_cost) FROM film
GROUP BY rental_rate
ORDER BY SUM(replacement_cost)
LIMIT 1;