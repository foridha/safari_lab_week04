DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS enclosures;

-- // enclosures

CREATE TABLE enclosures (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	capacity INT,
	closed_for_maintenance BOOLEAN
);

-- // animals

CREATE TABLE animals (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	type VARCHAR(255),
	age INT, 
	enclosure_id INT REFERENCES enclosures(id)
);

-- // employees

CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	employee_number INT
);

-- // assignment

CREATE TABLE assignments (
	id SERIAL PRIMARY KEY,
	employee_id INT REFERENCES employees(id)
	enclosure_id INT REFERENCES enclosures(id)
	day VARCHAR(255)
);

--  // insert for enclosure

INSERT INTO enclosures(name, capacity, closed_for_maintenance)VALUES('repitles', 20, false);
INSERT INTO enclosures(name, capacity, closed_for_maintenance)VALUES('cats', 30, true);
INSERT INTO enclosures(name, capacity, closed_for_maintenance)VALUES('birds', 15, false);
INSERT INTO enclosures(name, capacity, closed_for_maintenance)VALUES('elephants', 25, false);

-- // insert for animals

INSERT INTO animals(name, type, age, enclosure_id)VALUES('Bob', 'lion',5,2);
INSERT INTO animals(name, type, age, enclosure_id)VALUES('Tara', 'parrot',1,3);
INSERT INTO animals(name, type, age, enclosure_id)VALUES('Tom', 'tiger',50,2);
INSERT INTO animals(name, type, age, enclosure_id)VALUES('Bill', 'lizard',90,1);
INSERT INTO animals(name, type, age, enclosure_id)VALUES('Nathan', 'elephant',5,4);
INSERT INTO animals(name, type, age, enclosure_id)VALUES('Nathan', 'Borneo elephant',5,4);

-- // employees

INSERT INTO employees(name, employee_number)VALUES('George', 234);
INSERT INTO employees(name, employee_number)VALUES('Till', 123);
INSERT INTO employees(name, employee_number)VALUES('Ben',786);
INSERT INTO employees(name, employee_number)VALUES('Matt',657);
INSERT INTO employees(name, employee_number)VALUES('Lol',667);

-- //assignments

INSERT INTO assignments(employee_id,enclosure_id, day)VALUES(2,3,'Tuesday');
INSERT INTO assignments(employee_id,enclosure_id, day)VALUES(1,4,'Wednesday');
INSERT INTO assignments(employee_id,enclosure_id, day)VALUES(3,3,'Friday');
INSERT INTO assignments(employee_id,enclosure_id, day)VALUES(4.1, 'Monday');
INSERT INTO assignments(employee_id,enclosure_id, day)VALUES(5.2, 'Monday');

