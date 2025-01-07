-- Solution skeleton
CREATE TABLE IF NOT EXISTS employees (
  id SERIAL PRIMARY KEY,
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
	('Guy', 'Gilbert', 'R', 'Production Technician', 7, 16, '1998-07-31', 12500.0000, 166),
	('Kevin', 'Brown', 'F', 'Marketing Assistant', 4, 6, '1999-02-26', 13500.0000, 102),
	('Roberto', 'Tamburello', 'N', 'Engineering Manager', 1, 12, '1999-12-12', 43300.0000, 193),
	('Rob', 'Walters', 'M', 'Tool Designer', 2, 3, '2000-01-05', 29800.0000, 155),
	('Thierry', 'D`Hers', 'B', 'Tool Designer', 5, 19, '2000-01-11', 25000.0000, 40),
	('David', 'Bradley', 'M', 'Marketing Manager', 5, 109, '2000-01-20', 37500.0000, 199),
	('Ruth', 'Ellerbrock', 'Ann', 'Production Technician', 7, 185, '2000-02-06', 13500.0000, 108),
	('Gail', 'Erickson', 'A', 'Design Engineer', 1, 3, '2000-02-06', 32700.0000, 22),
	('Barry', 'Johnson', 'K', 'Production Technician',  7, 185, '2000-02-07', 13500.0000, 285),
	('Jossef', 'Goldberg', 'H', 'Design Engineer', 1, 3, '2000-02-24', 32700.0000, 214),
	('Terri', 'Duffy', 'Lee', 'Vice President of Engineering', 1, 109, '2000-03-03', 63500.0000, 209),
	('Sidney', 'Higa', 'M', 'Production Technician', 7, 185, '2000-03-05', 13500.0000, 73),
	('Taylor', 'Maxwell', 'R', 'Production Supervisor', 7, 21, '2000-03-11', 25000.0000, 82),
	('Jeffrey', 'Ford', 'L', 'Production Technician', 7, 185, '2000-03-23', 13500.0000, 156),
	('Jo', 'Brown', 'A', 'Production Supervisor', 7, 21, '2000-03-30', 25000.0000, 70),
	('Doris', 'Hartwig', 'M', 'Production Technician', 7, 185, '2000-04-11', 13500.0000, 144),
	('John', 'Campbell', 'T', 'Production Supervisor', 7, 21, '2000-04-18', 25000.0000, 245),
	('Diane', 'Glimp', 'R', 'Production Technician', 7, 185, '2000-04-29', 13500.0000, 184),
	('Steven', 'Selikoff', 'T', 'Production Technician', 7, 173, '2001-01-02', 9500.0000, 104);
	
	
-- Output
10
Jossef H Goldberg
2000-02-24 00:00:00
11
Terri Lee Duffy
2000-03-03 00:00:00
12
Sidney M Higa
2000-03-05 00:00:00
13
Taylor R Maxwell
2000-03-11 00:00:00
14
Jeffrey L Ford
2000-03-23 00:00:00
15
Jo A Brown
2000-03-30 00:00:00
16
Doris M Hartwig
2000-04-11 00:00:00
17
John T Campbell
2000-04-18 00:00:00
18
Diane R Glimp
2000-04-29 00:00:00
19
Steven T Selikoff
2001-01-02 00:00:00