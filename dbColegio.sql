CREATE TABLE alumnos(
	id_alumno SERIAL PRIMARY KEY NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	age SMALLINT NOT NULL,
	phone VARCHAR(7) NOT NULL,
	create_on TIMESTAMP NOT NULL,
	update_on TIMESTAMP NULL
);

CREATE TABLE profesores(
	id_profesor SERIAL PRIMARY KEY NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	age SMALLINT NOT NULL,
	phone VARCHAR(7) NOT NULL,
	create_on TIMESTAMP NOT NULL,
	update_on TIMESTAMP NULL
);

CREATE TABLE materias(
	id_materia SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(250) NOT NULL,
	id_profesor INTEGER REFERENCES profesores(id_profesor),
	description VARCHAR(500) NOT NULL
);

CREATE TABLE grupos(
	id_grupo SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(100) NOT NULL,
	id_alumno INTEGER REFERENCES alumnos(id_alumno),
	id_profesor INTEGER REFERENCES profesores(id_profesor),
	director_grupo VARCHAR(100) NOT NULL
);

CREATE TABLE grados(
	id_grado SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(100) NOT NULL,
	id_grupo INTEGER REFERENCES grupos(id_grupo),
	id_materia INTEGER REFERENCES materias(id_materia),
	start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL
);





SELECT * FROM alumnos;
SELECT * FROM profesores;
SELECT * FROM materias;
SELECT * FROM grupos;
SELECT * FROM grados;