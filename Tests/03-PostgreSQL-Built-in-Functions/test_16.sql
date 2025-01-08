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


INSERT INTO countries (
	country_code, iso_code, country_name, currency_code, continent_code, population, area_in_sq_km, capital
) 
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
	
	

-- Input
SELECT * FROM public.countries
ORDER BY id ASC;
	

-- Output
1
da

Andorra
Andorra la Vella
EUR
EU
84000
468
2
ea
ARE
United Arab Emirates
Abu Dhabi
AED
AS
4975593
82880
3
fa

Afghanistan
Kabul
AFN
AS
29121286
647500
4
ga
ATG
Antigua and Barbuda
St. John`s
XCD
NA
86754
443
5
ia
AIA
Anguilla
The Valley
XCD
NA
13254
102
6
la
ALB
Albania
Tirana
ALL
EU
2986952
28748
7
ma

Armenia
Yerevan
AMD
AS
2968000
29800
8
oa
AGO
Angola
Luanda
AOA
AF
13068161
1246700
9
qa
ATA
Antarctica


AN
0
14000000
10
ra

Argentina
Buenos Aires
ARS
SA
41343201
2766890
11
sa
ASM
American Samoa
Pago Pago
USD
OC
57881
199
12
ta
AUT
Austria
Vienna
EUR
EU
8205000
83858
13
ua

Australia
Canberra
AUD
OC
21515754
7686850
14
wa
ABW
Aruba
Oranjestad
AWG
NA
71566
193
15
xa

Aland
Mariehamn
EUR
EU
26711
1580
16
za

Azerbaijan
Baku
AZN
AS
8303512
86600
17
ab
BIH
Bosnia and Herzegovina
Sarajevo
BAM
EU
4590000
51129
18
bb
BRB
Barbados
Bridgetown
BBD
NA
285653
431
19
db
BGD
Bangladesh
Dhaka
BDT
AS
156118464
144000
20
eb

Belgium
Brussels
EUR
EU
10403000
30510