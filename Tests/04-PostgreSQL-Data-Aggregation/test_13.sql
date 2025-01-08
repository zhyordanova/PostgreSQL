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


-- Input
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
	('Lane', 'Sacksteder', 'Production Technician', 7, 143, '2001-02-12 00:00:00.000000', 14000.0000, 239),
	('Pete', 'Male', 'Production Technician', 7, 14, '2001-02-12 00:00:00.000000', 11000.0000, 273),
	('Dan', 'Bacon', 'Application Specialist', 11, 42, '2021-02-12 00:00:00.000000', 27400.0000, 126),
	('David', 'Barber', 'Assistant to the Chief Financial Officer', 10, 140, '2001-02-13 00:00:00.000000', 13500.0000, 173),
	('Lolan', 'Song', 'Production Technician', 7, 74, '2001-02-13 00:00:00.000000', 11000.0000, 77),
	('Paula', 'Nartker', 'Production Technician', 7, 210, '2001-02-13 00:00:00.000000', 15000.0000, 247),
	('Mary', 'Gibson', 'Marketing Specialist', 4, 6, '2023-02-13 00:00:00.000000', 14400.0000, 110),
	('Mindaugas', 'Krapauskas', 'Production Technician', 7, 38, '2001-02-14 00:00:00.000000', 11000.0000, 74),
	('Eric', 'Gubbels', 'Production Supervisor', 7, 21, '2010-02-15 00:00:00.000000', 25000.0000, 85),
	('Ken', 'Sanchez', 'Chief Executive Officer', 16, NULL, '2001-02-15 00:00:00.000000', 125500.0000, 177),
	('Jason', 'Watters', 'Production Technician', 7, 135, '2011-02-15 00:00:00.000000', 9500.0000, 21),
	('Mark', 'Harrington', 'Quality Assurance Technician', 13, 41, '2001-02-16 00:00:00.000000', 10600.0000, 139),
	('Janeth', 'Esteves', 'Production Technician', 7, 159, '2012-02-16 00:00:00.000000', 10000.0000, 163),
	('Marc', 'Ingle', 'Production Technician', 7, 184, '2013-02-17 00:00:00.000000', 9500.0000, 230),
	('Gigi', 'Matthew', 'Research and Development Engineer', 6, 158, '2001-02-17 00:00:00.000000', 40900.0000, 23),
	('Paul', 'Singh', 'Production Technician', 7, 108, '2014-02-18 00:00:00.000000', 14000.0000, 16),
	('Frank', 'Lee', 'Production Technician', 7, 210, '2015-02-18 00:00:00.000000', 15000.0000, 263),
	('Francois', 'Ajenstat', 'Database Administrator', 11, 42, '2001-02-18 00:00:00.000000', 38500.0000, 127),
	('Diane', 'Tibbott', 'Production Technician', 7, 14, '2016-02-19 00:00:00.000000', 11000.0000, 140),
	('Jill', 'Williams', 'Marketing Specialist', 4, 6, '2071-02-19 00:00:00.000000', 14400.0000, 114),
	('Angela', 'Barbariol', 'Production Technician', 7, 38, '2001-02-21 00:00:00.000000', 11000.0000, 91),
	('Matthias', 'Berndt', 'Shipping and Receiving Clerk', 15, 85, '2001-02-21 00:00:00.000000', 9500.0000, 201),
	('Bryan', 'Baker', 'Production Technician', 7, 7, '2019-02-22 00:00:00.000000', 12500.0000, 166),
	('Jeff', 'Hay', 'Production Supervisor', 7, 21, '2010-02-22 00:00:00.000000', 25000.0000, 113),
	('Eugene', 'Zabokritski', 'Production Technician', 7, 184, '2001-02-22 00:00:00.000000', 9500.0000, 226),
	('Barbara', 'Decker', 'Production Technician', 7, 182, '2001-02-23 00:00:00.000000', 14000.0000, 219),
	('Chris', 'Preston', 'Production Technician', 7, 123, '2011-02-23 00:00:00.000000', 10000.0000, 279),
	('Sean', 'Chai', 'Document Control Assistant', 12, 90, '2001-02-23 00:00:00.000000', 10300.0000, 138),
	('Dan', 'Wilson', 'Database Administrator', 11, 42, '2012-02-23 00:00:00.000000', 38500.0000, 30),
	('Mark', 'McArthur', 'Production Technician', 7, 16, '2012-02-24 00:00:00.000000', 12500.0000, 186),
	('Bryan', 'Walton', 'Accounts Receivable Specialist', 10, 139, '2001-02-25 00:00:00.000000', 19000.0000, 175),
	('Houman', 'Pournasseh', 'Production Technician', 7, 74, '2001-02-26 00:00:00.000000', 11000.0000, 185),
	('Sairaj', 'Uddin', 'Scheduling Assistant', 8, 44, '2013-02-27 00:00:00.000000', 16000.0000, 190),
	('Michiko', 'Osada', 'Production Technician', 7, 173, '2001-02-27 00:00:00.000000', 9500.0000, 229),
	('Benjamin', 'Martin', 'Production Technician', 7, 184, '2014-02-28 00:00:00.000000', 9500.0000, 286),
	('Cynthia', 'Randall', 'Production Supervisor', 7, 21, '2015-02-28 00:00:00.000000', 25000.0000, 147),
	('Kathie', 'Flood', 'Production Technician', 7, 197, '2001-02-28 00:00:00.000000', 10000.0000, 100),
	('Britta', 'Simon', 'Production Technician', 7, 16, '2016-03-02 00:00:00.000000', 12500.0000, 95),
	('Brian', 'Lloyd', 'Production Technician', 7, 210, '2017-03-02 00:00:00.000000', 15000.0000, 288),
	('David', 'Liu', 'Accounts Manager', 10, 140, '2018-03-03 00:00:00.000000', 34700.0000, 119),
	('Laura', 'Norman', 'Chief Financial Officer', 16, 109, '2019-03-04 00:00:00.000000', 60100.0000, 215),
	('Michael', 'Patten', 'Production Technician', 7, 38, '2021-03-04 00:00:00.000000', 11000.0000, 96),
	('Andy', 'Ruth', 'Production Technician', 7, 135, '2020-03-04 00:00:00.000000', 9500.0000, 1),
	('Yuhong', 'Li', 'Production Supervisor', 7, 21, '2022-03-05 00:00:00.000000', 25000.0000, 242),
	('Robert', 'Rounthwaite', 'Production Technician', 7, 159, '2023-03-06 00:00:00.000000', 10000.0000, 280),
	('Andreas', 'Berglund', 'Quality Assurance Technician', 13, 41, '2001-03-06 00:00:00.000000', 10600.0000, 208),
	('Reed', 'Koch', 'Production Technician', 7, 184, '2020-03-06 00:00:00.000000', 9500.0000, 191),
	('Linda', 'Randall', 'Production Technician', 7, NULL, '2001-03-07 00:00:00.000000', 14000.0000, 260),
	('James', 'Hamilton', 'Vice President of Production', 7, 109, '2001-03-07 00:00:00.000000', 84100.0000, 158),
	('Ramesh', 'Meyyappan', 'Application Specialist', 11, 42, '2001-03-07 00:00:00.000000', 27400.0000, 130),
	('Stephanie', 'Conroy', 'Network Manager', 11, 42, '2021-03-08 00:00:00.000000', 39700.0000, 136),
	('Samantha', 'Smith', 'Production Technician', 7, 108, '2001-03-08 00:00:00.000000', 14000.0000, 14),
	('Tawana', 'Nusbaum', 'Production Technician', 7, 210, '2021-03-09 00:00:00.000000', 15000.0000, 237),
	('Denise', 'Smith', 'Production Technician', 7, 14, '2022-03-09 00:00:00.000000', 11000.0000, 143),
	('Hao', 'Chen', 'Human Resources Administrative Assistant', 9, 30, '2001-03-10 00:00:00.000000', 13900.0000, 135),
	('Alex', 'Nayberg', 'Production Technician', 7, 123, '2023-03-12 00:00:00.000000', 10000.0000, 174),
	('Eugene', 'Kogan', 'Production Technician', 7, 7, '2001-03-12 00:00:00.000000', 12500.0000, 71),
	('Brandon', 'Heidepriem', 'Production Technician', 7, 16, '2001-03-12 00:00:00.000000', 12500.0000, 189),
	('Dylan', 'Miller', 'Research and Development Manager', 6, 3, '2011-03-12 00:00:00.000000', 50500.0000, 141),
	('Shane', 'Kim', 'Production Supervisor', 7, 21, '2012-03-12 00:00:00.000000', 25000.0000, 20),
	('John', 'Chen', 'Production Technician', 7, 182, '2013-03-13 00:00:00.000000', 14000.0000, 65),
	('Karen', 'Berge', 'Document Control Assistant', 12, 90, '2014-03-13 00:00:00.000000', 10300.0000, 123),
	('Jose', 'Lugo', 'Production Technician', 7, 16, '2001-03-14 00:00:00.000000', 12500.0000, 271),
	('Mandar', 'Samant', 'Production Technician', 7, 74, '2001-03-14 00:00:00.000000', 11000.0000, 63),
	('Mikael', 'Sandberg', 'Buyer', 5, 274, '2015-03-14 00:00:00.000000', 18300.0000, 50),
	('Sameer', 'Tejani', 'Production Technician', 7, 74, '2016-03-15 00:00:00.000000', 11000.0000, 66),
	('Dragan', 'Tomic', 'Accounts Payable Specialist', 10, 139, '2001-03-15 00:00:00.000000', 19000.0000, 115),
	('Carol', 'Philips', 'Production Technician', 7, 173, '2001-03-16 00:00:00.000000', 9500.0000, 45),
	('Rob', 'Caron', 'Production Technician', 7, 87, '2017-03-17 00:00:00.000000', 15000.0000, 161),
	('Don', 'Hall', 'Production Technician', 7, 38, '2018-03-17 00:00:00.000000', 11000.0000, 59),
	('Alan', 'Brewer', 'Scheduling Assistant', 8, 44, '2019-03-17 00:00:00.000000', 16000.0000, 151),
	('David', 'Lawrence', 'Production Technician', 7, 184, '2001-03-18 00:00:00.000000', 9500.0000, 167),
	('Baris', 'Cetinok', 'Production Technician', 7, 87, '2001-03-19 00:00:00.000000', 15000.0000, 244),
	('Michael', 'Ray', 'Production Supervisor', 7, 21, '2020-03-19 00:00:00.000000', 25000.0000, 277),
	('Steve', 'Masters', 'Production Technician', 7, 18, '2001-03-19 00:00:00.000000', 12500.0000, 252),
	('Suchitra', 'Mohan', 'Production Technician', 7, 16, '2021-03-20 00:00:00.000000', 12500.0000, 31),
	('Karen', 'Berg', 'Application Specialist', 11, 42, '2022-03-20 00:00:00.000000', 27400.0000, 132),
	('Terrence', 'Earls', 'Production Technician', 7, 143, '2001-03-20 00:00:00.000000', 14000.0000, 34),
	('Barbara', 'Moreland', 'Accountant', 10, 139, '2023-03-22 00:00:00.000000', 26400.0000, 254),
	('Chad', 'Niswonger', 'Production Technician', 7, 38, '2010-03-22 00:00:00.000000', 11000.0000, 46),
	('Rostislav', 'Shabalin', 'Production Technician', 7, 135, '2001-03-23 00:00:00.000000', 9500.0000, 9),
	('Belinda', 'Newman', 'Production Technician', 7, 197, '2011-03-24 00:00:00.000000', 10000.0000, 43),
	('Katie', 'McAskill-White', 'Production Supervisor', 7, 21, '2001-03-24 00:00:00.000000', 25000.0000, 240),
	('Russell', 'King', 'Production Technician', 7, 184, '2012-03-25 00:00:00.000000', 9500.0000, 3),
	('Jack', 'Richins', 'Production Supervisor', 7, 21, '2013-03-25 00:00:00.000000', 25000.0000, 169),
	('Andrew', 'Hill', 'Production Supervisor', 7, 21, '2014-03-26 00:00:00.000000', 25000.0000, 97),
	('Nicole', 'Holliday', 'Production Technician', 7, 87, '2001-03-26 00:00:00.000000', 15000.0000, 238),
	('Frank', 'Miller', 'Production Technician', 7, 14, '2015-03-27 00:00:00.000000', 11000.0000, 289),
	('Peter', 'Connelly', 'Network Administrator', 11, 150, '2001-03-27 00:00:00.000000', 32500.0000, 137),
	('Anibal', 'Sousa', 'Production Technician', 7, 108, '2016-03-27 00:00:00.000000', 14000.0000, 183),
	('Ken', 'Myer', 'Production Technician', 7, 210, '2017-03-28 00:00:00.000000', 15000.0000, 105),
	('Grant', 'Culbertson', 'Human Resources Administrative Assistant', 9, 30, '2001-03-29 00:00:00.000000', 13900.0000, 117),
	('Michael', 'Entin', 'Production Technician', 7, 38, '2018-03-29 00:00:00.000000', 11000.0000, 195),
	('Lionel', 'Penuchot', 'Production Technician', 7, 159, '2019-03-30 00:00:00.000000', 10000.0000, 261),
	('Thomas', 'Michaels', 'Production Technician', 7, 7, '2001-03-30 00:00:00.000000', 12500.0000, 78),
	('Jimmy', 'Bischoff', 'Stocker', 15, 85, '2020-03-30 00:00:00.000000', 9000.0000, 206),
	('Michael', 'Vanderhyde', 'Production Technician', 7, 135, '2001-03-30 00:00:00.000000', 9500.0000, 90),
	('Lori', 'Kane', 'Production Supervisor', 7, 21, '2021-03-30 00:00:00.000000', 25000.0000, 198),
	('Arvind', 'Rao', 'Buyer', 5, 274, '2022-04-01 00:00:00.000000', 18300.0000, 212),
	('Stefen', 'Hesse', 'Production Technician', 7, 182, '2001-04-01 00:00:00.000000', 14000.0000, 68),
	('Hazem', 'Abolrous', 'Quality Assurance Manager', 13, 148, '2023-04-01 00:00:00.000000', 28800.0000, 148);
	
	
-- Output
4
2
0
4
3
3
137