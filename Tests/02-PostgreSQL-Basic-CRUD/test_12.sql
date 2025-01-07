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


-- Input
INSERT INTO employees (first_name, last_name, middle_name, job_title, department_id, manager_id, hire_date, salary, address_id) 
VALUES 
	('Vidur', 'Luthra', 'X', 'Recruiter', 9, 30, '2001-02-02', 18300.0000, 176),
	('John', 'Evans', 'P', 'Production Technician', 7, 38, '2001-02-02', 11000.0000, 253),
	('Nancy', 'Anderson', 'A', 'Production Technician', 7, 7, '2001-02-03', 12500.0000, 227),
	('Pilar', 'Ackerman', 'G', 'Shipping and Receiving Supervisor', 15, 21, '2001-02-03', 19200.0000, 269),
	('David', 'Yalovsky', 'A', 'Production Technician', 7, 184, '2001-02-03', 9500.0000, 241),
	('David', 'Hamilton', 'P', 'Production Supervisor', 7, 21, NULL, 25000.0000, 150),
	('Greg', 'Alderson', 'F', 'Production Technician', 7, 197, NULL, 10000.0000, 18),
	('David', 'Johnson', NULL, 'Production Technician', 7, 184, '2001-01-03', 9500.0000, 142),
	('Zheng', 'Mu', 'W', 'Production Supervisor', 7, 21, '2001-01-04', 25000.0000, 278),
	('Roberto', 'Tamburello', 'N', 'Engineering Manager', 1, 12, '1999-12-12', 43300.0000, 193),
	('Rob', 'Walters', 'M', 'Tool Designer', 2, 3, '2000-01-05', 29800.0000, 155),
	('Thierry', 'D`Hers', 'B', 'Tool Designer', 5, 19, '2000-01-11', 25000.0000, 40),
	('Jean', 'Trenary', 'E', 'Information Services Manager', 11, 109, '2001-01-12', 50500.0000, 194),
	('Russell', 'Hunter', 'F', 'Production Technician', 7, 74, '2001-01-13', 11000.0000, 258),
	('A. Scott', 'Wright', 'P', 'Master Scheduler', 8, 148, '2001-01-13', 23600.0000, 172),
	('Arvind', 'Rao', 'B', 'Buyer', 5, 274, '2001-04-01', 18300.0000, 212),
	('Stefen', 'Hesse', 'A', 'Production Technician', 7, 182, '2001-04-01', 14000.0000, 68),
	('Ivo', 'Salmre', 'William', 'Production Technician', 7, 108, '2001-01-05', 14000.0000, 165),
	('Paul', 'Komosinski', 'B', 'Production Technician', 7, 87, '2001-01-05', 15000.0000, 32),
	('Sootha', 'Charncherngkha', 'T', 'Quality Assurance Technician', 13, 41, '2002-03-26', 10600.0000, 149),
	('Michael', 'Zwilling', NULL, 'Production Technician', 7, 18, '2002-03-26', 12500.0000, 76),
	('Pilar', 'Ackerman', 'G', 'Shipping and Receiving Supervisor', 15, 21, '2001-02-03', 19200.0000, 269);
	
	
-- Output
David Hamilton
Production Supervisor
25000.000
Zheng Mu
Production Supervisor
25000.000
Thierry D`Hers
Tool Designer
25000.000
A. Scott Wright
Master Scheduler
23600.000
Ivo Salmre
Production Technician
14000.000
Stefen Hesse
Production Technician
14000.000
Michael Zwilling
Production Technician
12500.000
Nancy Anderson
Production Technician
12500.000