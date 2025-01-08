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
	('Lane', 'Sacksteder', 'Senior Production Technician', 7, 143, '2001-02-12 00:00:00.000000', 16500.000, 239),
	('Pete', 'Male', 'Senior Production Technician', 7, 14, '2001-02-12 00:00:00.000000', 13500.000, 273),
	('Dan', 'Bacon', 'Application Specialist', 11, 42, '2021-02-12 00:00:00.000000', 27400.000, 126),
	('David', 'Barber', 'Senior Assistant to the Chief Financial Officer', 10, 140, '2001-02-13 00:00:00.000000', 16000.000, 173),
	('Lolan', 'Song', 'Senior Production Technician', 7, 74, '2001-02-13 00:00:00.000000', 13500.000, 77),
	('Paula', 'Nartker', 'Senior Production Technician', 7, 210, '2001-02-13 00:00:00.000000', 17500.000, 247),
	('Mary', 'Gibson', 'Marketing Specialist', 4, 6, '2023-02-13 00:00:00.000000', 14400.000, 110),
	('Mindaugas', 'Krapauskas', 'Senior Production Technician', 7, 38, '2001-02-14 00:00:00.000000', 13500.000, 74),
	('Eric', 'Gubbels', 'Senior Production Supervisor', 7, 21, '2010-02-15 00:00:00.000000', 27500.000, 85),
	('Ken', 'Sanchez', 'Senior Chief Executive Officer', 16, NULL, '2001-02-15 00:00:00.000000', 128000.000, 177),
	('Jason', 'Watters', 'Senior Production Technician', 7, 135, '2011-02-15 00:00:00.000000', 12000.000, 21),
	('Mark', 'Harrington', 'Senior Quality Assurance Technician', 13, 41, '2001-02-16 00:00:00.000000', 13100.000, 139),
	('Janeth', 'Esteves', 'Senior Production Technician', 7, 159, '2012-02-16 00:00:00.000000', 12500.000, 163),
	('Marc', 'Ingle', 'Senior Production Technician', 7, 184, '2013-02-17 00:00:00.000000', 12000.000, 230),
	('Gigi', 'Matthew', 'Senior Research and Development Engineer', 6, 158, '2001-02-17 00:00:00.000000', 43400.000, 23),
	('Paul', 'Singh', 'Senior Production Technician', 7, 108, '2014-02-18 00:00:00.000000', 16500.000, 16),
	('Frank', 'Lee', 'Mid-Production Technician', 7, 210, '2015-02-18 00:00:00.000000', 16500.000, 263),
	('Francois', 'Ajenstat', 'Senior Database Administrator', 11, 42, '2001-02-18 00:00:00.000000', 41000.000, 127),
	('Diane', 'Tibbott', 'Mid-Production Technician', 7, 14, '2016-02-19 00:00:00.000000', 12500.000, 140),
	('Jill', 'Williams', 'Marketing Specialist', 4, 6, '2071-02-19 00:00:00.000000', 14400.000, 114),
	('Angela', 'Barbariol', 'Senior Production Technician', 7, 38, '2001-02-21 00:00:00.000000', 13500.000, 91),
	('Matthias', 'Berndt', 'Senior Shipping and Receiving Clerk', 15, 85, '2001-02-21 00:00:00.000000', 12000.000, 201),
	('Bryan', 'Baker', 'Mid-Production Technician', 7, 7, '2019-02-22 00:00:00.000000', 14000.000, 166),
	('Jeff', 'Hay', 'Senior Production Supervisor', 7, 21, '2010-02-22 00:00:00.000000', 27500.000, 113),
	('Eugene', 'Zabokritski', 'Senior Production Technician', 7, 184, '2001-02-22 00:00:00.000000', 12000.000, 226),
	('Barbara', 'Decker', 'Senior Production Technician', 7, 182, '2001-02-23 00:00:00.000000', 16500.000, 219),
	('Chris', 'Preston', 'Senior Production Technician', 7, 123, '2011-02-23 00:00:00.000000', 12500.000, 279),
	('Sean', 'Chai', 'Senior Document Control Assistant', 12, 90, '2001-02-23 00:00:00.000000', 12800.000, 138),
	('Dan', 'Wilson', 'Senior Database Administrator', 11, 42, '2012-02-23 00:00:00.000000', 41000.000, 30),
	('Mark', 'McArthur', 'Senior Production Technician', 7, 16, '2012-02-24 00:00:00.000000', 15000.000, 186),
	('Bryan', 'Walton', 'Senior Accounts Receivable Specialist', 10, 139, '2001-02-25 00:00:00.000000', 21500.000, 175),
	('Houman', 'Pournasseh', 'Senior Production Technician', 7, 74, '2001-02-26 00:00:00.000000', 13500.000, 185),
	('Sairaj', 'Uddin', 'Senior Scheduling Assistant', 8, 44, '2013-02-27 00:00:00.000000', 18500.000, 190),
	('Michiko', 'Osada', 'Senior Production Technician', 7, 173, '2001-02-27 00:00:00.000000', 12000.000, 229),
	('Benjamin', 'Martin', 'Senior Production Technician', 7, 184, '2014-02-28 00:00:00.000000', 12000.000, 286),
	('Cynthia', 'Randall', 'Mid-Production Supervisor', 7, 21, '2015-02-28 00:00:00.000000', 26500.000, 147),
	('Kathie', 'Flood', 'Senior Production Technician', 7, 197, '2001-02-28 00:00:00.000000', 12500.000, 100),
	('Britta', 'Simon', 'Mid-Production Technician', 7, 16, '2016-03-02 00:00:00.000000', 14000.000, 95),
	('Brian', 'Lloyd', 'Mid-Production Technician', 7, 210, '2017-03-02 00:00:00.000000', 16500.000, 288),
	('David', 'Liu', 'Mid-Accounts Manager', 10, 140, '2018-03-03 00:00:00.000000', 36200.000, 119),
	('Laura', 'Norman', 'Mid-Chief Financial Officer', 16, 109, '2019-03-04 00:00:00.000000', 61600.000, 215),
	('Michael', 'Patten', 'Production Technician', 7, 38, '2021-03-04 00:00:00.000000', 11000.000, 96),
	('Andy', 'Ruth', 'Production Technician', 7, 135, '2020-03-04 00:00:00.000000', 9500.000, 1),
	('Yuhong', 'Li', 'Production Supervisor', 7, 21, '2022-03-05 00:00:00.000000', 25000.000, 242),
	('Robert', 'Rounthwaite', 'Production Technician', 7, 159, '2023-03-06 00:00:00.000000', 10000.000, 280),
	('Andreas', 'Berglund', 'Senior Quality Assurance Technician', 13, 41, '2001-03-06 00:00:00.000000', 13100.000, 208),
	('Reed', 'Koch', 'Production Technician', 7, 184, '2020-03-06 00:00:00.000000', 9500.000, 191),
	('Linda', 'Randall', 'Senior Production Technician', 7, NULL, '2001-03-07 00:00:00.000000', 16500.000, 260),
	('James', 'Hamilton', 'Senior Vice President of Production', 7, 109, '2001-03-07 00:00:00.000000', 86600.000, 158),
	('Ramesh', 'Meyyappan', 'Senior Application Specialist', 11, 42, '2001-03-07 00:00:00.000000', 29900.000, 130),
	('Stephanie', 'Conroy', 'Network Manager', 11, 42, '2021-03-08 00:00:00.000000', 39700.000, 136),
	('Samantha', 'Smith', 'Senior Production Technician', 7,108, '2001-03-08 00:00:00.000000', 16500.000, 14),
	('Tawana', 'Nusbaum', 'Production Technician', 7, 210, '2021-03-09 00:00:00.000000', 15000.000, 237),
	('Denise', 'Smith', 'Production Technician', 7, 14, '2022-03-09 00:00:00.000000', 11000.000, 143),
	('Hao', 'Chen', 'Senior Human Resources Administrative Assistant', 9, 30, '2001-03-10 00:00:00.000000', 16400.000, 135),
	('Alex', 'Nayberg', 'Production Technician', 7, 123, '2023-03-12 00:00:00.000000', 10000.000, 174),
	('Eugene', 'Kogan', 'Senior Production Technician', 7, 7, '2001-03-12 00:00:00.000000', 15000.000, 71),
	('Brandon', 'Heidepriem', 'Senior Production Technician', 7, 16, '2001-03-12 00:00:00.000000', 15000.000, 189),
	('Dylan', 'Miller', 'Senior Research and Development Manager', 6, 3, '2011-03-12 00:00:00.000000', 53000.000, 141),
	('Shane', 'Kim', 'Senior Production Supervisor', 7, 21, '2012-03-12 00:00:00.000000', 27500.000, 20),
	('John', 'Chen', 'Senior Production Technician', 7, 182, '2013-03-13 00:00:00.000000', 16500.000, 65),
	('Karen', 'Berge', 'Senior Document Control Assistant', 12, 90, '2014-03-13 00:00:00.000000', 12800.000, 123),
	('Jose', 'Lugo', 'Senior Production Technician', 7, 16, '2001-03-14 00:00:00.000000', 15000.000, 271),
	('Mandar', 'Samant', 'Senior Production Technician', 7, 74, '2001-03-14 00:00:00.000000', 13500.000, 63),
	('Mikael', 'Sandberg', 'Mid-Buyer', 5, 274, '2015-03-14 00:00:00.000000', 19800.000, 50),
	('Sameer', 'Tejani', 'Mid-Production Technician', 7, 74, '2016-03-15 00:00:00.000000', 12500.000, 66),
	('Dragan', 'Tomic', 'Senior Accounts Payable Specialist', 10, 139, '2001-03-15 00:00:00.000000', 21500.000, 115),
	('Carol', 'Philips', 'Senior Production Technician', 7, 173, '2001-03-16 00:00:00.000000', 12000.000, 45),
	('Rob', 'Caron', 'Mid-Production Technician', 7, 87, '2017-03-17 00:00:00.000000', 16500.000, 161),
	('Don', 'Hall', 'Mid-Production Technician', 7, 38, '2018-03-17 00:00:00.000000', 12500.000, 59),
	('Alan', 'Brewer', 'Mid-Scheduling Assistant', 8, 44, '2019-03-17 00:00:00.000000', 17500.000, 151),
	('David', 'Lawrence', 'Senior Production Technician', 7, 184, '2001-03-18 00:00:00.000000', 12000.000, 167),
	('Baris', 'Cetinok', 'Senior Production Technician', 7, 87, '2001-03-19 00:00:00.000000', 17500.000, 244),
	('Michael', 'Ray', 'Production Supervisor', 7, 21, '2020-03-19 00:00:00.000000', 25000.000, 277),
	('Steve', 'Masters', 'Senior Production Technician', 7, 18, '2001-03-19 00:00:00.000000', 15000.000, 252),
	('Suchitra', 'Mohan', 'Production Technician', 7, 16, '2021-03-20 00:00:00.000000', 12500.000, 31),
	('Karen', 'Berg', 'Application Specialist', 11, 42, '2022-03-20 00:00:00.000000', 27400.000, 132),
	('Terrence', 'Earls', 'Senior Production Technician', 7, 143, '2001-03-20 00:00:00.000000', 16500.000, 34),
	('Barbara', 'Moreland', 'Accountant', 10, 139, '2023-03-22 00:00:00.000000', 26400.000, 254),
	('Chad', 'Niswonger', 'Senior Production Technician', 7, 38, '2010-03-22 00:00:00.000000', 13500.000, 46),
	('Rostislav', 'Shabalin', 'Senior Production Technician', 7, 135, '2001-03-23 00:00:00.000000', 12000.000, 9),
	('Belinda', 'Newman', 'Senior Production Technician', 7, 197, '2011-03-24 00:00:00.000000', 12500.000, 43),
	('Katie', 'McAskill- White', 'Senior Production Supervisor', 7, 21, '2001-03-24 00:00:00.000000', 27500.000, 240),
	('Russell', 'King', 'Senior Production Technician', 7, 184, '2012-03-25 00:00:00.000000', 12000.000, 3),
	('Jack', 'Richins', 'Senior Production Supervisor', 7, 21, '2013-03-25 00:00:00.000000', 27500.000, 169),
	('Andrew', 'Hill', 'Senior Production Supervisor', 7, 21, '2014-03-26 00:00:00.000000', 27500.000, 97),
	('Nicole', 'Holliday', 'Senior Production Technician', 7, 87, '2001-03-26 00:00:00.000000', 17500.000, 238),
	('Frank', 'Miller', 'Mid-Production Technician', 7, 14, '2015-03-27 00:00:00.000000', 12500.000, 289),
	('Peter', 'Connelly', 'Senior Network Administrator', 11, 150, '2001-03-27 00:00:00.000000', 35000.000, 137),
	('Anibal', 'Sousa', 'Mid-Production Technician', 7, 108, '2016-03-27 00:00:00.000000', 15500.000, 183),
	('Ken','Myer', 'Mid-Production Technician', 7, 210, '2017-03-28 00:00:00.000000', 16500.000, 105),
	('Grant', 'Culbertson', 'Senior Human Resources Administrative Assistant', 9, 30, '2001-03-29 00:00:00.000000', 16400.000, 117),
	('Michael', 'Entin', 'Mid-Production Technician', 7, 38, '2018-03-29 00:00:00.000000', 12500.000, 195),
	('Lionel', 'Penuchot', 'Mid-Production Technician', 7, 159, '2019-03-30 00:00:00.000000', 11500.000, 261),
	('Thomas', 'Michaels', 'Senior Production Technician', 7, 7, '2001-03-30 00:00:00.000000', 15000.000, 78),
	('Jimmy', 'Bischoff', 'Stocker', 15, 85, '2020-03-30 00:00:00.000000', 9000.000, 206),
	('Michael', 'Vanderhyde', 'Senior Production Technician', 7, 135, '2001-03-30 00:00:00.000000', 12000.000, 90),
	('Lori', 'Kane', 'Production Supervisor', 7, 21, '2021-03-30 00:00:00.000000', 25000.000, 198),
	('Arvind', 'Rao', 'Buyer', 5, 274, '2022-04-01 00:00:00.000000', 18300.000, 212),
	('Stefen', 'Hesse', 'Senior Production Technician', 7, 182, '2001-04-01 00:00:00.000000', 16500.000, 68),
	('Hazem', 'Abolrous', 'Quality Assurance Manager', 13, 148, '2023-04-01 00:00:00.000000', 28800.000, 148);
	
	
	
	
