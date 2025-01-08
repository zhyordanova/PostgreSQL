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
	('Guy', 'Gilbert', 'Senior Production Technician', 7, 16, '1998-07-31 00:00:00.000000', 15000.000, 166),
	('Kevin', 'Brown', 'Senior Marketing Assistant', 4, 6, '1999-02-26 00:00:00.000000', 16000.000, 102),
	('Roberto', 'Tamburello', 'Senior Engineering Manager', 1, 12, '1999-12-12 00:00:00.000000', 45800.000, 193),
	('Rob', 'Walters', 'Senior Senior Tool Designer', 2, 3, '2000-01-05 00:00:00.000000', 32300.000, 155),
	('Thierry', 'D`Hers', 'Senior Tool Designer', 2, 263, '2003-01-11 00:00:00.000000', 27500.000, 40),
	('David', 'Bradley', 'Senior Marketing Manager', 5, 109, '2000-01-20 00:00:00.000000', 40000.000, 199),
	('JoLynn', 'Dobney', 'Senior Production Supervisor', 7, 21, '2000-01-26 00:00:00.000000', 27500.000, 275),
	('Ruth', 'Ellerbrock', 'Mid-Production Technician', 7, 185, '2015-02-06 00:00:00.000000', 15000.000, 108),
	('Gail', 'Erickson', 'Senior Design Engineer', 1, 3, '2000-02-06 00:00:00.000000', 35200.000, 22),
	('Barry', 'Johnson', 'Senior Production Technician', 7, 185, '2000-02-07 00:00:00.000000', 16000.000, 285),
	('Jossef', 'Goldberg', 'Senior Design Engineer', 1, 3, '2000-02-24 00:00:00.000000', 35200.000, 214),
	('Terri', 'Duffy', 'Senior Vice President of Engineering', 1, 109, '2000-03-03 00:00:00.000000', 66000.000, 209),
	('Sidney', 'Higa', 'Senior Production Technician', 7, NULL, '2000-03-05 00:00:00.000000', 16000.000, 73),
	('Taylor', 'Maxwell', 'Senior Production Supervisor', 7, 21, '2010-03-11 00:00:00.000000', 27500.000, 82),
	('Jeffrey', 'Ford', 'Senior Production Technician', 7, 185, '2000-03-23 00:00:00.000000', 16000.000, 156),
	('Jo', 'Brown', 'Senior Production Supervisor', 7, 21, '2000-03-30 00:00:00.000000', 27500.000, 70),
	('Doris', 'Hartwig', 'Mid-Production Technician', 7, 185, '2019-04-11 00:00:00.000000', 15000.000, 144),
	('John', 'Campbell', 'Senior Production Supervisor', 7, 21, '2000-04-18 00:00:00.000000', 27500.000, 245),
	('Diane', 'Glimp', 'Production Technician', 7, 185, '2020-04-29 00:00:00.000000', 13500.000, 184),
	('Steven', 'Selikoff', 'Senior Production Technician', 7, 173, '2001-01-02 00:00:00.000000', 12000.000, 104),
	('Peter', 'Krebs', 'Senior Production Control Manager', 8, 148, '2001-01-02 00:00:00.000000', 27000.000, 11),
	('Stuart', 'Munson', 'Senior Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 12500.000, 36),
	('Greg', 'Alderson', 'Senior Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 12500.000, 18),
	('David', 'Johnson', 'Senior Production Technician', 7, 184, '2001-01-03 00:00:00.000000', 12000.000, 142),
	('Zheng', 'Mu', 'Senior Production Supervisor', 7, 21, '2001-01-04 00:00:00.000000', 27500.000, 278),
	('Ivo', 'Salmre', 'Senior Production Technician', 7, 108, '2001-01-05 00:00:00.000000', 16500.000, 165),
	('Paul', 'Komosinski', 'Senior Production Technician', 7, 87, '2001-01-05 00:00:00.000000', 17500.000, 32),
	('Ashvini', 'Sharma', 'Senior Network Administrator', 11, 150, '2001-01-05 00:00:00.000000', 35000.000, 133),
	('Kendall', 'Keil', 'Senior Production Technician', 7, 14, '2001-01-06 00:00:00.000000', 13500.000, 257),
	('Paula', 'Barreto de Mattos', 'Senior Human Resources Manager', 9, 140,'2001-01-07 00:00:00.000000', 29600.000, 2),
	('Alejandro', 'McGuel', 'Senior Production Technician', 7, 210, '2001-01-07 00:00:00.000000', 17500.000, 274),
	('Garrett', 'Young', 'Senior Production Technician', 7, 184, '2001-01-08 00:00:00.000000', 12000.000, 283),
	('Jian Shuo', 'Wang', 'Senior Production Technician', 7, 135, '2001-01-08 00:00:00.000000', 12000.000, 160),
	('Susan', 'Eaton', 'Senior Stocker', 15, 85, '2001-01-08 00:00:00.000000', 11500.000, 204),
	('Vamsi', 'Kuppa', 'Senior Shipping and Receiving Clerk', 15, 85, '2001-01-08 00:00:00.000000', 12000.000, 51),
	('Alice', 'Ciccu', 'Senior Production Technician', 7, 38, '2001-01-08 00:00:00.000000', 13500.000, 284),
	('Simon', 'Rapier', 'Senior Production Technician', 7, 7, '2001-01-09 00:00:00.000000', 15000.000, 64),
	('Jinghao', 'Liu', 'Senior Production Supervisor', 7, 21, '2011-01-09 00:00:00.000000', 27500.000, 55),
	('Michael', 'Hines', 'Senior Production Technician', 7, 182, '2001-01-10 00:00:00.000000', 16500.000, 168),
	('Yvonne', 'McKay', 'Senior Production Technician', 7, NULL, '2012-01-10 00:00:00.000000', 12500.000, 107),
	('Peng', 'Wu', 'Senior Quality Assurance Supervisor', 13, 200, '2001-01-10 00:00:00.000000', 24100.000, 39),
	('Jean', 'Trenary', 'Senior Information Services Manager', 11, 109, '2001-01-12 00:00:00.000000', 53000.000, 194),
	('Russell', 'Hunter', 'Senior Production Technician', 7, 74, '2013-01-13 00:00:00.000000', 13500.000, 258),
	('A. Scott', 'Wright', 'Senior Master Scheduler', 8, 148, '2001-01-13 00:00:00.000000', 26100.000, 172),
	('Fred', 'Northup', 'Senior Production Technician', 7, 210, '2001-01-13 00:00:00.000000', 17500.000, 282),
	('Sariya', 'Harnpadoungsataya', 'Senior Marketing Specialist', 4, 6, '2001-01-13 00:00:00.000000', 16900.000, 106),
	('Willis', 'Johnson', 'Senior Recruiter', 9, 30, '2014-01-14 00:00:00.000000', 20800.000, 99),
	('Jun', 'Cao', 'Senior Production Technician', 7, 38, '2001-01-15 00:00:00.000000', 13500.000, 197),
	('Christian', 'Kleinerman', 'Senior Maintenance Supervisor', 14, 218, '2001-01-15 00:00:00.000000', 22900.000, 118),
	('Susan', 'Metters', 'Senior Production Technician', 7, 184, '2001-01-15 00:00:00.000000', 12000.000, 224),
	('Reuben', 'D`sa', 'Mid-Production Supervisor', 7, 21, '2015-01-16 00:00:00.000000', 26500.000, 249),
	('Kirk', 'Koenigsbauer', 'Senior Production Technician', 7, 123, '2001-01-16 00:00:00.000000', 12500.000, 250),
	('David', 'Ortiz', 'Senior Production Technician', 7, 18, '2001-01-16 00:00:00.000000', 15000.000, 267),
	('Tengiz', 'Kharatishvili', 'Senior Control Specialist', 12, 90, '2001-01-17 00:00:00.000000', 19300.000, 129),
	('Hanying', 'Feng', 'Senior Production Technician', 7, 143, '2001-01-17 00:00:00.000000', 16500.000, 182),
	('Kevin', 'Liu', 'Mid-Production Technician', 7,210, '2016-01-18 00:00:00.000000', 16500.000, 259),
	('Annik', 'Stahl', 'Senior Production Technician', 7, 16, '2001-01-18 00:00:00.000000', 15000.000, 262),
	('Suroor', 'Fatima', 'Mid-Production Technician', 7, 38, '2017-01-18 00:00:00.000000', 12500.000, 86),
	('Jim', 'Scardelis', 'Senior Production Technician', 7, 74, '2001-01-20 00:00:00.000000', 13500.000, 88),
	('Carole', 'Poland', 'Senior Production Technician', 7, 173, '2001-01-20 00:00:00.000000', 12000.000, 72),
	('George', 'Li', 'Mid-Production Technician', 7, 184, '2019-01-22 00:00:00.000000', 11000.000, 58),
	('Gary', 'Yukish', 'Senior Production Technician', 7, 87, '2001-01-23 00:00:00.000000', 17500.000, 80),
	('Cristian', 'Petculescu', 'Senior Production Supervisor', 7, 21, '2001-01-23 00:00:00.000000', 27500.000, 276),
	('Raymond', 'Sam', 'Senior Production Technician', 7, 143, '2001-01-24 00:00:00.000000', 16500.000, 75),
	('Janaina', 'Bueno', 'Mid-Application Specialist', 11, 42, '2020-01-24 00:00:00.000000', 28900.000, 131),
	('Bob', 'Hohman', 'Senior Production Technician', 7, 14, '2001-01-25 00:00:00.000000', 13500.000, 44),
	('Shammi', 'Mohamed', 'Senior Production Technician', 7, 210, '2001-01-25 00:00:00.000000', 17500.000, 4),
	('Linda', 'Moschell', 'Senior Production Technician', 7, 38, '2001-01-26 00:00:00.000000', 13500.000, 5),
	('Mindy', 'Martin', 'Benefits Specialist', 9, 30, '2021-01-26 00:00:00.000000', 16600.000, 171),
	('Wendy', 'Kahn', 'Senior Finance Manager', 10, 140, '2001-01-26 00:00:00.000000', 45800.000, 232),
	('Kim', 'Ralls', 'Stocker', 15, 85, '2023-01-27 00:00:00.000000', 9000.000, 42),
	('Sandra', 'Reategui Alayo', 'Senior Production Technician',7, 135, '2001-01-27 00:00:00.000000', 12000.000, 255),
	('Kok-Ho', 'Loh', 'Mid-Production Supervisor',7, 21, '2020-01-28 00:00:00.000000', 26500.000, 10),
	('Douglas', 'Hite', 'Production Technician',7, 159, '2021-01-28 00:00:00.000000', 10000.000, 57),
	('James', 'Kramer', 'Senior Production Technician',7, 7, '2001-01-28 00:00:00.000000', 15000.000, 162),
	('Sean', 'Alexander', 'Senior Quality Assurance Technician',13, 41, '2001-01-29 00:00:00.000000', 13100.000, 210),
	('Nitin', 'Mirchandani', 'Production Technician',7, 182, '2022-01-29 00:00:00.000000', 14000.000, 231),
	('Diane', 'Margheim', 'Senior Research and Development Engineer',6, 158, '2001-01-30 00:00:00.000000', 43400.000, 111),
	('Rebecca', 'Laszlo', 'Senior Production Technician', 7, 16, '2001-01-30 00:00:00.000000', 15000.000, 6),
	('Rajesh', 'Patel', 'Senior Production Technician', 7, NULL, '2011-02-01 00:00:00.000000', 17500.000, 81),
	('Vidur', 'Luthra', 'Senior Recruiter', 9, 30, '2001-02-02 00:00:00.000000', 20800.000, 176),
	('John', 'Evans', 'Senior Production Technician', 7, 38, '2012-02-02 00:00:00.000000', 13500.000, 253),
	('Nancy', 'Anderson', 'Senior Production Technician', 7, 7, '2013-02-03 00:00:00.000000', 15000.000, 227),
	('Pilar', 'Ackerman', 'Senior Shipping and Receiving Supervisor', 15, 21, '2001-02-03 00:00:00.000000', 21700.000, 269),
	('David', 'Yalovsky', 'Senior Production Technician', 7, 184, '2001-02-03 00:00:00.000000', 12000.000, 241),
	('David', 'Hamilton', 'Mid-Production Supervisor', 7, 21, '2015-02-04 00:00:00.000000', 26500.000, 150),
	('Laura', 'Steele', 'Mid-Production Technician', 7, 123, '2016-02-04 00:00:00.000000', 11500.000, 62),
	('Margie', 'Shoop', 'Mid-Production Technician', 7, 16, '2017-02-05 00:00:00.000000', 14000.000, 92),
	('Zainal', 'Arifin', 'Senior Document Control Manager', 12, 200, '2001-02-05 00:00:00.000000', 20300.000, 128),
	('Lorraine', 'Nay', 'Senior Production Technician', 7, 210, '2001-02-05 00:00:00.000000', 17500.000, 94),
	('Fadi', 'Fakhouri', 'Mid-Production Technician', 7, 143, '2018-02-05 00:00:00.000000', 15500.000, 281),
	('Ryan', 'Cornelsen', 'Senior Production Technician', 7, 51, '2001-02-06 00:00:00.000000', 17500.000, 228),
	('Candy', 'Spoon', 'Senior Accounts Receivable Specialist', 10, 139, '2001-02-07 00:00:00.000000', 21500.000, 122),
	('Nuan', 'Yu', 'Mid-Production Technician', 7, 74, '2019-02-07 00:00:00.000000', 12500.000, 12),
	('William', 'Vong', 'Mid-Scheduling Assistant', 8, 44, '2020-02-08 00:00:00.000000', 17500.000, 35),
	('Bjorn', 'Rettig', 'Senior Production Technician', 7, 173, '2001-02-08 00:00:00.000000', 12000.000, 268),
	('Scott', 'Gode', 'Senior Production Technician', 7, 197, '2001-02-09 00:00:00.000000', 12500.000, 256),
	('Michael', 'Rothkugel', 'Production Technician', 7, 87, '2022-02-11 00:00:00.000000', 15000.000, 93),
	('Lane', 'Sacksteder', 'Senior Production Technician', 7, 143, '2001-02-12 00:00:00.000000', 16500.000, 239);


-- Input
SELECT DISTINCT lower(table_name)
FROM information_schema.views
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_performance_rating';


SELECT lower(column_name)
FROM information_schema.columns
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_performance_rating';
	
	
SELECT * FROM public.view_performance_rating;

	
-- Output
Guy
Gilbert
Senior Production Technician
15000.000
7
Average-performing
Kevin
Brown
Senior Marketing Assistant
16000.000
4
Average-performing
Roberto
Tamburello
Senior Engineering Manager
45800.000
1
High-performing Senior
Rob
Walters
Senior Senior Tool Designer
32300.000
2
High-performing Senior
Thierry
D`Hers
Senior Tool Designer
27500.000
2
High-performing Senior
David
Bradley
Senior Marketing Manager
40000.000
5
High-performing Senior
JoLynn
Dobney
Senior Production Supervisor
27500.000
7
High-performing Senior
Ruth
Ellerbrock
Mid-Production Technician
15000.000
7
Average-performing
Gail
Erickson
Senior Design Engineer
35200.000
1
High-performing Senior
Barry
Johnson
Senior Production Technician
16000.000
7
Average-performing
Jossef
Goldberg
Senior Design Engineer
35200.000
1
High-performing Senior
Terri
Duffy
Senior Vice President of Engineering
66000.000
1
High-performing Senior
Sidney
Higa
Senior Production Technician
16000.000
7
Average-performing
Taylor
Maxwell
Senior Production Supervisor
27500.000
7
High-performing Senior
Jeffrey
Ford
Senior Production Technician
16000.000
7
Average-performing
Jo
Brown
Senior Production Supervisor
27500.000
7
High-performing Senior
Doris
Hartwig
Mid-Production Technician
15000.000
7
Average-performing
John
Campbell
Senior Production Supervisor
27500.000
7
High-performing Senior
Diane
Glimp
Production Technician
13500.000
7
Average-performing
Steven
Selikoff
Senior Production Technician
12000.000
7
Average-performing
Peter
Krebs
Senior Production Control Manager
27000.000
8
High-performing Senior
Stuart
Munson
Senior Production Technician
12500.000
7
Average-performing
Greg
Alderson
Senior Production Technician
12500.000
7
Average-performing
David
Johnson
Senior Production Technician
12000.000
7
Average-performing
Zheng
Mu
Senior Production Supervisor
27500.000
7
High-performing Senior
Ivo
Salmre
Senior Production Technician
16500.000
7
Average-performing
Paul
Komosinski
Senior Production Technician
17500.000
7
Average-performing
Ashvini
Sharma
Senior Network Administrator
35000.000
11
High-performing Senior
Kendall
Keil
Senior Production Technician
13500.000
7
Average-performing
Paula
Barreto de Mattos
Senior Human Resources Manager
29600.000
9
High-performing Senior
Alejandro
McGuel
Senior Production Technician
17500.000
7
Average-performing
Garrett
Young
Senior Production Technician
12000.000
7
Average-performing
Jian Shuo
Wang
Senior Production Technician
12000.000
7
Average-performing
Susan
Eaton
Senior Stocker
11500.000
15
Average-performing
Vamsi
Kuppa
Senior Shipping and Receiving Clerk
12000.000
15
Average-performing
Alice
Ciccu
Senior Production Technician
13500.000
7
Average-performing
Simon
Rapier
Senior Production Technician
15000.000
7
Average-performing
Jinghao
Liu
Senior Production Supervisor
27500.000
7
High-performing Senior
Michael
Hines
Senior Production Technician
16500.000
7
Average-performing
Yvonne
McKay
Senior Production Technician
12500.000
7
Average-performing
Peng
Wu
Senior Quality Assurance Supervisor
24100.000
13
Average-performing
Jean
Trenary
Senior Information Services Manager
53000.000
11
High-performing Senior
Russell
Hunter
Senior Production Technician
13500.000
7
Average-performing
A. Scott
Wright
Senior Master Scheduler
26100.000
8
High-performing Senior
Fred
Northup
Senior Production Technician
17500.000
7
Average-performing
Sariya
Harnpadoungsataya
Senior Marketing Specialist
16900.000
4
Average-performing
Willis
Johnson
Senior Recruiter
20800.000
9
Average-performing
Jun
Cao
Senior Production Technician
13500.000
7
Average-performing
Christian
Kleinerman
Senior Maintenance Supervisor
22900.000
14
Average-performing
Susan
Metters
Senior Production Technician
12000.000
7
Average-performing
Reuben
D`sa
Mid-Production Supervisor
26500.000
7
High-performing Employee
Kirk
Koenigsbauer
Senior Production Technician
12500.000
7
Average-performing
David
Ortiz
Senior Production Technician
15000.000
7
Average-performing
Tengiz
Kharatishvili
Senior Control Specialist
19300.000
12
Average-performing
Hanying
Feng
Senior Production Technician
16500.000
7
Average-performing
Kevin
Liu	
Mid-Production Technician
16500.000
7
Average-performing
Annik
Stahl	
Senior Production Technician
15000.000
7
Average-performing
Suroor
Fatima
Mid-Production Technician
12500.000
7
Average-performing
Jim
Scardelis
Senior Production Technician
13500.000
7
Average-performing
Carole
Poland
Senior Production Technician
12000.000
7
Average-performing
George
Li
Mid-Production Technician
11000.000
7
Average-performing
Gary
Yukish
Senior Production Technician
17500.000
7	
Average-performing
Cristian
Petculescu
Senior Production Supervisor
27500.000
7
High-performing Senior
Raymond
Sam
Senior Production Technician
16500.000
7
Average-performing
Janaina
Bueno
Mid-Application Specialist
28900.000
11
High-performing Employee
Bob
Hohman
Senior Production Technician
13500.000
7
Average-performing
Shammi
Mohamed
Senior Production Technician
17500.000
7
Average-performing
Linda
Moschell
Senior Production Technician
13500.000
7
Average-performing
Mindy
Martin
Benefits Specialist
16600.000
9
Average-performing
Wendy
Kahn
Senior Finance Manager
45800.000
10
High-performing Senior
Kim
Ralls
Stocker
9000.000
15
Average-performing
Sandra
Reategui Alayo
Senior Production Technician
12000.000
7
Average-performing
Kok-Ho
Loh
Mid-Production Supervisor
26500.000
7
High-performing Employee
Douglas
Hite
Production Technician
10000.000
7
Average-performing
James
Kramer
Senior Production Technician
15000.000
7
Average-performing
Sean
Alexander
Senior Quality Assurance Technician
13100.000
13
Average-performing
Nitin
Mirchandani
Production Technician
14000.000
7
Average-performing
Diane
Margheim
Senior Research and Development Engineer
43400.000
6
High-performing Senior
Rebecca
Laszlo
Senior Production Technician
15000.000
7
Average-performing
Rajesh
Patel
Senior Production Technician
17500.000
7
Average-performing
Vidur
Luthra
Senior Recruiter
20800.000
9
Average-performing
John
Evans
Senior Production Technician
13500.000
7
Average-performing
Nancy
Anderson
Senior Production Technician
15000.000
7
Average-performing
Pilar
Ackerman
Senior Shipping and Receiving Supervisor
21700.000
15
Average-performing
David
Yalovsky
Senior Production Technician
12000.000
7
Average-performing
David
Hamilton
Mid-Production Supervisor
26500.000
7
High-performing Employee
Laura
Steele
Mid-Production Technician
11500.000
7
Average-performing
Margie
Shoop
Mid-Production Technician
14000.000
7
Average-performing
Zainal
Arifin
Senior Document Control Manager
20300.000
12
Average-performing
Lorraine
Nay
Senior Production Technician
17500.000
7
Average-performing
Fadi
Fakhouri
Mid-Production Technician
15500.000
7
Average-performing
Ryan
Cornelsen
Senior Production Technician
17500.000
7
Average-performing
Candy
Spoon
Senior Accounts Receivable Specialist
21500.000
10
Average-performing
Nuan
Yu
Mid-Production Technician
12500.000
7
Average-performing
William
Vong
Mid-Scheduling Assistant
17500.000
8
Average-performing
Bjorn
Rettig
Senior Production Technician
12000.000
7
Average-performing
Scott
Gode
Senior Production Technician
12500.000
7
Average-performing
Michael
Rothkugel
Production Technician
15000.000
7
Average-performing
Lane
Sacksteder
Senior Production Technician
16500.000
7
Average-performing