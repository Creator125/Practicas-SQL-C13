CREATE TABLE barbers (
id_barber SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100)
);

CREATE TABLE Clients (
id SERIAL PRIMARY KEY,
id_barber BIGINT,
first_name VARCHAR(100),
last_name VARCHAR(100),
FOREIGN KEY (id_barber) REFERENCES barbers(id_barber)
);

INSERT INTO barbers VALUES(1,'Mario', 'Perez');
INSERT INTO barbers VALUES(2,'Fabian', 'Morales');
INSERT INTO barbers VALUES(3,'Jeison', 'Andreas');
INSERT INTO barbers VALUES(4,'Brayan', 'Soteldo');

INSERT INTO clients VALUES(1,2,'Rafael', 'Gonzales');
INSERT INTO clients VALUES(2,3,'Jones', 'balms');
INSERT INTO clients VALUES(3,1,'Heisenberg', 'wilms');
INSERT INTO clients VALUES(4,2,'Robinson', 'Enao');
INSERT INTO clients VALUES(5,4,'Smith', 'Salst');
INSERT INTO clients VALUES(6,NULL,'Williams', NULL);

-- Usando INNER JOIN
SELECT clients.first_name AS nombre_cliente, barbers.first_name AS nombre_barbero FROM clients
INNER JOIN barbers
ON clients.id_barber = barbers.id_barber

-- Usando FULL JOIN
SELECT * FROM clients
FULL JOIN barbers
ON clients.id_barber = barbers.id_barber;

SELECT clients.first_name AS nombre_cliente, barbers.first_name AS nombre_barbero FROM clients
FULL JOIN barbers
ON clients.id_barber = barbers.id_barber;

SELECT * FROM clients
FULL JOIN barbers
ON clients.id_barber = barbers.id_barber

-- Usando LEFT JOIN
SELECT * FROM clients
LEFT JOIN barbers
ON clients.id_barber = barbers.id_barber

-- Usando RIGHT JOIN
SELECT * FROM clients
RIGHT JOIN barbers
ON clients.id_barber = barbers.id_barber