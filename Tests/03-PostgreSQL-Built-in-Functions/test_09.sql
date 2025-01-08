-- Solution skeleton
CREATE TABLE IF NOT EXISTS continents (
  "id" SERIAL PRIMARY KEY,
  continent_code CHAR(2) NOT NULL,
  continent_name VARCHAR(50) NOT NULL
);


-- Input
INSERT INTO continents (continent_code, continent_name) 
VALUES 	
	('AF', '    Africa'),
	('AN', 'Antarctica    '),
	('AS', '    Asia'),
	('EU', 'Europe    '),
	('NA', '    North America'),
	('OC', 'Oceania    '),
	('SA', '    South America');
	

-- Output
    Africa
	Africa
Antarctica    
Antarctica
    Asia
	Asia
Europe    
Europe
    North America
	North America
Oceania    
Oceania
    South America
	South America