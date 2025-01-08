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


-- Input
INSERT INTO countries (country_code, iso_code, country_name, currency_code, continent_code, population, area_in_sq_km, capital) 
VALUES 	
	('IQ', 'IRQ', 'Iraq', 'IQD', 'AS', 29671605, 437072, 'Baghdad'),
	('AD', NULL, 'Andorra', 'EUR', 'EU', 84000, 468, 'Andorra la Vella'),
	('AE', 'ARE', 'United Arab Emirates', 'AED', 'AS', 4975593, 82880, 'Abu Dhabi'),
	('AF', NULL, 'Afghanistan', 'AFN', 'AS', 29121286, 647500, 'Kabul'),
	('AG', 'ATG', 'Antigua and Barbuda', 'XCD', 'NA', 86754, 443, 'St. John`s'),
	('AI', 'AIA', 'Anguilla', 'XCD', 'NA', 13254, 102, 'The Valley'),
	('AL', 'ALB', 'Albania', 'ALL', 'EU', 2986952, 28748, 'Tirana'),
	('AM', NULL, 'Armenia', 'AMD', 'AS', 2968000, 29800, 'Yerevan'),
	('AO', 'AGO', 'Angola', 'AOA', 'AF', 13068161, 1246700, 'Luanda'),
	('AQ', 'ATA', 'Antarctica', NULL, 'AN', 0, 14000000, NULL),
	('AR', NULL, 'Argentina', 'ARS', 'SA', 41343201, 2766890, 'Buenos Aires'),
	('AS', 'ASM', 'American Samoa', 'USD', 'OC', 57881, 199, 'Pago Pago'),
	('AT', 'AUT', 'Austria', 'EUR', 'EU', 8205000, 83858, 'Vienna'),
	('AU', NULL, 'Australia', 'AUD', 'OC', 21515754, 7686850, 'Canberra'),
	('AW', 'ABW', 'Aruba', 'AWG', 'NA', 71566, 193, 'Oranjestad'),
	('AX', NULL, 'Aland', 'EUR', 'EU', 26711, 1580, 'Mariehamn'),
	('AZ', NULL, 'Azerbaijan', 'AZN', 'AS', 8303512, 86600, 'Baku'),
	('BA', 'BIH', 'Bosnia and Herzegovina', 'BAM', 'EU', 4590000, 51129, 'Sarajevo'),
	('BB', 'BRB', 'Barbados', 'BBD', 'NA', 285653, 431, 'Bridgetown'),
	('BD', 'BGD', 'Bangladesh', 'BDT', 'AS', 156118464, 144000, 'Dhaka'),
	('BE', NULL, 'Belgium', 'EUR', 'EU', 10403000, 30510, 'Brussels');
	

-- Output
29671605
8
84000
5
4975593
7
29121286
8
86754	
5
13254
5
2986952
7
2968000
7
13068161
8
0
1
41343201
8
57881
5
8205000
7
21515754
8
71566
5
26711
5
8303512
7
4590000
7
285653
6
156118464
9
10403000
8