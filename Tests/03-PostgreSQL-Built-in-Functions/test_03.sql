-- Solution skeleton
CREATE TABLE IF NOT EXISTS countries (
  "id" SERIAL PRIMARY KEY,
  country_code CHAR(2) NOT NULL,
  iso_code CHAR(3),
  country_name VARCHAR(45) NOT NULL,
  capital VARCHAR(45) DEFAULT NULL,
  currency_code CHAR(3) DEFAULT NULL,
  continent_code CHAR(2) NOT NULL,
  population INT NOT NULL,
  area_in_sq_km INT NOT NULL,
  CONSTRAINT countries_population_check CHECK (population >= 0),
  CONSTRAINT countries_are_in_sq_km_check CHECK (area_in_sq_km >= 0)
);


INSERT INTO countries (country_code, iso_code, country_name, currency_code, continent_code, population, area_in_sq_km, capital) 
VALUES 	
	('AD', NULL, 'Andorra', 'EUR', 'EU', 84000, 468, 'Andorra la Vella'),
	('AE', 'ARE', 'United Arab Emirates', 'AED', 'AS', 4975593, 82880, 'Abu Dhabi'),
	('AF', NULL, 'Afghanistan', 'AFN', 'AS', 29121286, 647500, 'Kabul'),
	('AG', 'ATG', 'Antigua and Barbuda', 'XCD', 'NA', 86754, 443, 'St. John`s'),
	('AI', 'AIA', 'Anguilla', 'XCD', 'NA', 13254, 102, 'The Valley'),
	('AL', 'ALB', 'Albania', 'ALL', 'EU', 2986952, 28748, 'Tirana'),
	('AM', NULL, 'Armenia', 'AMD', 'AS', 2968000, 29800, 'Yerevan'),
	('AO', 'AGO', 'Angola', 'AOA', 'AF', 13068161, 1246700, 'Luanda'),
	('AQ', 'ATA', 'Antarctica', NULL, 'AN', 0, 14000000, NULL),
	('AR', NULL, 'Argentina', 'ARS', 'SA', 41343201, 2766890, 'Buenos Aires');


-- Input
SELECT DISTINCT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
	and lower(column_name) = 'capital_code';


SELECT 
	"id",
	capital,
	capital_code
FROM 
	countries1;



-- Output
1
Andorra la Vella
An
2
Abu Dhabi
Ab
3
Kabul
Ka
4
St. John`s
St
5
The Valley
Th
6
Tirana
Ti
7
Yerevan
Ye
8
Luanda
Lu
9


10
Buenos Aires
Bu