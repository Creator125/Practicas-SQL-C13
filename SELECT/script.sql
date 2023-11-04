SELECT * FROM film;
SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM city;

-- Selecionar
SELECT first_name, last_name FROM actor;

-- Usando SELECT DISTINCT
SELECT DISTINCT (rental_rate) FROM film;
SELECT DISTINCT * FROM rental;
SELECT DISTINCT first_name, last_name FROM actor;

--Usando COUNT
SELECT COUNT(*) FROM city;
SELECT DISTINCT COUNT(first_name) FROM actor;


/*
Resulta que tenemos un cliente muy interesado en un titulo 
de una película, pero para estar seguro de su compra el desea 
leer la descripción, la película se llama African Egg
*/
SELECT (title, description) FROM film
WHERE title = 'African Egg';

/*
Dentro de mi tabla de clientes yo quiero traer el nombre que sea de 
Susan o de Elizabeth, pero quiero que me traiga solamente la que 
tiene el apellido Wilson
*/
SELECT (first_name) FROM customer
WHERE (first_name = 'Susan' OR first_name = 'Elizabeth') AND (last_name = 'Wilson');

-- Usando ORDER BY
SELECT (first_name, last_name) FROM customer
ORDER BY first_name ASC;

-- Quiero saber de todos los clientes que compra peliculas en la tienda 2
SELECT (first_name, last_name) FROM customer
WHERE store_id = 2
ORDER BY first_name ASC;

