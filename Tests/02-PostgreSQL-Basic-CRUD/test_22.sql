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
	
CREATE VIEW 
	view_company_chart AS 
SELECT 
	"Full Name",
	"Job Title"
FROM 
	company_chart
WHERE
	"Manager ID" = 184;
	
	
SELECT NOT EXISTS (
    SELECT 1
    FROM information_schema.views
    WHERE table_schema = 'public'
        AND table_name = 'view_company_chart'
) AS drop_status;