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
	('Scott', 'Wright', 'P', 'Master Scheduler', 8, 148, '2001-01-13', 23600.0000, 172),
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
	('Bob', 'Hohman', NULL, 'Production Technician', 7, 14, '2001-01-25', 11000.0000, 44),
	('Shammi', 'Mohamed', 'G', 'Production Technician', 7, 210, '2001-01-25', 15000.0000, 4),
	('Linda', 'Moschell', 'K', 'Production Technician', 7, 38, '2001-01-26', 11000.0000, 5),
	('Mindy', 'Martin', 'C', 'Benefits Specialist', 9, 30, '2001-01-26', 16600.0000, 171),
	('Wendy', 'Kahn', 'Beth', 'Finance Manager', 10, 140, '2001-01-26', 43300.0000, 232),
	('Kim', 'Ralls', 'T', 'Stocker', 15, 85, '2001-01-27', 9000.0000, 42),
	('Sandra', 'Reategui Alayo', 'T', 'Production Technician', 7, 135, '2001-01-27', 9500.0000, 255),
	('Kok-Ho', 'Loh', 'T', 'Production Supervisor', 7, 21, '2001-01-28', 25000.0000, 10),
	('Douglas', 'Hite', 'B', 'Production Technician', 7, 159, '2001-01-28', 10000.0000, 57),
	('James', 'Kramer', 'D', 'Production Technician', 7, 7, NULL, 12500.0000, 162),
	('Sean', 'Alexander', 'P', 'Quality Assurance Technician', 13, 41, '2001-01-29', 10600.0000, 210),
	('Nitin', 'Mirchandani', 'S', 'Production Technician', 7, 182, '2001-01-29', 14000.0000, 231),
	('Diane', 'Margheim', 'L', 'Research and Development Engineer', 6, 158, '2001-01-30', 40900.0000, 111),
	('Rebecca', 'Laszlo', 'A', 'Production Technician', 7, 16, '2001-01-30', 12500.0000, 6),
	('Rajesh', 'Patel', 'M', 'Production Technician', 7, 210, '2001-02-01', 15000.0000, 81),
	('Vidur', 'Luthra', 'X', 'Recruiter', 9, 30, '2001-02-02', 18300.0000, 176),
	('John', 'Evans', 'P', 'Production Technician', 7, 38, '2001-02-02', 11000.0000, 253),
	('Nancy', 'Anderson', 'A', 'Production Technician', 7, 7, '2001-02-03', 12500.0000, 227),
	('Pilar', 'Ackerman', 'G', 'Shipping and Receiving Supervisor', 15, 21, '2001-02-03', 19200.0000, 269),
	('David', 'Yalovsky', 'A', 'Production Technician', 7, 184, '2001-02-03', 9500.0000, 241),
	('David', 'Hamilton', 'P', 'Production Supervisor', 7, 21, NULL, 25000.0000, 150),
	('Laura', 'Steele', 'C', 'Production Technician', 7, 123, '2001-02-04', 10000.0000, 62),
	('Margie', 'Shoop', 'W', 'Production Technician', 7, 16, '2001-02-05', 12500.0000, 92),
	('Zainal', 'Arifin', 'T', 'Document Control Manager', 12, 200, '2001-02-05', 17800.0000, 128),
	('Lorraine', 'Nay', 'O', 'Production Technician', 7, 210, '2001-02-05', 15000.0000, 94),
	('Fadi', 'Fakhouri', 'K', 'Production Technician', 7, 143, '2001-02-05', 14000.0000, 281),
	('Ryan', 'Cornelsen', 'L', 'Production Technician', 7, 51, '2001-02-06', 15000.0000, 228),
	('Candy', 'Spoon', 'L', 'Accounts Receivable Specialist', 10, 139, '2001-02-07', 19000.0000, 122),
	('Nuan', 'Yu', NULL, 'Production Technician', 7, 74, '2001-02-07', 11000.0000, 12),
	('William', 'Vong', 'S', 'Scheduling Assistant', 8, 44, '2001-02-08', 16000.0000, 35),
	('Bjorn', 'Rettig', 'M', 'Production Technician', 7, 173, '2001-02-08', 9500.0000, 268),
	('Scott', 'Gode', 'R', 'Production Technician', 7, 197, '2001-02-09', 10000.0000, 256),
	('Michael', 'Rothkugel', 'L', 'Production Technician', 7, 87, '2001-02-11', 15000.0000, 93),
	('Lane', 'Sacksteder', 'M', 'Production Technician', 7, 143, NULL, 14000.0000, 239),
	('Pete', 'Male', 'C', 'Production Technician', 7, 14, '2001-02-12', 11000.0000, 273),
	('Dan', 'Bacon', 'K', 'Application Specialist', 11, 42, '2001-02-12', 27400.0000, 126),
	('David', 'Barber', 'M', 'Assistant to the Chief Financial Officer', 10, 140, '2001-02-13', 13500.0000, 173),
	('Lolan', 'Song', 'B', 'Production Technician', 7, 74, '2001-02-13', 11000.0000, 77),
	('Paula', 'Nartker', 'R', 'Production Technician', 7, 210, '2001-02-13', 15000.0000, 247),
	('Mary', 'Gibson', 'E', 'Marketing Specialist', 4, 6, '2001-02-13', 14400.0000, 110),
	('Mindaugas', 'Krapauskas', 'J', 'Production Technician', 7, 38, '2001-02-14', 11000.0000, 74),
	('Eric', 'Gubbels', 'R', 'Production Supervisor', 7, 21, '2001-02-15', 25000.0000, 85),
	('Ken', 'Sanchez', 'J', 'Chief Executive Officer', 16, 8, '2001-02-15', 125500.0000, 177),
	('Jason', 'Watters', 'M', 'Production Technician', 7, 135, '2001-02-15', 9500.0000, 21),
	('Mark', 'Harrington', 'L', 'Quality Assurance Technician', 13, 41, '2001-02-16', 10600.0000, 139),
	('Janeth', 'Esteves', 'M', 'Production Technician', 7, 159, NULL, 10000.0000, 163),
	('Marc', 'Ingle', 'J', 'Production Technician', 7, 184, '2001-02-17', 9500.0000, 230),
	('Gigi', 'Matthew', NULL, 'Research and Development Engineer', 6, 158, '2001-02-17', 40900.0000, 23),
	('Paul', 'Singh', 'R', 'Production Technician', 7, 108, '2001-02-18', 14000.0000, 16),
	('Frank', 'Lee', 'T', 'Production Technician', 7, 210, '2001-02-18', 15000.0000, 263),
	('Francois', 'Ajenstat', 'P', 'Database Administrator', 11, 42, '2001-02-18', 38500.0000, 127),
	('Diane', 'Tibbott', 'H', 'Production Technician', 7, 14, '2001-02-19', 11000.0000, 140),
	('Jill', 'Williams', 'A', 'Marketing Specialist', 4, 6, '2001-02-19', 14400.0000, 114),
	('Angela', 'Barbariol', 'W', 'Production Technician', 7, 38, '2001-02-21', 11000.0000, 91),
	('Matthias', 'Berndt', 'T', 'Shipping and Receiving Clerk', 15, 85, '2001-02-21', 9500.0000, 201),
	('Bryan', 'Baker', 'D', 'Production Technician', 7, 7, '2001-02-22', 12500.0000, 166),
	('Jeff', 'Hay', 'V', 'Production Supervisor', 7, 21, '2001-02-22', 25000.0000, 113),
	('Eugene', 'Zabokritski', 'R', 'Production Technician', 7, 184, '2001-02-22', 9500.0000, 226),
	('Barbara', 'Decker', 'S', 'Production Technician', 7, 182, NULL, 14000.0000, 219),
	('Chris', 'Preston', 'T', 'Production Technician', 7, 123, '2001-02-23', 10000.0000, 279),
	('Sean', 'Chai', 'S', 'Document Control Assistant', 12, 90, '2001-02-23', 10300.0000, 138),
	('Dan', 'Wilson', 'B', 'Database Administrator', 11, 42, '2001-02-23', 38500.0000, 30),
	('Mark', 'McArthur', 'K', 'Production Technician', 7, 16, '2001-02-24', 12500.0000, 186),
	('Bryan', 'Walton', 'A', 'Accounts Receivable Specialist', 10, 139, '2001-02-25', 19000.0000, 175),
	('Houman', 'Pournasseh', NULL, 'Production Technician', 7, 74, '2001-02-26', 11000.0000, 185),
	('Sairaj', 'Uddin', 'L', 'Scheduling Assistant', 8, 44, '2001-02-27', 16000.0000, 190),
	('Michiko', 'Osada', 'F', 'Production Technician', 7, 173, '2001-02-27', 9500.0000, 229),
	('Benjamin', 'Martin', 'R', 'Production Technician', 7, 184, NULL, 9500.0000, 286),
	('Cynthia', 'Randall', 'S', 'Production Supervisor', 7, 21, '2001-02-28', 25000.0000, 147),
	('Kathie', 'Flood', 'E', 'Production Technician', 7, 197, '2001-02-28', 10000.0000, 100),
	('Britta', 'Simon', 'L', 'Production Technician', 7, 16, '2001-03-02', 12500.0000, 95),
	('Brian', 'Lloyd', 'T', 'Production Technician', 7, 210, '2001-03-02', 15000.0000, 288),
	('David', 'Liu', 'J', 'Accounts Manager', 10, 140, '2001-03-03', 34700.0000, 119),
	('Laura', 'Norman', 'F', 'Chief Financial Officer', 16, 109, '2001-03-04', 60100.0000, 215),
	('Michael', 'Patten', 'W', 'Production Technician', 7, 38, '2001-03-04', 11000.0000, 96),
	('Andy', 'Ruth', 'M', 'Production Technician', 7, 135, '2001-03-04', 9500.0000, 1),
	('Yuhong', 'Li', 'L', 'Production Supervisor', 7, 21, '2001-03-05', 25000.0000, 242),
	('Robert', 'Rounthwaite', 'J', 'Production Technician', 7, 159, '2001-03-06', 10000.0000, 280),
	('Andreas', 'Berglund', 'T', 'Quality Assurance Technician', 13, 41, '2001-03-06', 10600.0000, 208),
	('Reed', 'Koch', 'T', 'Production Technician', 7, 184, '2001-03-06', 9500.0000, 191),
	('Linda', 'Randall', 'A', 'Production Technician', 7, 143, NULL, 14000.0000, 260),
	('James', 'Hamilton', 'R', 'Vice President of Production', 7, 109, '2001-03-07', 84100.0000, 158),
	('Ramesh', 'Meyyappan', 'V', 'Application Specialist', 11, 42, '2001-03-07', 27400.0000, 130),
	('Stephanie', 'Conroy', 'A', 'Network Manager', 11, 42, '2001-03-08', 39700.0000, 136),
	('Samantha', 'Smith', 'H', 'Production Technician', 7, 108, '2001-03-08', 14000.0000, 14),
	('Tawana', 'Nusbaum', 'G', 'Production Technician', 7, 210, '2001-03-09', 15000.0000, 237),
	('Denise', 'Smith', 'H', 'Production Technician', 7, 14, '2001-03-09', 11000.0000, 143),
	('Hao', 'Chen', 'O', 'Human Resources Administrative Assistant', 9, 30, '2001-03-10', 13900.0000, 135),
	('Alex', 'Nayberg', 'M', 'Production Technician', 7, 123, '2001-03-12', 10000.0000, 174),
	('Eugene', 'Kogan', 'O', 'Production Technician', 7, 7, '2001-03-12', 12500.0000, 71),
	('Brandon', 'Heidepriem', 'G', 'Production Technician', 7, 16, NULL, 12500.0000, 189),
	('Dylan', 'Miller', 'A', 'Research and Development Manager', 6, 3, '2001-03-12', 50500.0000, 141),
	('Shane', 'Kim', 'S', 'Production Supervisor', 7, 21, '2001-03-12', 25000.0000, 20),
	('John', 'Chen', 'Y', 'Production Technician', 7, 182, '2001-03-13', 14000.0000, 65),
	('Karen', 'Berge', 'R', 'Document Control Assistant', 12, 90, '2001-03-13', 10300.0000, 123),
	('Jose', 'Lugo', 'R', 'Production Technician', 7, 16, '2001-03-14', 12500.0000, 271),
	('Mandar', 'Samant', 'H', 'Production Technician', 7, 74, '2001-03-14', 11000.0000, 63),
	('Mikael', 'Sandberg', 'Q', 'Buyer', 5, 274, '2001-03-14', 18300.0000, 50),
	('Sameer', 'Tejani', 'A', 'Production Technician', 7, 74, '2001-03-15', 11000.0000, 66),
	('Dragan', 'Tomic', 'K', 'Accounts Payable Specialist', 10, 139, '2001-03-15', 19000.0000, 115),
	('Carol', 'Philips', 'M', 'Production Technician', 7, 173, '2001-03-16', 9500.0000, 45),
	('Rob', 'Caron', 'T', 'Production Technician', 7, 87, '2001-03-17', 15000.0000, 161),
	('Don', 'Hall', 'L', 'Production Technician', 7, 38, NULL, 11000.0000, 59),
	('Alan', 'Brewer', 'J', 'Scheduling Assistant', 8, 44, '2001-03-17', 16000.0000, 151),
	('David', 'Lawrence', 'Oliver', 'Production Technician', 7, 184, '2001-03-18', 9500.0000, 167),
	('Baris', 'Cetinok', 'F', 'Production Technician', 7, 87, '2001-03-19', 15000.0000, 244),
	('Michael', 'Ray', 'Sean', 'Production Supervisor', 7, 21, '2001-03-19', 25000.0000, 277),
	('Steve', 'Masters', 'F', 'Production Technician', 7, 18, '2001-03-19', 12500.0000, 252),
	('Suchitra', 'Mohan', 'O', 'Production Technician', 7, 16, '2001-03-20', 12500.0000, 31),
	('Karen', 'Berg', 'A', 'Application Specialist', 11, 42, '2001-03-20', 27400.0000, 132),
	('Terrence', 'Earls', 'W', 'Production Technician', 7, 143, '2001-03-20', 14000.0000, 34),
	('Barbara', 'Moreland', 'C', 'Accountant', 10, 139, '2001-03-22', 26400.0000, 254),
	('Chad', 'Niswonger', 'W', 'Production Technician', 7, 38, '2001-03-22', 11000.0000, 46),
	('Rostislav', 'Shabalin', 'E', 'Production Technician', 7, 135, '2001-03-23', 9500.0000, 9),
	('Belinda', 'Newman', 'M', 'Production Technician', 7, 197, '2001-03-24', 10000.0000, 43),
	('Katie', 'McAskill-White', 'L', 'Production Supervisor', 7, 21, '2001-03-24', 25000.0000, 240),
	('Russell', 'King', 'M', 'Production Technician', 7, 184, '2001-03-25', 9500.0000, 3),
	('Jack', 'Richins', 'S', 'Production Supervisor', 7, 21, '2001-03-25', 25000.0000, 169),
	('Andrew', 'Hill', 'R', 'Production Supervisor', 7, 21, NULL, 25000.0000, 97),
	('Nicole', 'Holliday', 'B', 'Production Technician', 7, 87, '2001-03-26', 15000.0000, 238),
	('Frank', 'Miller', 'T', 'Production Technician', 7, 14, '2001-03-27', 11000.0000, 289),
	('Peter', 'Connelly', 'I', 'Network Administrator', 11, 150, '2001-03-27', 32500.0000, 137),
	('Anibal', 'Sousa', 'T', 'Production Technician', 7, 108, '2001-03-27', 14000.0000, 183),
	('Ken', 'Myer', 'L', 'Production Technician', 7, 210, '2001-03-28', 15000.0000, 105),
	('Grant', 'Culbertson', NULL, 'Human Resources Administrative Assistant', 9, 30, '2001-03-29', 13900.0000, 117),
	('Michael', 'Entin', 'T', 'Production Technician', 7, 38, '2001-03-29', 11000.0000, 195),
	('Lionel', 'Penuchot', 'C', 'Production Technician', 7, 159, '2001-03-30', 10000.0000, 261),
	('Thomas', 'Michaels', 'R', 'Production Technician', 7, 7, NULL, 12500.0000, 78),
	('Jimmy', 'Bischoff', 'T', 'Stocker', 15, 85, '2001-03-30', 9000.0000, 206),
	('Michael', 'Vanderhyde', 'T', 'Production Technician', 7, 135, '2001-03-30', 9500.0000, 90),
	('Lori', 'Kane', 'A', 'Production Supervisor', 7, 21, '2001-03-30', 25000.0000, 198),
	('Arvind', 'Rao', 'B', 'Buyer', 5, 274, '2001-04-01', 18300.0000, 212),
	('Stefen', 'Hesse', 'A', 'Production Technician', 7, 182, '2001-04-01', 14000.0000, 68),
	('Hazem', 'Abolrous', 'E', 'Quality Assurance Manager', 13, 148, '2001-04-010', 28800.0000, 148),
	('Janet', 'Sheperdigian', 'L', 'Accounts Payable Specialist', 10, 139, '2001-04-02', 19000.0000, 218),
	('Elizabeth', 'Keyser', 'I', 'Production Technician', 7, 74, '2001-04-03', 11000.0000, 152),
	('Terry', 'Eminhizer', 'J', 'Marketing Specialist', 4, 6, '2001-04-03', 14400.0000, 19),
	('John', 'Frum', NULL, 'Production Technician', 7, 184, '2001-04-04', 9500.0000, 112),
	('Merav', 'Netz', 'A', 'Production Technician', 7, 173, '2001-04-04', 9500.0000, 270),
	('Brian', 'LaMee', 'P', 'Scheduling Assistant', 8, 44, NULL, 16000.0000, 109),
	('Kitti', 'Lertpiriyasuwat', 'H', 'Production Technician', 7, 38, '2001-04-05', 11000.0000, 272),
	('Jay', 'Adams', 'G', 'Production Technician', 7, 18, '2001-04-06', 12500.0000, 157),
	('Jan', 'Miksovsky', 'S', 'Production Technician', 7, 184, '2001-04-06', 9500.0000, 101),
	('Brenda', 'Diaz', 'M', 'Production Supervisor', 7, 21, '2001-04-06', 25000.0000, 251),
	('Andrew', 'Cencini', 'M', 'Production Technician', 7, 123, '2001-04-07', 10000.0000, 233),
	('Chris', 'Norred', 'K', 'Control Specialist', 12, 90, '2001-04-07', 16800.0000, 125),
	('Chris', 'Okelberry', 'O', 'Production Technician', 7, 16, '2001-04-08', 12500.0000, 188),
	('Shelley', 'Dyck', '', 'Production Technician', 7, 143, '2001-04-08', 14000.0000, 164),
	('Gabe', 'Mares', 'B', 'Production Technician', 7, 210, '2001-04-09', 15000.0000, 87),
	('Mike', 'Seamans', 'K', 'Accountant', 10, 139, '2001-04-09', 26400.0000, 120),
	('Michael', 'Raheem', NULL, 'Research and Development Manager', 6, 158, '2001-06-04', 42500.0000, 236),
	('Gary', 'Altman', 'E.', 'Facilities Manager', 14, 148, NULL, 24000.0000, 203),
	('Charles', 'Fitzgerald', 'B', 'Production Technician', 7, 18, '2002-01-04', 12500.0000, 223),
	('Ebru', 'Ersan', '', 'Production Technician', 7, 25, '2002-01-07', 13500.0000, 225),
	('Sylvester', 'Valdez', 'A', 'Production Technician', 7, 108, '2002-01-12', 14000.0000, 25),
	('Brian', 'Goldstein', 'Richard', 'Production Technician', 7, 51, '2002-01-12', 15000.0000, 48),
	('Linda', 'Meisner', 'P', 'Buyer', 5, 274, '2002-01-18', 18300.0000, 28),
	('Betsy', 'Stadick', 'A', 'Production Technician', 7, 64, '2002-01-19', 13500.0000, 47),
	('Magnus', 'Hedlund', 'E', 'Facilities Administrative Assistant', 14, 218, '2002-01-22', 9800.0000, 211),
	('Karan', 'Khanna', NULL, 'Production Technician', 7, 18, '2002-01-23', 12500.0000, 248),
	('Mary', 'Baker', 'R', 'Production Technician', 7, 25, '2002-01-26', 13500.0000, 246),
	('Kevin', 'Homer', 'M', 'Production Technician', 7, 25, '2002-01-26', 13500.0000, 29),
	('Mihail', 'Frintu', 'U', 'Production Technician', 7, 51, NULL, 15000.0000, 89),
	('Bonnie', 'Kearney', '', 'Production Technician', 7, 185, '2002-02-02', 13500.0000, 287),
	('Fukiko', 'Ogisu', 'J', 'Buyer', 5, 274, '2002-02-05', 18300.0000, 17),
	('Hung-Fu', 'Ting', 'T', 'Production Technician', 7, 108, '2002-02-07', 14000.0000, 220),
	('Gordon', 'Hee', 'L', 'Buyer', 5, 274, '2002-02-12', 18300.0000, 15),
	('Kimberly', 'Zimmerman', 'B', 'Production Technician', 7, 64, '2002-02-13', 13500.0000, 266),
	('Kim', 'Abercrombie', 'B', 'Production Technician', 7, 16, '2002-02-17', 12500.0000, 56),
	('Sandeep', 'Kaliyath', 'P', 'Production Technician', 7, 51, '2002-02-18', 15000.0000, 234),
	('Prasanna', 'Samarawickrama', 'E', 'Production Technician', 7, 108, '2002-02-23', 14000.0000, 187),
	('Frank', 'Pellow', 'S', 'Buyer', 5, 274, '2002-02-24', 18300.0000, 213),
	('Min', 'Su', 'G', 'Production Technician', 7, 108, '2002-02-25', 14000.0000, 24),
	('Eric', 'Brown', 'L', 'Production Technician', 7, 51, NULL, 15000.0000, 67),
	('Eric', 'Kurjan', NULL, 'Buyer', 5, 274, '2002-02-28', 18300.0000, 207),
	('Pat', 'Coleman', 'H', 'Janitor', 14, 49, '2002-02-28', 9300.0000, 116),
	('Maciej', 'Dusza', 'W', 'Production Technician', 7, 18, '2002-03-01', 12500.0000, 83),
	('Erin', 'Hagens', 'M', 'Buyer', 5, 274, '2002-03-03', 18300.0000, 8),
	('Patrick', 'Wedge', 'C', 'Production Technician', 7, 64, '2002-03-04', 13500.0000, 7),
	('Frank', 'Martinez', 'R', 'Production Technician', 7, 51, '2002-03-08', 15000.0000, 290),
	('Ed', 'Dudenhoefer', 'R', 'Production Technician', 7, 16, '2002-03-08', 12500.0000, 243),
	('Christopher', 'Hill', 'E', 'Production Technician', 7, 25, '2002-03-11', 13500.0000, 41),
	('Patrick', 'Cook', 'M', 'Production Technician', 7, 51, '2002-03-15', 15000.0000, 264),
	('Krishna', 'Sunkammurali', NULL, 'Production Technician', 7, 108, '2002-03-16', 14000.0000, 79),
	('Lori', 'Penor', 'K', 'Janitor', 14, 49, '2002-03-19', 9300.0000, 124),
	('Danielle', 'Tiedt', 'C', 'Production Technician', 7, 64, '2002-03-23', 13500.0000, 146),
	('Sootha', 'Charncherngkha', 'T', 'Quality Assurance Technician', 13, 41, '2002-03-26', 10600.0000, 149),
	('Michael', 'Zwilling', NULL, 'Production Technician', 7, 18, '2002-03-26', 12500.0000, 76),
	('Randy', 'Reeves', 'T', 'Production Technician', 7, 18, '2002-03-26', 12500.0000, 84),
	('John', 'Kane', 'T', 'Production Technician', 7, 25, '2002-03-30', 13500.0000, 69),
	('Jack', 'Creasey', 'T', 'Production Technician', 7, 51, NULL, 15000.0000, 265),
	('Olinda', 'Turner', 'C', 'Production Technician', 7, 108, '2002-04-04', 14000.0000, 33),
	('Stuart', 'Macrae', 'J', 'Janitor', 14, 49, '2002-04-05', 9300.0000, 205),
	('Jo', 'Berry', 'L', 'Janitor', 14, 49, '2002-04-07', 9300.0000, 121),
	('Ben', 'Miller', 'T', 'Buyer', 5, 274, '2002-04-09', 18300.0000, 192),
	('Tom', 'Vande Velde', 'M', 'Production Technician', 7, 64, '2002-04-10', 13500.0000, 98),
	('Ovidiu', 'Cracium', 'V', 'Tool Designer', 2, 3, '2003-01-05', 28800.0000, 145),
	('Annette', 'Hill', 'L', 'Purchasing Assistant', 5, 274, '2003-01-06', 12800.0000, 181),
	('Janice', 'Galvin', NULL, 'Tool Designer', 2, 263, '2003-01-23', 25000.0000, 200),
	('Reinout', 'Hillmann', '', 'Purchasing Assistant', 5, 274, '2003-01-25', 12800.0000, 27),
	('Michael', 'Sullivan', 'I', 'Design Engineer', 1, 3, '2003-01-30', 36100.0000, 217),
	('Stephen', 'Jiang', 'Y', 'North American Sales Manager', 3, 273, '2003-02-04', 48100.0000, 196),
	('Wanida', 'Benshoof', 'M', 'Marketing Assistant', 4, 6, '2003-02-07', 13500.0000, 221),
	('Sharon', 'Salavaria', 'B', 'Design Engineer', 1, 3, '2003-02-18', 32700.0000, 216),
	('John', 'Wood', 'L', 'Marketing Specialist', 4, 6, '2003-03-10', 14400.0000, 180),
	('Mary', 'Dempsey', 'A', 'Marketing Assistant', 4, 6, '2003-03-17', 13500.0000, 26),
	('Brian', 'Welcker', 'S', 'Vice President of Sales', 3, 109, '2003-03-18', 72100.0000, 134),
	('Sheela', 'Word', 'H', 'Purchasing Manager', 13, 71, '2003-03-28', 30000.0000, 222),
	('Michael', 'Blythe', 'G', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 60),
	('Linda', 'Mitchell', 'C', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 170),
	('Jillian', 'Carson', NULL, 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 61),
	('Garrett', 'Vargas', 'R', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 52),
	('Tsvi', 'Reiter', 'Michael', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 154),
	('Pamela', 'Ansman-Wolfe', 'O', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 179),
	('Shu', 'Ito', 'K', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 235),
	('Jose', 'Saraiva', 'Edvaldo', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 178),
	('David', 'Campbell', 'R', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 13),
	('Amy', 'Alberts', 'E', 'European Sales Manager', 3, 273, '2004-05-18', 48100.0000, 202),
	('Jae', 'Pak', 'B', 'Sales Representative', 3, 284, '2004-07-01', 23100.0000, 54),
	('Ranjit', 'Varkey Chudukatil', NULL, 'Sales Representative', 3, 284, '2004-07-01', 23100.0000, 38),
	('Tete', 'Mensa-Annan', 'A', 'Sales Representative', 3, 268, NULL, 23100.0000, 53),
	('Syed', 'Abbas', 'E', 'Pacific Sales Manager', 3, 273, '2005-04-15', 48100.0000, 49),
	('Rachel', 'Valdez', 'B', 'Sales Representative', 3, 284, '2005-07-01', 23100.0000, 37),
	('Lynn', 'Tsoflias', '', 'Sales Representative', 3, 288, '2005-07-01', 23100.0000, 153),
	('Svetlin', 'Nakov', 'Ivanov', 'Independent Software Development  Consultant', 6, 9, '2005-03-01', 48000.0000, 291),
	('Martin', 'Kulov', NULL, 'Independent .NET Consultant', 6, 10, '2005-03-01', 48000.0000, 291),
	('George', 'Denchev', NULL, 'Independent Java Consultant', 6, 1, NULL, 48000.0000, 291);
	
	
