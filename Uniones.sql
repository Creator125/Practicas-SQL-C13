SELECT * FROM actor
FULL JOIN film_actor
ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id IS NULL OR film_actor.actor_id IS NULL;

SELECT actor.first_name AS actor, film_actor.film_id FROM actor
FULL JOIN film_actor
ON actor.actor_id = film_actor.actor_id;

SELECT * FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id;

SELECT * FROM film
FULL JOIN film_actor
ON film.film_id = film_actor.film_id
WHERE film.film_id IS NULL OR film.film_id IS NULL;