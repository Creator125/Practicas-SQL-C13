CREATE TABLE estudiantes(
	identificacion INT NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	edad INT,
	ciudad VARCHAR(50)
);

ALTER TABLE estudiantes ADD CONSTRAINT _identificacion
PRIMARY KEY (identificacion)


CREATE TABLE hobbies(
    idHobbie INT PRIMARY KEY,
    idEstudiante INT NOT NULL,
    nombre_hobbie VARCHAR(100) NOT NULL,
    FOREIGN KEY (idEstudiante) REFERENCES estudiantes(identificacion)
);

-- insetar datos
INSERT INTO estudiantes(identificacion, nombre, edad, ciudad)
VALUES(1, 'Mario', 25, 'Medellin');

SELECT * FROM estudiantes;
SELECT * FROM hobbies;

INSERT INTO hobbies(idHobbie, idEstudiante, nombre_hobbie)
VALUES (1,1, 'Comics');

SELECT identificacion identificacion_estudiantes,
		estudiantes.nombre as nombre_estudiantes,
		hobbies.nombre_hobbie as nombre_hobbie
FROM estudiantes JOIN hobbies on estudiantes.identificacion = hobbies.idEstudiante;
		