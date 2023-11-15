SELECT * FROM barbers;

SELECT * FROM clients;

-- INNER JOIN
SELECT barbers.first_name AS nombre_babero, clients.first_name AS nombre_cliente FROM barbers
INNER JOIN clients
ON barbers.id_barber = clients.id_barber;

-- FULL JOIN
SELECT * FROM barbers
FULL JOIN clients
ON barbers.id_barber = clients.id_barber;

SELECT barbers.first_name AS nombre_babero, clients.first_name AS nombre_cliente FROM barbers
FULL JOIN clients
ON barbers.id_barber = clients.id_barber;

-- LEFT JOIN
SELECT * FROM clients
LEFT JOIN barbers
ON barbers.id_barber = clients.id_barber;

SELECT * FROM barbers
LEFT JOIN clients
ON barbers.id_barber = clients.id_barber;

SELECT * FROM barbers
LEFT JOIN clients
ON barbers.id_barber = clients.id_barber
WHERE clients.id_barber IS NULL;

SELECT * FROM barbers
LEFT JOIN clients
ON barbers.id_barber = clients.id_barber
WHERE barbers.id_barber IS NULL;