-- Output
Mid-Chief Financial Officer
Good
Senior Chief Executive Officer
Good
Senior Information Services Manager
Good
Senior Research and Development Manager
Good
Senior Vice President of Engineering
Good
Senior Vice President of Production
Good
Mid-Accounts Manager
Medium
Mid-Application Specialist
Medium
Network Manager
Medium
Quality Assurance Manager
Medium
Senior Application Specialist
Medium
Senior Database Administrator
Medium
Senior Design Engineer
Medium
Senior Engineering Manager
Medium
Senior Finance Manager
Medium
Senior Human Resources Manager
Medium
Senior Marketing Manager
Medium
Senior Network Administrator
Medium
Senior Production Supervisor
Medium
Senior Research and Development Engineer
Medium
Senior Senior Tool Designer
Medium
Senior Tool Designer
Medium
Accountant
Need Improvement
Application Specialist
Need Improvement
Benefits Specialist
Need Improvement
Buyer
Need Improvement
Marketing Specialist
Need Improvement
Mid-Buyer
Need Improvement
Mid-Production Supervisor
Need Improvement
Mid-Production Technician
Need Improvement
Mid-Scheduling Assistant
Need Improvement
Production Supervisor
Need Improvement
Production Technician
Need Improvement
Senior Accounts Payable Specialist
Need Improvement
Senior Accounts Receivable Specialist
Need Improvement
Senior Assistant to the Chief Financial Officer
Need Improvement
Senior Control Specialist
Need Improvement
Senior Document Control Assistant
Need Improvement
Senior Document Control Manager
Need Improvement
Senior Human Resources Administrative Assistant
Need Improvement
Senior Maintenance Supervisor
Need Improvement
Senior Marketing Assistant
Need Improvement
Senior Marketing Specialist
Need Improvement
Senior Master Scheduler
Need Improvement
Senior Production Control Manager
Need Improvement
Senior Production Technician
Need Improvement
Senior Quality Assurance Supervisor
Need Improvement
Senior Quality Assurance Technician
Need Improvement
Senior Recruiter
Need Improvement
Senior Scheduling Assistant
Need Improvement
Senior Shipping and Receiving Clerk
Need Improvement
Senior Shipping and Receiving Supervisor
Need Improvement
Senior Stocker
Need Improvement
Stocker
Need Improvement