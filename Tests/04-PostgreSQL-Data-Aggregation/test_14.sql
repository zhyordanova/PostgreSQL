-- Solution skeleton
CREATE TABLE IF NOT EXISTS employees (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL, 
  job_title VARCHAR(80) NOT NULL,
  department_id INT NOT NULL,
  manager_id INT,
  hire_date DATE DEFAULT NULL,
  salary NUMERIC(15, 3),
  address_id INT NOT NULL,
  CONSTRAINT employees_department_id_check CHECK (department_id > 0),
  CONSTRAINT employees_manager_id_check CHECK (manager_id > 0),
  CONSTRAINT employees_salary_check CHECK (salary >= 0),
  CONSTRAINT employees_address_id_check CHECK (address_id > 0)
);


INSERT INTO employees (
	first_name, last_name, job_title, department_id, manager_id, hire_date, salary, address_id
) 
VALUES
	('Guy', 'Gilbert', 'Production Technician', 7, 16, '1998-07-31 00:00:00.000000', 12500.0000, 166),
	('Kevin', 'Brown', 'Marketing Assistant', 4, 6, '1999-02-26 00:00:00.000000', 13500.0000, 102),
	('Roberto', 'Tamburello', 'Engineering Manager', 1, 12, '1999-12-12 00:00:00.000000', 43300.0000, 193),
	('Rob', 'Walters', 'Senior Tool Designer', 2, 3, '2000-01-05 00:00:00.000000', 29800.0000, 155),
	('Thierry', 'D`Hers', 'Tool Designer', 2, 263, '2003-01-11 00:00:00.000000', 25000.0000, 40),
	('David', 'Bradley', 'Marketing Manager', 5, 109, '2000-01-20 00:00:00.000000', 37500.0000, 199),
	('JoLynn', 'Dobney', 'Production Supervisor', 7, 21, '2000-01-26 00:00:00.000000', 25000.0000, 275),
	('Ruth', 'Ellerbrock', 'Production Technician', 7, 185, '2015-02-06 00:00:00.000000', 13500.0000, 108),
	('Gail', 'Erickson', 'Design Engineer', 1, 3, '2000-02-06 00:00:00.000000', 32700.0000, 22),
	('Barry', 'Johnson', 'Production Technician', 7, 185, '2000-02-07 00:00:00.000000', 13500.0000, 285),
	('Jossef', 'Goldberg', 'Design Engineer', 1, 3, '2000-02-24 00:00:00.000000', 32700.0000, 214),
	('Terri', 'Duffy', 'Vice President of Engineering', 1, 109, '2000-03-03 00:00:00.000000', 63500.0000, 209),
	('Sidney', 'Higa', 'Production Technician', 7, NULL, '2000-03-05 00:00:00.000000', 13500.0000, 73),
	('Taylor', 'Maxwell', 'Production Supervisor', 7, 21, '2010-03-11 00:00:00.000000', 25000.0000, 82),
	('Jeffrey', 'Ford', 'Production Technician', 7, 185, '2000-03-23 00:00:00.000000', 13500.0000, 156),
	('Jo', 'Brown', 'Production Supervisor', 7, 21, '2000-03-30 00:00:00.000000', 25000.0000, 70),
	('Doris', 'Hartwig', 'Production Technician', 7, 185, '2019-04-11 00:00:00.000000', 13500.0000, 144),
	('John', 'Campbell', 'Production Supervisor', 7, 21, '2000-04-18 00:00:00.000000', 25000.0000, 245),
	('Diane', 'Glimp', 'Production Technician', 7, 185, '2020-04-29 00:00:00.000000', 13500.0000, 184),
	('Steven', 'Selikoff', 'Production Technician', 7, 173, '2001-01-02 00:00:00.000000', 9500.0000, 104),
	('Peter', 'Krebs', 'Production Control Manager', 8, 148, '2001-01-02 00:00:00.000000', 24500.0000, 11),
	('Stuart', 'Munson', 'Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 10000.0000, 36),
	('Greg', 'Alderson', 'Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 10000.0000, 18),
	('David', 'Johnson', 'Production Technician', 7, 184, '2001-01-03 00:00:00.000000', 9500.0000, 142),
	('Zheng', 'Mu', 'Production Supervisor', 7, 21, '2001-01-04 00:00:00.000000', 25000.0000, 278),
	('Ivo', 'Salmre', 'Production Technician', 7, 108, '2001-01-05 00:00:00.000000', 14000.0000, 165),
	('Paul', 'Komosinski', 'Production Technician', 7, 87, '2001-01-05 00:00:00.000000', 15000.0000, 32),
	('Ashvini', 'Sharma', 'Network Administrator', 11, 150, '2001-01-05 00:00:00.000000', 32500.0000, 133),
	('Kendall', 'Keil', 'Production Technician', 7, 14, '2001-01-06 00:00:00.000000', 11000.0000, 257),
	('Paula', 'Barreto de Mattos', 'Human Resources Manager', 9, 140, '2001-01-07 00:00:00.000000', 27100.0000, 2),
	('Alejandro', 'McGuel', 'Production Technician', 7, 210, '2001-01-07 00:00:00.000000', 15000.0000, 274),
	('Garrett', 'Young', 'Production Technician', 7, 184, '2001-01-08 00:00:00.000000', 9500.0000, 283),
	('Jian Shuo', 'Wang', 'Production Technician', 7, 135, '2001-01-08 00:00:00.000000', 9500.0000, 160),
	('Susan', 'Eaton', 'Stocker', 15, 85, '2001-01-08 00:00:00.000000', 9000.0000, 204),
	('Vamsi', 'Kuppa', 'Shipping and Receiving Clerk', 15, 85, '2001-01-08 00:00:00.000000', 9500.0000, 51),
	('Alice', 'Ciccu', 'Production Technician', 7, 38, '2001-01-08 00:00:00.000000', 11000.0000, 284),
	('Simon', 'Rapier', 'Production Technician', 7, 7, '2001-01-09 00:00:00.000000', 12500.0000, 64),
	('Jinghao', 'Liu', 'Production Supervisor', 7, 21, '2011-01-09 00:00:00.000000', 25000.0000, 55),
	('Michael', 'Hines', 'Production Technician', 7, 182, '2001-01-10 00:00:00.000000', 14000.0000, 168),
	('Yvonne', 'McKay', 'Production Technician', 7, NULL, '2012-01-10 00:00:00.000000', 10000.0000, 107),
	('Peng', 'Wu', 'Quality Assurance Supervisor', 13, 200, '2001-01-10 00:00:00.000000', 21600.0000, 39),
	('Jean', 'Trenary', 'Information Services Manager', 11, 109, '2001-01-12 00:00:00.000000', 50500.0000, 194),
	('Russell', 'Hunter', 'Production Technician', 7, 74, '2013-01-13 00:00:00.000000', 11000.0000, 258),
	('A. Scott', 'Wright', 'Master Scheduler', 8, 148, '2001-01-13 00:00:00.000000', 23600.0000, 172),
	('Fred', 'Northup', 'Production Technician', 7, 210, '2001-01-13 00:00:00.000000', 15000.0000, 282),
	('Sariya', 'Harnpadoungsataya', 'Marketing Specialist', 4, 6, '2001-01-13 00:00:00.000000', 14400.0000, 106),
	('Willis', 'Johnson', 'Recruiter', 9, 30, '2014-01-14 00:00:00.000000', 18300.0000, 99),
	('Jun', 'Cao', 'Production Technician', 7, 38, '2001-01-15 00:00:00.000000', 11000.0000, 197),
	('Christian', 'Kleinerman', 'Maintenance Supervisor', 14, 218, '2001-01-15 00:00:00.000000', 20400.0000, 118),
	('Susan', 'Metters', 'Production Technician', 7, 184, '2001-01-15 00:00:00.000000', 9500.0000, 224),
	('Reuben', 'D`sa', 'Production Supervisor', 7, 21, '2015-01-16 00:00:00.000000', 25000.0000, 249),
	('Kirk', 'Koenigsbauer', 'Production Technician', 7, 123, '2001-01-16 00:00:00.000000', 10000.0000, 250),
	('David', 'Ortiz', 'Production Technician', 7, 18, '2001-01-16 00:00:00.000000', 12500.0000, 267),
	('Tengiz', 'Kharatishvili', 'Control Specialist', 12, 90, '2001-01-17 00:00:00.000000', 16800.0000, 129),
	('Hanying', 'Feng', 'Production Technician', 7, 143, '2001-01-17 00:00:00.000000', 14000.0000, 182),
	('Kevin', 'Liu', 'Production Technician', 7, 210, '2016-01-18 00:00:00.000000', 15000.0000, 259),
	('Annik', 'Stahl', 'Production Technician', 7, 16, '2001-01-18 00:00:00.000000', 12500.0000, 262),
	('Suroor', 'Fatima', 'Production Technician', 7, 38, '2017-01-18 00:00:00.000000', 11000.0000, 86),
	('Deborah', 'Poe', 'Accounts Receivable Specialist', 10, 139, '2018-01-19 00:00:00.000000', 19000.0000, 103),
	('Jim', 'Scardelis', 'Production Technician', 7, 74, '2001-01-20 00:00:00.000000', 11000.0000, 88),
	('Carole', 'Poland', 'Production Technician', 7, 173, '2001-01-20 00:00:00.000000', 9500.0000, 72),
	('George', 'Li', 'Production Technician', 7, 184, '2019-01-22 00:00:00.000000', 9500.0000, 58),
	('Gary', 'Yukish', 'Production Technician', 7, 87, '2001-01-23 00:00:00.000000', 15000.0000, 80),
	('Cristian', 'Petculescu', 'Production Supervisor', 7, 21, '2001-01-23 00:00:00.000000', 25000.0000, 276),
	('Raymond', 'Sam', 'Production Technician', 7, 143, '2001-01-24 00:00:00.000000', 14000.0000, 75),
	('Janaina', 'Bueno', 'Application Specialist', 11, 42, '2020-01-24 00:00:00.000000', 27400.0000, 131),
	('Bob', 'Hohman', 'Production Technician', 7, 14, '2001-01-25 00:00:00.000000', 11000.0000, 44),
	('Shammi', 'Mohamed','Production Technician', 7, 210, '2001-01-25 00:00:00.000000', 15000.0000, 4),
	('Linda', 'Moschell','Production Technician', 7, 38, '2001-01-26 00:00:00.000000', 11000.0000, 5),
	('Mindy', 'Martin', 'Benefits Specialist', 9, 30, '2021-01-26 00:00:00.000000', 16600.0000, 171),
	('Wendy', 'Kahn', 'Finance Manager', 10, 140, '2001-01-26 00:00:00.000000', 43300.0000, 232),
	('Kim', 'Ralls', 'Stocker', 15, 85, '2023-01-27 00:00:00.000000', 9000.0000, 42),
	('Sandra', 'Reategui Alayo', 'Production Technician', 7, 135, '2001-01-27 00:00:00.000000', 9500.0000, 255),
	('Kok-Ho', 'Loh', 'Production Supervisor', 7, 21, '2020-01-28 00:00:00.000000', 25000.0000, 10),
	('Douglas', 'Hite', 'Production Technician', 7, 159, '2021-01-28 00:00:00.000000', 10000.0000, 57),
	('James', 'Kramer', 'Production Technician', 7, 7, '2001-01-28 00:00:00.000000', 12500.0000, 162),
	('Sean', 'Alexander', 'Quality Assurance Technician', 13, 41, '2001-01-29 00:00:00.000000', 10600.0000, 210),
	('Nitin', 'Mirchandani', 'Production Technician', 7, 182, '2022-01-29 00:00:00.000000', 14000.0000, 231),
	('Diane', 'Margheim', 'Research and Development Engineer', 6, 158, '2001-01-30 00:00:00.000000', 40900.0000, 111),
	('Rebecca', 'Laszlo', 'Production Technician', 7, 16, '2001-01-30 00:00:00.000000', 12500.0000, 6),
	('Rajesh', 'Patel', 'Production Technician', 7, NULL, '2011-02-01 00:00:00.000000', 15000.0000, 81),
	('Vidur', 'Luthra', 'Recruiter', 9, 30, '2001-02-02 00:00:00.000000', 18300.0000, 176),
	('John', 'Evans', 'Production Technician', 7, 38, '2012-02-02 00:00:00.000000', 11000.0000, 253),
	('Nancy', 'Anderson', 'Production Technician', 7, 7, '2013-02-03 00:00:00.000000', 12500.0000, 227),
	('Pilar', 'Ackerman', 'Shipping and Receiving Supervisor', 15, 21, '2001-02-03 00:00:00.000000', 19200.0000, 269),
	('David', 'Yalovsky', 'Production Technician', 7, 184, '2001-02-03 00:00:00.000000', 9500.0000, 241),
	('David', 'Hamilton', 'Production Supervisor', 7, 21, '2015-02-04 00:00:00.000000', 25000.0000, 150),
	('Laura', 'Steele', 'Production Technician', 7, 123, '2016-02-04 00:00:00.000000', 10000.0000, 62),
	('Margie', 'Shoop', 'Production Technician', 7, 16, '2017-02-05 00:00:00.000000', 12500.0000, 92),
	('Zainal', 'Arifin', 'Document Control Manager', 12, 200, '2001-02-05 00:00:00.000000', 17800.0000, 128),
	('Lorraine', 'Nay', 'Production Technician', 7, 210, '2001-02-05 00:00:00.000000', 15000.0000, 94),
	('Fadi', 'Fakhouri', 'Production Technician', 7, 143, '2018-02-05 00:00:00.000000', 14000.0000, 281),
	('Ryan', 'Cornelsen', 'Production Technician', 7, 51, '2001-02-06 00:00:00.000000', 15000.0000, 228),
	('Candy', 'Spoon', 'Accounts Receivable Specialist', 10, 139, '2001-02-07 00:00:00.000000', 19000.0000, 122),
	('Nuan', 'Yu', 'Production Technician', 7, 74, '2019-02-07 00:00:00.000000', 11000.0000, 12),
	('William', 'Vong', 'Scheduling Assistant', 8, 44, '2020-02-08 00:00:00.000000', 16000.0000, 35),
	('Bjorn', 'Rettig', 'Production Technician', 7, 173, '2001-02-08 00:00:00.000000', 9500.0000, 268),
	('Scott', 'Gode', 'Production Technician', 7, 197, '2001-02-09 00:00:00.000000', 10000.0000, 256),
	('Michael', 'Rothkugel', 'Production Technician', 7, 87, '2022-02-11 00:00:00.000000', 15000.0000, 93),
	('Lane', 'Sacksteder', 'Production Technician', 7, 143, '2001-02-12 00:00:00.000000', 14000.0000, 239);
	
-- Input
SELECT 
	first_name,
	job_title,
	salary 
FROM 
	public.employees
ORDER BY 
	"id";
	
-- Output
Guy
Senior Production Technician
15000.000
Kevin
Senior Marketing Assistant
16000.000
Roberto
Senior Engineering Manager
45800.000
Rob
Senior Senior Tool Designer
32300.000
Thierry
Senior Tool Designer
27500.000
David
Senior Marketing Manager
40000.000
JoLynn
Senior Production Supervisor
27500.000
Ruth
Mid-Production Technician
15000.000
Gail
Senior Design Engineer
35200.000
Barry
Senior Production Technician
16000.000
Jossef
Senior Design Engineer
35200.000
Terri
Senior Vice President of Engineering
66000.000
Sidney
Senior Production Technician
16000.000
Taylor
Senior Production Supervisor
27500.000
Jeffrey
Senior Production Technician
16000.000
Jo
Senior Production Supervisor
27500.000
Doris
Mid-Production Technician
15000.000
John
Senior Production Supervisor
27500.000
Diane
Production Technician
13500.000
Steven
Senior Production Technician
12000.000
Peter
Senior Production Control Manager
27000.000
Stuart
Senior Production Technician
12500.000
Greg
Senior Production Technician
12500.000
David
Senior Production Technician
12000.000
Zheng
Senior Production Supervisor
27500.000
Ivo
Senior Production Technician
16500.000
Paul
Senior Production Technician
17500.000
Ashvini
Senior Network Administrator
35000.000
Kendall
Senior Production Technician
13500.000
Paula
Senior Human Resources Manager
29600.000
Alejandro
Senior Production Technician
17500.000
Garrett
Senior Production Technician
12000.000
Jian Shuo
Senior Production Technician
12000.000
Susan
Senior Stocker
11500.000
Vamsi
Senior Shipping and Receiving Clerk
12000.000
Alice
Senior Production Technician
13500.000
Simon
Senior Production Technician
15000.000
Jinghao
Senior Production Supervisor
27500.000
Michael
Senior Production Technician
16500.000
Yvonne
Senior Production Technician
12500.000
Peng
Senior Quality Assurance Supervisor
24100.000
Jean
Senior Information Services Manager
53000.000
Russell
Senior Production Technician
13500.000
A. Scott
Senior Master Scheduler
26100.000
Fred
Senior Production Technician
17500.000
Sariya
Senior Marketing Specialist
16900.000
Willis
Senior Recruiter
20800.000
Jun
Senior Production Technician
13500.000
Christian
Senior Maintenance Supervisor
22900.000
Susan
Senior Production Technician
12000.000
Reuben
Mid-Production Supervisor
26500.000
Kirk
Senior Production Technician
12500.000
David
Senior Production Technician
15000.000
Tengiz
Senior Control Specialist
19300.000
Hanying
Senior Production Technician
16500.000
Kevin
Mid-Production Technician
16500.000
Annik
Senior Production Technician
15000.000
Suroor
Mid-Production Technician
12500.000
Deborah
Mid-Accounts Receivable Specialist
20500.000
Jim
Senior Production Technician
13500.000
Carole
Senior Production Technician
12000.000
George
Mid-Production Technician
11000.000
Gary
Senior Production Technician
17500.000
Cristian
Senior Production Supervisor
27500.000
Raymond
Senior Production Technician
16500.000
Janaina
Mid-Application Specialist
28900.000
Bob
Senior Production Technician
13500.000
Shammi
Senior Production Technician
17500.000
Linda
Senior Production Technician
13500.000
Mindy
Benefits Specialist
16600.000
Wendy
Senior Finance Manager
45800.000
Kim
Stocker
9000.000
Sandra
Senior Production Technician
12000.000
Kok-Ho
Mid-Production Supervisor
26500.000
Douglas
Production Technician
10000.000
James
Senior Production Technician
15000.000
Sean
Senior Quality Assurance Technician
13100.000
Nitin
Production Technician
14000.000
Diane
Senior Research and Development Engineer
43400.000
Rebecca
Senior Production Technician
15000.000
Rajesh
Senior Production Technician
17500.000
Vidur
Senior Recruiter
20800.000
John
Senior Production Technician
13500.000
Nancy
Senior Production Technician
15000.000
Pilar
Senior Shipping and Receiving Supervisor
21700.000
David
Senior Production Technician
12000.000
David
Mid-Production Supervisor
26500.000
Laura
Mid-Production Technician
11500.000
Margie
Mid-Production Technician
14000.000
Zainal
Senior Document Control Manager
20300.000
Lorraine
Senior Production Technician
17500.000
Fadi
Mid-Production Technician
15500.000
Ryan
Senior Production Technician
17500.000
Candy
Senior Accounts Receivable Specialist
21500.000
Nuan
Mid-Production Technician
12500.000
William
Mid-Scheduling Assistant
17500.000
Bjorn
Senior Production Technician
12000.000
Scott
Senior Production Technician
12500.000
Michael
Production Technician
15000.000
Lane
Senior Production Technician
16500.000