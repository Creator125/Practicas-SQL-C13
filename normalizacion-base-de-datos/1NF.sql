CREATE DATABASE Empleados;

CREATE TABLE employees (
	employee_id VARCHAR(4),
	name_employee VARCHAR(50),
	job VARCHAR(100),
	state_code INT,
	home_state VARCHAR(100)
);

INSERT INTO employees VALUES ('E001', 'Alice', 'J01', 26, 'Michigan');
INSERT INTO employees VALUES ('E001', 'Alice', 'J02', 26, 'Michigan');
INSERT INTO employees VALUES ('E002', 'Bob', 'J02', 56, 'Wyoming');
INSERT INTO employees VALUES ('E002', 'Bob', 'J03', 56, 'Wyoming');
INSERT INTO employees VALUES ('E001', 'Alice', 'J01', 26, 'Michigan');

/*
Cosas a mejorar:
Diviría toda la tabla en diferentes tablas y todos usarian id
y esta tabla utilizaría pura claves foraneas ya que al esblecer un 
PRIMARY KEY está no permite isertar datos con claves diuplicadas
*/