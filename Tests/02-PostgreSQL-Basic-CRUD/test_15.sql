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
	('Guy', 'Gilbert', 'R', 'Production Technician', 7, 16, '1998-07-31', 12500.0000, 166),
	('Kevin', 'Brown', 'F', 'Marketing Assistant', 4, 6, '1999-02-26', 13500.0000, 102),
	('Roberto', 'Tamburello', 'N', 'Engineering Manager', 1, 12, '1999-12-12', 43300.0000, 193),
	('Rob', 'Walters', 'M', 'Tool Designer', 2, 3, '2000-01-05', 29800.0000, 155),
	('Thierry', 'D`Hers', 'B', 'Tool Designer', 5, 19, '2000-01-11', 25000.0000, 40),
	('David', 'Bradley', 'M', 'Marketing Manager', 5, 109, '2000-01-20', 37500.0000, 199);


-- Input
SELECT * FROM public.company_chart;

SELECT DISTINCT lower(table_name) AS t
FROM information_schema.tables
WHERE table_schema = 'public'
    and lower(table_name) = 'company_chart';
	
	
SELECT CONCAT_WS(' - ', lower(column_name), lower(data_type))
FROM information_schema.columns 
WHERE table_schema = 'public'
  and lower(table_name) = 'company_chart';


-- Output
Guy Gilbert
Production Technician
7
16
Kevin Brown
Marketing Assistant
4
6
Roberto Tamburello
Engineering Manager
1
12
Rob Walters
Tool Designer
2
3
Thierry D`Hers
Tool Designer
5
19
David Bradley
Marketing Manager
5
109