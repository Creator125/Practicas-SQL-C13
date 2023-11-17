INSERT INTO futbolistas (first_name, last_name, username, email, age, positions, create_on)
VALUES('Luis', 'Diaz', 'goleador', 'luis@mail.com', 23, 'delantero','16-12-2023');

SELECT * FROM futbolistas;

INSERT INTO equipos(id_futbolista, name, country)
VALUES(1, 'liverpool', 'ingraterra');

SELECT * FROM equipos;