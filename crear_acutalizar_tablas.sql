CREATE TABLE users(
 id_user SERIAL PRIMARY KEY NOT NULL,
 username VARCHAR(100) UNIQUE NOT NULL,
 email VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE products(
	id_paiment SERIAL PRIMARY KEY NOT NULL,
	id_user INTEGER REFERENCES users(id_user),
	name VARCHAR(100) NOT NULL,
	description VARCHAR(500) NOT NULL
);

SELECT * FROM users;
SELECT * FROM products;

INSERT INTO users(username, email)
VALUES('Ganagame', 'game@gmail.com');
INSERT INTO products(id_user, name, description)
VALUES(3, 'parlante', 'Parante con sonido evolvente');


-- Actualizar datos de tabla
UPDATE users
SET username = product.name
FROM products
WHERE users.id_user = id_user

UPDATE product
SET description = name
RETURNING name, desciption;

SELECT * FROM users
WHERE username = 'parlante';

-- Modificar tabla
ALTER TABLE users
ADD COLUMN phone VARCHAR(22) NULL;