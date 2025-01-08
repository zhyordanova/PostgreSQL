-- Solution skeleton
CREATE TABLE IF NOT EXISTS continents (
  "id" SERIAL PRIMARY KEY,
  continent_code CHAR(2) NOT NULL,
  continent_name VARCHAR(50) NOT NULL
);


INSERT INTO continents (continent_code, continent_name) 
VALUES 	
	('AF', 'Africa'),
	('AN', 'Antarctica'),
	('AS', 'Asia'),
	('EU', 'Europe'),
	('NA', 'North America'),
	('OC', 'Oceania'),
	('SA', 'South America');
	
	
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
	('AF', NULL, 'Afghanistan', 'AFN', 'AS', 29121286, 647500, 'Kabul'),
	('AX', NULL, 'Aland', 'EUR', 'EU', 26711, 1580, 'Mariehamn'),
	('BS', 'BHS', 'Bahamas', 'BSD', 'NA', 301790, 13940, 'Nassau'),
	('BH', 'BHR', 'Bahrain', 'BHD', 'AS', 738004, 665, 'Manama'),
	('KH', 'KHM', 'Cambodia', 'KHR', 'AS', 14453680, 181040, 'Phnom Penh'),
	('CM', 'CMR', 'Cameroon', 'XAF', 'AF', 19294149, 475440, 'Yaoundé'),
	('CD', 'COD', 'Democratic Republic of the Congo', 'CDF', 'AF', 70916439, 2345410, 'Kinshasa'),
	('TL', 'TLS', 'East Timor', 'USD', 'OC', 1154625, 15007, 'Dili'),
	('FK', 'FLK', 'Falkland Islands', 'FKP', 'SA', 2638, 12173, 'Stanley');
	
	
CREATE TABLE IF NOT EXISTS currencies (
  "id" SERIAL PRIMARY KEY,
  currency_code CHAR(3) NOT NULL,
  description VARCHAR(200) NOT NULL
);
	
	
INSERT INTO currencies (currency_code, description) 
VALUES
	('AFN', 'Afghanistan Afghani'),
	('EUR', 'Euro Member Countries'),
	('BSD', 'Bahamas Dollar'),
	('BHD', 'Bahrain Dinar'),
	('KHR', 'Cambodia Riel'),
	('XAF', 'Communauté Financière Africaine (BEAC) CFA Franc BEAC'),
	('CDF', 'Congo/Kinshasa Franc'),
	('USD', 'United States Dollar'),
	('FKP', 'Falkland Islands (Malvinas) Pound');
	

-- Input
SELECT DISTINCT lower(table_name)
FROM information_schema.views
WHERE table_schema = 'public'
    AND lower(table_name) = 'view_continents_countries_currencies_details';
	
	
SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    AND lower(table_name) = 'view_continents_countries_currencies_details';
	
	
SELECT * FROM public.view_continents_countries_currencies_details
	
	
-- Output
Asia: AS
Afghanistan - Kabul - 647500 - km2
Afghanistan Afghani (AFN)
Europe: EU
Aland - Mariehamn - 1580 - km2
Euro Member Countries (EUR)
North America: NA
Bahamas - Nassau - 13940 - km2
Bahamas Dollar (BSD)
Asia: AS
Bahrain - Manama - 665 - km2
Bahrain Dinar (BHD)
Asia: AS
Cambodia - Phnom Penh - 181040 - km2
Cambodia Riel (KHR)
Africa: AF
Cameroon - Yaoundé - 475440 - km2
Communauté Financière Africaine (BEAC) CFA Franc BEAC (XAF)
Africa: AF
Democratic Republic of the Congo - Kinshasa - 2345410 - km2
Congo/Kinshasa Franc (CDF)
Oceania: OC
East Timor - Dili - 15007 - km2
United States Dollar (USD)
South America: SA
Falkland Islands - Stanley - 12173 - km2
Falkland Islands (Malvinas) Pound (FKP)