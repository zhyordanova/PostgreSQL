-- Solution skeleton
CREATE TABLE IF NOT EXISTS departments (
  "id" SERIAL PRIMARY KEY,
  department VARCHAR(150) NOT NULL,
  manager_id INT NOT NULL,
  CONSTRAINT departments_manager_id_check CHECK (manager_id > 0)
);


INSERT INTO departments (
	department, manager_id
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
	('Human Resources', 30);
	
	
-- Input
SELECT * FROM public.departments
ORDER BY id ASC 


-- Output
1
Engineering
12
2
Tool Design
4
3
Sales
273
4
Marketing
46
5
Purchasing
6
6
Research and Development
42
7
Production
148
8
Production Control
21
9
Human Resources
30
10
Finance
3
11
Information Services
42
12
Document Control
90
13
Quality Assurance
274
14
Facilities and Maintenance
218
15
Shipping and Receiving
85
16
Executive
109