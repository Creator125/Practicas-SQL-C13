SELECT * FROM customer;
SELECT * FROM payment;
SELECT * FROM adress;

SELECT * FROM payment AS p
JOIN customer AS c
ON p.payment_id = c.payment_id
JOIN address AS a
ON c.address_id = a.address

SELECT c.first_name || ' ' || c.last_name AS nombre, a.address, a.phone, SUM(p.amount) AS monto_total
FROM payment AS p
JOIN customer AS c ON p.customer_id = c.customer_id
JOIN address AS a ON c.address_id = a.address_id
GROUP BY c.first_name || ' ' || c.last_name, a.address, a.phone
ORDER BY monto_total DESC
LIMIT 2;

SELECT c.first_name, c.last_name, a.address, a.phone FROM customer AS c
JOIN address AS a
ON c.address_id = a.address_id
WHERE c.first_name LIKE 'A%'

SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM actor;

SELECT a.first_name || ' ' || a.last_name,  FROM film_actor AS fa
JOIN film AS f
ON fa.film_id = f.film_id
JOIN actor AS a
ON fa.actor_id = a.actor_id

SELECT SUM(p.amount) FROM payment AS p
JOIN customer AS c
ON p.customer_id = c.customer_id