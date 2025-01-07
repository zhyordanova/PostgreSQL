-- Solution skeleton
CREATE TABLE IF NOT EXISTS employees (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  middle_name VARCHAR(100) DEFAULT NULL, 
  job_title VARCHAR(80) NOT NULL,
  hire_date DATE DEFAULT NULL,
  salary NUMERIC(15, 3),
  department_id INT NOT NULL,
  manager_id INT NOT NULL,
  address_id INT NOT NULL,
  CONSTRAINT employees_salary_check CHECK (salary >= 0),
  CONSTRAINT employees_department_id_check CHECK (department_id > 0),
  CONSTRAINT employees_manager_id_check CHECK (manager_id > 0),
  CONSTRAINT employees_address_id_check CHECK (address_id > 0)
);


INSERT INTO employees (first_name, last_name, middle_name, job_title, department_id, manager_id, hire_date, salary, address_id) 
VALUES 
	('Kevin', 'Brown', 'F', 'Marketing Assistant', 4, 6, '1999-02-26', 13500.0000, 102),
	('Thierry', 'D`Hers', 'B', 'Tool Designer', 5, 19, '2000-01-11', 25000.0000, 40),
	('David', 'Bradley', 'M', 'Marketing Manager', 5, 109, '2000-01-20', 37500.0000, 199),
	('Guy', 'Gilbert', 'R', 'Production Technician', 7, 16, '1998-07-31', 12500.0000, 166),
	('JoLynn', 'Dobney', 'M', 'Production Supervisor', 7, 21, NULL, 25000.0000, 275),
	('Ruth', 'Ellerbrock', 'Ann', 'Production Technician', 7, 185, '2000-02-06', 13500.0000, 108),
	('Roberto', 'Tamburello', 'N', 'Engineering Manager', 1, 12, '1999-12-12', 43300.0000, 193),
	('Gail', 'Erickson', 'A', 'Design Engineer', 1, 3, '2000-02-06', 32700.0000, 22),
	('Rob', 'Walters', 'M', 'Tool Designer', 2, 3, '2000-01-05', 29800.0000, 155),
	('Barry', 'Johnson', 'K', 'Production Technician',  7, 185, '2000-02-07', 13500.0000, 285),
	('Jossef', 'Goldberg', 'H', 'Design Engineer', 1, 3, '2000-02-24', 32700.0000, 214);
	

-- Input	
SELECT 
	first_name, 
	job_title, 
	salary 
FROM 
	employees;
	
-- Output
Thierry
Tool Designer
25000.000
David
Marketing Manager
37500.000
JoLynn
Production Supervisor
25000.000
Ruth
Production Technician
13500.000
Gail
Design Engineer
32700.000
Barry
Production Technician
13500.000
Jossef
Design Engineer
32700.000
Kevin
Senior Marketing Assistant
15000.000
Guy
Senior Production Technician
14000.000
Roberto
Senior Engineering Manager
44800.000
Rob
Senior Tool Designer
31300.000