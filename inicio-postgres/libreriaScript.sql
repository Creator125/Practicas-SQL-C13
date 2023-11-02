CREATE TABLE libros(
	id SERIAL,
	titulo VARCHAR(100) NOT NULL, 
	autor VARCHAR(50) NOT NULL, 
	editorial VARCHAR(100) NOT NULL
);

INSERT INTO libros(titulo, autor, editorial)
VALUES('Don Quijote de la mancha', 'Miguel De Cervantes savedra', 'Panini');

SELECT titulo FROM libros;

SELECT * FROM libros;

SELECT titulo, editorial FROM libros;