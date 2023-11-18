/*
1. Yo, como empresa quiero dar dos grandes premios a mis dos mejores clientes, por
tal motivo requiero verificar en las compras el monto de de cada uno, agruparlas por
id del cliente y sacar el monto mayor de forma descendente con un límite de dos
para que me traiga el resultado de mis dos mejores clientes, se requiere que en la
consulta me traiga el nombre y apellido del cliente, la dirección y el teléfono para
llamarlos y enviarles su premio, y quiero que me traiga el monto total.
*/
SELECT c.first_name || ' ' || c.last_name AS nombre_cliente,
       a.address AS direccion, a.phone AS telefono, p.amount
FROM customer AS c
JOIN payment AS p ON c.customer_id = p.customer_id
JOIN address AS a ON a.address_id = c.address_id
GROUP BY c.customer_id, nombre_cliente, direccion, telefono, p.amount
ORDER BY c.customer_id DESC
LIMIT 2;

/*
2. Se requiere con urgencia investigar los nombres de los clientes que comienzan por
la letra A, donde se pueda verificar el correo, la dirección, el teléfono
*/
SELECT c.first_name nombre, c.email AS correo_cliente,
		a.address AS direccion, a.phone AS telefono
FROM customer AS c
JOIN address AS a ON a.address_id = c.address_id
WHERE c.first_name LIKE 'A%';

/*
3. Se necesita sacar un listado donde se pueda verificar el nombre de la película, su
descripción, el rating y el lenguaje de cada película, donde el título pueda estar en
orden ascendente.
*/

SELECT f.title AS nombre_pelicula, f.description, l.name AS lenguaje 
FROM film AS f
JOIN language AS l ON l.language_id = f.language_id 
ORDER BY f.title ASC;

/*
4. La empresa de rentas de películas necesita tener un listado donde se pueda ver el
nombre del actor con su apellido, junto con el título de cada película en la cual
participan y el año de producción de la película.
*/
SELECT a.first_name || ' ' || a.last_name AS nombre_actor, f.title AS titulo_pelicula,
		f.release_year AS fecha_producion
FROM actor AS a
JOIN film_actor AS fa ON fa.actor_id = a.actor_id
JOIN film AS f ON f.film_id = fa.film_id;

-- --------------------------CREAR BASE DE DATOS------------------------
/*
5. Un cliente, dueño de una tienda de tecnología, requiere una aplicación muy sencilla,
que tenga una sección de clientes, que además tenga una tienda de productos en
línea y que contenga una sección de facturación, Además el cliente quiere hacer
pruebas para verificar el funcionamiento de la aplicación, donde nos pide ingresar
datos a nuestras tablas para interactuar con ellas.
*/
-- Tabla de clientes
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL
);

-- Tabla de productos
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    amount INTEGER
);

-- Tabla de facturas
CREATE TABLE Invoices (
    invoice_id SERIAL PRIMARY KEY NOT NULL,
    customer_id INTEGER REFERENCES Customers(customer_id),
	product_id INTEGER REFERENCES Products(product_id),
    invoice_date TIMESTAMP,
    total_amount DECIMAL(10, 2)
);

-- Ingresar datos de la tabla customer
INSERT INTO Customers (first_name, last_name, address, email, phone) 
VALUES ('Pavia', 'Rosengren', 'Holmberg', 'prosengren0@mozilla.com', '498-405-3025'), 
		('Alec', 'Fullicks', 'Goodland', 'afullicks1@admin.ch', '961-400-4640'),
		('Torrin', 'Geale', 'Upham', 'tgeale2@hibu.com', '777-987-5405'),
		('Devina', 'Adamowitz', 'Boyd', 'dadamowitz3@elegantthemes.com', '937-413-4164'),
		('Arlin', 'Give', 'Colorado', 'agive4@hao123.com', '817-906-6681');

-- Ingresar datos de la tabla Products
INSERT INTO Products (name, description, price, amount)
VALUES ('Laptop', 'Laptop de última generación', 1200.00, 10),
       ('Smartphone', 'Teléfono inteligente', 800.00, 15),
	   ('SmarWhach', 'Reloj inteligente', 700.00, 10),
	   ('SmartTV', 'Televisor con internet', 1000000.00, 20),
	   ('Parlantes', 'Parlante con bluetooth', 800.00, 100);

-- Ingresar datos de la tabla Invoices
INSERT INTO Invoices (customer_id, product_id, invoice_date, total_amount)
VALUES (1, 3, '2023-11-17',700.00),
		(2, 1, '2023-10-16', 1200.00),
		(3, 5, '2023-07-08', 800.00),
		(4, 2, '2023-07-05', 2000.00),
		(5, 4, '2023-05-07', 1000000.00);
		
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Invoices;