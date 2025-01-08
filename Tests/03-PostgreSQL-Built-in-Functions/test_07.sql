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
	('CI', 'CIV', 'Ivory Coast', 'XOF', 'AF', 21058798, 322460, 'Yamoussoukro'),
	('CK', 'COK', 'Cook Islands', 'NZD', 'OC', 21388, 240, 'Avarua'),
	('CL', 'CHL', 'Chile', 'CLP', 'SA', 16746491, 756950, 'Santiago'),
	('CM', 'CMR', 'Cameroon', 'XAF', 'AF', 19294149, 475440, 'Yaoundé'),
	('CN', 'CHN', 'China', 'CNY', 'AS', 1330044000, 9596960, 'Beijing'),
	('CO', NULL, 'Colombia', 'COP', 'SA', 47790000, 1138910, 'Bogotá'),
	('CR', 'CRI', 'Costa Rica', 'CRC', 'NA', 4516220, 51100, 'San José'),
	('CU', NULL, 'Cuba', 'CUP', 'NA', 11423000, 110860, 'Havana'),
	('EH', 'ESH', 'Western Sahara', 'MAD', 'AF', 273008, 266000, 'El Aaiún'),
	('ER', NULL, 'Eritrea', 'ERN', 'AF', 5792984, 121320, 'Asmara'),
	('ES', 'ESP', 'Spain', 'EUR', 'EU', 46505963, 504782, 'Madrid'),
	('GT', 'GTM', 'Guatemala', 'GTQ', 'NA', 13550440, 108890, 'Guatemala City'),
	('GU', 'GUM', 'Guam', 'USD', 'OC', 159358, 549, 'Hagåtña'),
	('SS', 'SSD', 'South Sudan', 'SSP', 'AF', 8260490, 644329, 'Juba'),
	('ST', 'STP', 'São Tomé and Príncipe', 'STD', 'AF', 175808, 1001, 'São Tomé');
	


-- Output
Yamoussoukro
Yamoussoukro
Avarua
Avarua
Santiago
Santiago
Yaoundé
Yaounde
Beijing
Beijing
Bogotá
Bogota
San José
San Jose
Havana
Havana
El Aaiún
El Aaiun
Asmara
Asmara
Madrid
Madrid
Guatemala City
Guatemala City
Hagåtña
Hagatna
Juba
Juba
São Tomé
Sao Tome