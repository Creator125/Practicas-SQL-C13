SELECT * FROM rental;

SELECT * FROM staff;

SELECT * FROM rental
WHERE DATE(return_date) = DATE('2005-05-29');

SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT rental.return_date AS entrega_pelicula, staff.first_name AS nombre_vendedor FROM rental
INNER JOIN staff
ON rental.staff_id = staff.staff_id
WHERE DATE(return_date) = DATE('2005-05-29')
ORDER BY staff.first_name DESC;