-- Output
169
Alan Brewer
Scheduling Assistant
30
Alejandro McGuel
Production Technician
154
Alex Nayberg
Production Technician
35
Alice Ciccu
Production Technician
283
Amy Alberts
European Sales Manager
144
Andreas Berglund
Quality Assurance Technician
184
Andrew Hill
Production Supervisor
210
Andrew Cencini
Production Technician
141
Andy Ruth
Production Technician
119
Angela Barbariol
Production Technician
188
Anibal Sousa
Production Technician
263
Annette Hill
Purchasing Assistant
56
Annik Stahl
Production Technician
197
Arvind Rao
Buyer
27
Ashvini Sharma
Network Administrator
177
Barbara Moreland
Accountant
124
Barbara Decker
Production Technician
171
Baris Cetinok
Production Technician
9
Barry Johnson
Production Technician
180
Belinda Newman
Production Technician
260
Ben Miller
Buyer
133
Benjamin Martin
Production Technician
223
Betsy Stadick
Production Technician
96
Bjorn Rettig
Production Technician
66
Bob Hohman
Production Technician
229
Bonnie Kearney
Production Technician
156
Brandon Heidepriem
Production Technician
209
Brenda Diaz
Production Supervisor
272
Brian Welcker
Vice President of Sales
137
Brian Lloyd
Production Technician
205
Brian LaMee
Scheduling Assistant
221
Brian Goldstein
Production Technician
136
Britta Simon
Production Technician
129
Bryan Walton
Accounts Receivable Specialist
121
Bryan Baker
Production Technician
93
Candy Spoon
Accounts Receivable Specialist
166
Carol Philips
Production Technician
60
Carole Poland
Production Technician
178
Chad Niswonger
Production Technician
218
Charles Fitzgerald
Production Technician
125
Chris Preston
Production Technician
211
Chris Norred
Control Specialist
212
Chris Okelberry
Production Technician
48
Christian Kleinerman
Maintenance Supervisor
247
Christopher Hill
Production Technician
63
Cristian Petculescu
Production Supervisor
134
Cynthia Randall
Production Supervisor
127
Dan Wilson
Database Administrator
101
Dan Bacon
Application Specialist
251
Danielle Tiedt
Production Technician