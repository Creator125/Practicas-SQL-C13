SELECT * FROM actor AS a
JOIN film_actor AS fa
ON a.actor_id = fa.actor_id
JOIN film_category AS fc
ON fc.film_id = fa.film_id

SELECT a.first_name || '' || a.last_name AS nombre, b.address AS direccion,
		c.city AS ciudad FROM customer AS a
JOIN address AS b
ON a.address_id = b.address_id
JOIN city AS c
ON b.city_id = c.city_id

/*
Nuestro jefe necesita saber el nombre de los clientes, 
que dia rento la pelicula, quien lo atendió, telefono y correo del cliente
*/
SELECT c.first_name || ' ' || c.last_name AS nombre_cliente, DATE(r.rental_date) AS dia_renta_pelicula,
		s.first_name || ' ' || s.last_name AS atendedor, a.phone AS telefono_cliente, c.email AS correo_cliente
FROM customer AS c
JOIN rental AS r
ON c.customer_id = r.customer_id
JOIN address AS a
ON a.address_id = c.address_id
JOIN staff AS s
ON r.staff_id = s.staff_id
ORDER BY r.rental_date DESC;