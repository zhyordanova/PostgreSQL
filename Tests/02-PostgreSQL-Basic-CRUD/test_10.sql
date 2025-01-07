-- Solution skeleton
CREATE TABLE IF NOT EXISTS employees_projects (
  employee_id INT NOT NULL,
  project_id INT NOT NULL,
  CONSTRAINT employees_projects_employee_id_check CHECK (employee_id > 0),
  CONSTRAINT employees_projects_project_id_check CHECK (project_id > 0)
);


-- Input
INSERT INTO employees_projects (employee_id, project_id) 
VALUES 
	(3, 1),
	(200, 3),
	(15, 1),
	(234, 127),
	(18, 1),
	(185, 127),
	(8, 2),
	(90, 127),
	(37, 2),
	(38, 2),
	(160, 127),
	(200, 23),
	(10, 3),
	(118, 127),
	(200, 37),
	(39, 3),
	(51, 3),
	(200, 51),
	(1, 4),
	(40, 4),
	(250, 77),
	(245, 127),
	(250, 114);
	

-- Output
200
3
200
23
200
37
200
51
250
77
250
114