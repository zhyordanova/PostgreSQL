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
	('Bryan', 'Baker', 'D', 'Production Technician', 7, 7, '2001-02-22', 12500.0000, 166),
	('Kim', 'Abercrombie', 'B', 'Production Technician', 7, 16, '2002-02-17', 12500.0000, 56),
	('David', 'Campbell', 'R', 'Sales Representative', 3, 268, '2003-07-01', 23100.0000, 13),
	('Dan', 'Bacon', 'K', 'Application Specialist', 11, 42, '2001-02-12', 27400.0000, 126),
	('John', 'Campbell', 'T', 'Production Supervisor', 7, 21, '2000-04-18', 25000.0000, 245),
	('Mary', 'Baker', 'R', 'Production Technician', 7, 25, '2002-01-26', 13500.0000, 246),
	('Syed', 'Abbas', 'E', 'Pacific Sales Manager', 3, 273, '2005-04-15', 48100.0000, 49);


SELECT DISTINCT lower(table_name)
FROM information_schema.views
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_initials';





-- Input
SELECT * FROM public.view_initials


-- Output
Sy
Abbas
Ki
Abercrombie
Da
Bacon
Br
Baker
Ma
Baker
Jo
Campbell
Da
Campbell