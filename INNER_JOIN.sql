SELECT * FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id;

--Usando FULL JOIN
SELECT * FROM customer
FULL JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null OR payment.customer_id IS null

SELECT COUNT(*) FROM customer;
SELECT COUNT(*) FROM payment;