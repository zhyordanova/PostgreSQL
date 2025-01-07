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
	('Guy', 'Gilbert', 'R', 'Production Technician', 7, 16, '1998-07-31', 12500.0000, 166),
	('Kevin', 'Brown', 'F', 'Marketing Assistant', 4, 6, '1999-02-26', 13500.0000, 102),
	('Roberto', 'Tamburello', 'N', 'Engineering Manager', 1, 12, '1999-12-12', 43300.0000, 193),
	('Rob', 'Walters', 'M', 'Tool Designer', 2, 3, '2000-01-05', 29800.0000, 155),
	('Thierry', 'D`Hers', 'B', 'Tool Designer', 5, 19, '2000-01-11', 25000.0000, 40),
	('David', 'Bradley', 'M', 'Marketing Manager', 5, 109, '2000-01-20', 37500.0000, 199),
	('JoLynn', 'Dobney', 'M', 'Production Supervisor', 7, 21, NULL, 25000.0000, 275),
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
	('Steven', 'Selikoff', 'T', 'Production Technician', 7, 173, '2001-01-02', 9500.0000, 104),
	('Peter', 'Krebs', 'J', 'Production Control Manager', 8, 148, '2001-01-02', 24500.0000, 11),
	('Stuart', 'Munson', 'V', 'Production Technician', 7, 197, '2001-01-03', 10000.0000, 36),
	('Greg', 'Alderson', 'F', 'Production Technician', 7, 197, NULL, 10000.0000, 18),
	('David', 'Johnson', NULL, 'Production Technician', 7, 184, '2001-01-03', 9500.0000, 142),
	('Zheng', 'Mu', 'W', 'Production Supervisor', 7, 21, '2001-01-04', 25000.0000, 278),
	('Ivo', 'Salmre', 'William', 'Production Technician', 7, 108, '2001-01-05', 14000.0000, 165),
	('Paul', 'Komosinski', 'B', 'Production Technician', 7, 87, '2001-01-05', 15000.0000, 32),
	('Ashvini', 'Sharma', 'R', 'Network Administrator', 11, 150, '2001-01-05', 32500.0000, 133),
	('Kendall', 'Keil', 'C', 'Production Technician', 7, 14, '2001-01-06', 11000.0000, 257),
	('Paula', 'Barreto de Mattos', 'M', 'Human Resources Manager', 9, 140, '2001-01-07', 27100.0000, 2),
	('Alejandro', 'McGuel', 'E', 'Production Technician', 7, 210, '2001-01-07', 15000.0000, 274),
	('Garrett', 'Young', 'R', 'Production Technician', 7, 184, '2001-01-08', 9500.0000, 283),
	('Jian Shuo', 'Wang', 'J', 'Production Technician', 7, 135, '2001-01-08', 9500.0000, 160),
	('Susan', 'Eaton', 'W', 'Stocker', 15, 85, '2001-01-08', 9000.0000, 204),
	('Vamsi', 'Kuppa', NULL, 'Shipping and Receiving Clerk', 15, 85, '2001-01-08', 9500.0000, 51),
	('Alice', 'Ciccu', 'O', 'Production Technician', 7, 38, '2001-01-08', 11000.0000, 284),
	('Simon', 'Rapier', 'D', 'Production Technician', 7, 7, NULL, 12500.0000, 64),
	('Jinghao', 'Liu', 'K', 'Production Supervisor', 7, 21, '2001-01-09', 25000.0000, 55),
	('Michael', 'Hines', 'T', 'Production Technician', 7, 182, '2001-01-10', 14000.0000, 168),
	('Yvonne', 'McKay', 'S', 'Production Technician', 7, 159, '2001-01-10', 10000.0000, 107),
	('Peng', 'Wu', 'J', 'Quality Assurance Supervisor', 13, 200, '2001-01-10', 21600.0000, 39),
	('Jean', 'Trenary', 'E', 'Information Services Manager', 11, 109, '2001-01-12', 50500.0000, 194),
	('Russell', 'Hunter', 'F', 'Production Technician', 7, 74, '2001-01-13', 11000.0000, 258),
	('A. Scott', 'Wright', 'P', 'Master Scheduler', 8, 148, '2001-01-13', 23600.0000, 172),
	('Fred', 'Northup', 'T', 'Production Technician', 7, 210, '2001-01-13', 15000.0000, 282),
	('Sariya', 'Harnpadoungsataya', 'E', 'Marketing Specialist', 4, 6, '2001-01-13', 14400.0000, 106),
	('Willis', 'Johnson', 'T', 'Recruiter', 9, 30, NULL, 18300.0000, 99),
	('Jun', 'Cao', 'T', 'Production Technician', 7, 38, '2001-01-15', 11000.0000, 197),
	('Christian', 'Kleinerman', 'E', 'Maintenance Supervisor', 14, 218, '2001-01-15', 20400.0000, 118),
	('Susan', 'Metters', 'A', 'Production Technician', 7, 184, '2001-01-15', 9500.0000, 224),
	('Reuben', 'D`sa', 'H', 'Production Supervisor', 7, 21, '2001-01-16', 25000.0000, 249),
	('Kirk', 'Koenigsbauer', 'J', 'Production Technician', 7, 123, '2001-01-16', 10000.0000, 250),
	('David', 'Ortiz', 'J', 'Production Technician', 7, 18, '2001-01-16', 12500.0000, 267),
	('Tengiz', 'Kharatishvili', NULL, 'Control Specialist', 12, 90, '2001-01-17', 16800.0000, 129),
	('Hanying', 'Feng', 'P', 'Production Technician', 7, 143, '2001-01-17', 14000.0000, 182),
	('Kevin', 'Liu', 'H', 'Production Technician', 7, 210, '2001-01-18', 15000.0000, 259),
	('Annik', 'Stahl', 'O', 'Production Technician', 7, 16, '2001-01-18', 12500.0000, 262),
	('Suroor', 'Fatima', 'R', 'Production Technician', 7, 38, '2001-01-18', 11000.0000, 86),
	('Deborah', 'Poe', 'E', 'Accounts Receivable Specialist', 10, 139, '2001-01-19', 19000.0000, 103),
	('Jim', 'Scardelis', 'H', 'Production Technician', 7, 74, '2001-01-20', 11000.0000, 88),
	('Carole', 'Poland', 'M', 'Production Technician', 7, 173, NULL, 9500.0000, 72),
	('George', 'Li', 'Z', 'Production Technician', 7, 184, '2001-01-22', 9500.0000, 58),
	('Gary', 'Yukish', 'W', 'Production Technician', 7, 87, '2001-01-23', 15000.0000, 80),
	('Cristian', 'Petculescu', 'K', 'Production Supervisor', 7, 21, '2001-01-23', 25000.0000, 276),
	('Raymond', 'Sam', 'K', 'Production Technician', 7, 143, '2001-01-24', 14000.0000, 75),
	('Janaina', 'Bueno', 'Barreiro Gambaro', 'Application Specialist', 11, 42, '2001-01-24', 27400.0000, 131),
	('Bob', 'Hohman', NULL, 'Production Technician', 7, 14, '2001-01-25', 11000.0000, 44);
	

-- Output
24
David
Johnson
35
Vamsi
Kuppa
54
Tengiz
Kharatishvili