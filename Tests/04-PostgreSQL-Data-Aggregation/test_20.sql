-- Solution skeleton
CREATE TABLE IF NOT EXISTS departments (
  "id" SERIAL PRIMARY KEY,
  department_name VARCHAR(150) NOT NULL,
  manager_id INT NOT NULL,
  CONSTRAINT departments_manager_id_check CHECK (manager_id > 0)
);


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
INSERT INTO departments (
	department_name, manager_id
) 
VALUES
	('Engineering', 12),
	('Tool Design', 4),
	('Sales', 273),
	('Marketing', 46),
	('Purchasing', 6),
	('Research and Development', 42),
	('Production', 148),
	('Production Control', 21),
	('Human Resources', 30),
	('Finance', 3),
	('Information Services', 42),
	('Document Control', 90),
	('Quality Assurance', 274),
	('Facilities and Maintenance', 218),
	('Shipping and Receiving', 85),
	('Executive', 109);
	

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
	('Susan', 'Metters', 'Senior Production Technician', 7, 184, '2001-01-15 00:00:00.000000', 12000.000, 224);
	
	
-- Output
7
Production
148
1
Guy
Gilbert
Senior Production Technician
7
16
1998-07-31 00:00:00
15000.000
166
4
Marketing
46
2
Kevin
Brown
Senior Marketing Assistant
4
6
1999-02-26 00:00:00
16000.000
102
1
Engineering
12
3
Roberto
Tamburello
Senior Engineering Manager
1
12
1999-12-12 00:00:00
45800.000
193
2
Tool Design
4
4
Rob
Walters
Senior Senior Tool Designer
2
3
2000-01-05 00:00:00
32300.000
155
2
Tool Design
4
5
Thierry
D`Hers
Senior Tool Designer
2
263
2003-01-11 00:00:00
27500.000
40
5
Purchasing
6
6
David
Bradley
Senior Marketing Manager
5
109
2000-01-20 00:00:00
40000.000
199
7
Production
148
7
JoLynn
Dobney
Senior Production Supervisor
7
21
2000-01-26 00:00:00
27500.000
275
7
Production
148
8
Ruth
Ellerbrock
Mid-Production Technician
7
185
2015-02-06 00:00:00
15000.000
108
1
Engineering
12
9
Gail
Erickson
Senior Design Engineer
1
3
2000-02-06 00:00:00
35200.000
22
7
Production
148
10
Barry
Johnson
Senior Production Technician
7
185
2000-02-07 00:00:00
16000.000
285
1
Engineering
12
11
Jossef
Goldberg
Senior Design Engineer
1
3
2000-02-24 00:00:00
35200.000
214
1
Engineering
12
12
Terri
Duffy
Senior Vice President of Engineering
1
109
2000-03-03 00:00:00
66000.000
209
7
Production
148
13
Sidney
Higa
Senior Production Technician
7

2000-03-05 00:00:00
16000.000
73
7
Production
148
14
Taylor
Maxwell
Senior Production Supervisor
7
21
2010-03-11 00:00:00
27500.000
82
7
Production
148
15
Jeffrey
Ford
Senior Production Technician
7
185
2000-03-23 00:00:00
16000.000
156
7
Production
148
16
Jo
Brown
Senior Production Supervisor
7
21
2000-03-30 00:00:00
27500.000
70
7
Production
148
17
Doris
Hartwig
Mid-Production Technician
7
185
2019-04-11 00:00:00
15000.000
144
7
Production
148
18
John
Campbell
Senior Production Supervisor
7
21
2000-04-18 00:00:00
27500.000
245
7
Production
148
19
Diane
Glimp
Production Technician
7
185
2020-04-29 00:00:00
13500.000
184
7
Production
148
20
Steven
Selikoff
Senior Production Technician
7
173
2001-01-02 00:00:00
12000.000
104
8
Production Control
21
21
Peter
Krebs
Senior Production Control Manager
8
148
2001-01-02 00:00:00
27000.000
11
7
Production
148
22
Stuart
Munson
Senior Production Technician
7
197
2001-01-03 00:00:00
12500.000
36
7
Production
148
23
Greg
Alderson
Senior Production Technician
7
197
2001-01-03 00:00:00
12500.000
18
7
Production
148
24
David
Johnson
Senior Production Technician
7
184
2001-01-03 00:00:00
12000.000
142
7
Production
148
25
Zheng
Mu
Senior Production Supervisor
7
21
2001-01-04 00:00:00
27500.000
278
7
Production
148
26
Ivo
Salmre
Senior Production Technician
7
108
2001-01-05 00:00:00
16500.000
165
7
Production
148
27
Paul
Komosinski
Senior Production Technician
7
87
2001-01-05 00:00:00
17500.000
32
11
Information Services
42
28
Ashvini
Sharma
Senior Network Administrator
11
150
2001-01-05 00:00:00
35000.000
133
7
Production
148
29
Kendall
Keil
Senior Production Technician
7
14
2001-01-06 00:00:00
13500.000
257
9
Human Resources
30
30
Paula
Barreto de Mattos
Senior Human Resources Manager
9
140
2001-01-07 00:00:00
29600.000
2
7
Production
148
31
Alejandro
McGuel
Senior Production Technician
7
210
2001-01-07 00:00:00
17500.000
274
7
Production
148
32
Garrett
Young
Senior Production Technician
7
184
2001-01-08 00:00:00
12000.000
283
7
Production
148
33
Jian Shuo
Wang
Senior Production Technician
7
135
2001-01-08 00:00:00
12000.000
160
15
Shipping and Receiving
85
34
Susan
Eaton
Senior Stocker
15
85
2001-01-08 00:00:00
11500.000
204
15
Shipping and Receiving
85
35
Vamsi
Kuppa
Senior Shipping and Receiving Clerk
15
85
2001-01-08 00:00:00
12000.000
51
7
Production
148
36
Alice
Ciccu
Senior Production Technician
7
38
2001-01-08 00:00:00
13500.000
284
7
Production
148
37
Simon
Rapier
Senior Production Technician
7
7
2001-01-09 00:00:00
15000.000
64
7
Production
148
38
Jinghao
Liu
Senior Production Supervisor
7
21
2011-01-09 00:00:00
27500.000
55
7
Production
148
39
Michael
Hines
Senior Production Technician
7
182
2001-01-10 00:00:00
16500.000
168
7
Production
148
40
Yvonne
McKay
Senior Production Technician
7

2012-01-10 00:00:00
12500.000
107
13
Quality Assurance
274
41
Peng
Wu
Senior Quality Assurance Supervisor
13
200
2001-01-10 00:00:00
24100.000
39
11
Information Services
42
42
Jean
Trenary
Senior Information Services Manager
11
109
2001-01-12 00:00:00
53000.000
194
7
Production
148
43
Russell
Hunter
Senior Production Technician
7
74
2013-01-13 00:00:00
13500.000
258
8
Production Control
21
44
A. Scott
Wright
Senior Master Scheduler
8
148
2001-01-13 00:00:00
26100.000
172
7
Production
148
45
Fred
Northup
Senior Production Technician
7
210
2001-01-13 00:00:00
17500.000
282
4
Marketing
46
46
Sariya
Harnpadoungsataya
Senior Marketing Specialist
4
6
2001-01-13 00:00:00
16900.000
106
9
Human Resources
30
47
Willis
Johnson
Senior Recruiter
9
30
2014-01-14 00:00:00
20800.000
99
7
Production
148
48
Jun
Cao
Senior Production Technician
7
38
2001-01-15 00:00:00
13500.000
197
14
Facilities and Maintenance
218
49
Christian
Kleinerman
Senior Maintenance Supervisor
14
218
2001-01-15 00:00:00
22900.000
118
7
Production
148
50
Susan
Metters
Senior Production Technician
7
184
2001-01-15 00:00:00
12000.000
224