SELECT * FROM payment;

SELECT AGE(payment_date) FROM payment;

SELECT TO_CHAR(payment_date, 'yyy') FROM payment;
SELECT TO_CHAR(payment_date, 'mm yyy') FROM payment;

SELECT ROUND(AVG(rental_rate / replacement_cost)) FROM film;