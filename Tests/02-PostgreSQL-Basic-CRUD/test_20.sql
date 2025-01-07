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
	('John', 'Wood', 'L', 'Marketing Specialist', 4, 6, '2003-03-10', 14400.0000, 1),
	('Garrett', 'Vargas', 'R', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 2),
	('Carole', 'Poland', 'M', 'Production Technician', 7, 173, NULL, 9500.0000, 3),
	('Tawana', 'Nusbaum', 'G', 'Production Technician', 7, 210, '2001-03-09', 15000.0000, 4),
	('Gail', 'Erickson', 'A', 'Design Engineer', 1, 3, '2000-02-06', 32700.0000, 22),
	('Barry', 'Johnson', 'K', 'Production Technician',  7, 185, '2000-02-07', 13500.0000, 285),
	('Nicole', 'Holliday', 'B', 'Production Technician', 7, 87, '2001-03-26', 15000.0000, 5),
	('Chris', 'Norred', 'K', 'Control Specialist', 12, 90, '2001-04-07', 16800.0000, 6),
	('Andrew', 'Hill', 'R', 'Production Supervisor', 7, 21, NULL, 25000.0000, 7),
	('Garrett', 'Young', 'R', 'Production Technician', 7, 184, '2001-01-08', 9500.0000, 283),
	('Jian Shuo', 'Wang', 'J', 'Production Technician', 7, 135, '2001-01-08', 9500.0000, 160),
	('Lane', 'Sacksteder', 'M', 'Production Technician', 7, 143, NULL, 14000.0000, 8),
	('Kirk', 'Koenigsbauer', 'J', 'Production Technician', 7, 123, '2001-01-16', 10000.0000, 250),
	('David', 'Ortiz', 'J', 'Production Technician', 7, 18, '2001-01-16', 12500.0000, 267),
	('Peng', 'Wu', 'J', 'Quality Assurance Supervisor', 13, 200, '2001-01-10', 21600.0000, 9),
	('Shu', 'Ito', 'K', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 10);
	
	
CREATE TABLE IF NOT EXISTS addresses (
  "id" SERIAL PRIMARY KEY,
  street VARCHAR(100) NOT NULL,
  "number" INT NOT NULL,
  city_id INT NOT NULL,
  CONSTRAINT addresses_city_id_check CHECK (city_id > 0)
);


INSERT INTO addresses ("number", street, city_id) 
VALUES
	(101, 'Candy Rd.', 1),
	(10203, 'Acorn Avenue', 2),
	(1061, 'Buskrik Avenue', 3),
	(1064, 'Slow Creek Road', 4),
	(1102, 'Ravenwood', 4),
	(1144, 'Paradise Ct.', 6),
	(1185, 'Dallas Drive', 7),
	(1220, 'Bradford Way', 4),
	(1226, 'Shoe St.', 8),
	(1234, 'Seaside Way', 9),
	(108, 'Lakeside Court', 5),
	(1343, 'Prospect St', 5),
	(1648, 'Eastgate Lane', 5),
	(2284, 'Azalea Avenue', 5);

-- Input
SELECT DISTINCT lower(table_name)
FROM information_schema.views
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_addresses';


SELECT lower(column_name)
FROM information_schema.columns
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_addresses';


SELECT * FROM public.view_addresses


-- Output
John Wood
4
101 Candy Rd.
Garrett Vargas
3
10203 Acorn Avenue
Carole Poland
7
1061 Buskrik Avenue
Tawana Nusbaum
7
1064 Slow Creek Road
Nicole Holliday
7
1102 Ravenwood
Chris Norred
12
1144 Paradise Ct.
Andrew Hill
7
1185 Dallas Drive
Lane Sacksteder
7
1220 Bradford Way
Peng Wu
13
1226 Shoe St.
Shu Ito
3
1234 Seaside Way
