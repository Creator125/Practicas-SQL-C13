SELECT * FROM rental AS r
WHERE staff_id = 1;

SELECT c.first_name AS nombre FROM customer AS c
WHERE EXISTS
(SELECT * FROM rental AS r
WHERE staff_id = 1);

SELECT last_name, first_name FROM customer AS c
WHERE EXISTS
(SELECT p.amount FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 4);

SELECT * FROM payment
WHERE amount > 4;

SELECT c.last_name, c.first_name, p.amount 
FROM customer AS c
JOIN payment AS p
ON c.customer_id = p.customer_id
WHERE p.amount IN (
    SELECT p.amount 
    FROM payment AS p
    WHERE p.customer_id = c.customer_id
    AND (p.amount > 4)
);