DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS enclosures;

CREATE TABLE animals (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	type VARCHAR(255),
	age INT, 
	enclosure_id INT REFERENCES enclosures(id)
);

-- enclosures

CREATE TABLE enclosures (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	capacity INT,
	closed_for_maintenance VARCHAR(255)
);

-- // staff

CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	employee_number INT
);

-- // assignment

CREATE TABLE assignments (
	id SERIAL PRIMARY KEY,
	employee_id INT REFERENCES employees(id)
	enclosure_id INT REFERENCES enclosure(id)
	day VARCHAR(255)
);

