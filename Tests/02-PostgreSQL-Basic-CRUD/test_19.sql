-- Solution skeleton
CREATE TABLE IF NOT EXISTS company_chart (
  "id" SERIAL PRIMARY KEY,
  "Full Name" VARCHAR(200) NOT NULL,
  "Job Title" VARCHAR(80) NOT NULL,
  "Department ID" INT NOT NULL,
  "Manager ID" INT NOT NULL,
  CONSTRAINT employees_department_id_check CHECK ("Department ID" > 0),
  CONSTRAINT employees_manager_id_check CHECK ("Manager ID" > 0)
);

INSERT INTO company_chart ("Full Name", "Job Title", "Department ID", "Manager ID")
VALUES 
	('Peter Krebs', 'Production Control Manager', 8, 148),
	('Stuart Munson', 'Production Technician', 7, 197),
	('Greg Alderson', 'Production Technician', 7, 197),	
	('David Johnson', 'Production Technician', 7, 184),
	('Garrett Young', 'Production Technician', 7, 184),
	('Jian Shuo Wang', 'Production Technician', 7, 135),
	('Susan Eaton', 'Stocker', 15, 85),
	('Christian Kleinerman', 'Maintenance Supervisor', 14, 218),
	('Susan Metters', 'Production Technician', 7, 184),
	('Reuben D`sa', 'Production Supervisor', 7, 21),
	('George Li', 'Production Technician', 7, 184),
	('Gary Yukish', 'Production Technician', 7, 84),
	('Pilar Ackerman', 'Shipping and Receiving Supervisor', 15, 21),
	('David Yalovsky', 'Production Technician', 7, 184),
	('David Yalovsky', 'Production Technician', 7, 184),
	('Marc Ingle', 'Production Technician', 7, 184),
	('Gigi Matthew', 'Research and Development Engineer', 6, 158),
	('Eugene Zabokritski', 'Production Technician', 7, 184),
	('Barbara Decker', 'Production Technician', 7, 182),
	('Michiko Osada', 'Production Technician', 7, 173),
	('Benjamin Martin', 'Production Technician', 7, 184),
	('Reed Koch', 'Production Technician', 7, 184),
	('Linda Randall', 'Production Technician', 7, 143),
	('Alan Brewer', 'Scheduling Assistant', 8, 44),
	('David Lawrence', 'Production Technician', 7, 184),
	('Russell King', 'Production Technician', 7, 184),
	('Jack Richins', 'Production Supervisor', 7, 21),
	('John Frum', 'Production Technician', 7, 184),
	('Merav Netz', 'Production Technician', 7, 173),
	('Jan Miksovsky', 'Production Technician', 7, 184);
	

-- Input
SELECT COUNT(*) AS record_count
FROM view_company_chart;


SELECT DISTINCT lower(table_name)
FROM information_schema.views
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_company_chart';


SELECT lower(column_name)
FROM information_schema.columns
WHERE lower(table_schema) = 'public'
    AND lower(table_name) = 'view_company_chart';

	
SELECT * FROM public.view_company_chart
	
	
-- Output
David Johnson
Production Technician
Garrett Young
Production Technician
Susan Metters
Production Technician
George Li
Production Technician
David Yalovsky
Production Technician
David Yalovsky
Production Technician
Marc Ingle
Production Technician
Eugene Zabokritski
Production Technician
Benjamin Martin
Production Technician
Reed Koch
Production Technician
David Lawrence
Production Technician
Russell King
Production Technician
John Frum
Production Technician
Jan Miksovsky
Production Technician
