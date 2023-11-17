CREATE TABLE futbolistas(
	id_fulbolista SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	username VARCHAR(100) UNIQUE NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	age SMALLINT NOT NULL,
	positions VARCHAR(50) NOT NULL,
	create_on TIMESTAMP NOT NULL,
	update_on TIMESTAMP NULL
);

CREATE TABLE equipos(
	id_equipo SERIAL PRIMARY KEY NOT NULL,
	id_futbolista INTEGER REFERENCES futbolistas(id_fulbolista),
	name VARCHAR(250) NOT NULL,
	country VARCHAR(100) NOT NULL
);

CREATE TABLE ligas(
	id_liga SERIAL PRIMARY KEY NOT NULL,
	id_futbolista INTEGER REFERENCES futbolistas(id_fulbolista),
	id_equipo INTEGER REFERENCES equipos(id_equipo),
	country VARCHAR(100) NOT NULL,
	date TIMESTAMP NOT NULL,
	fin_date TIMESTAMP NULL
);