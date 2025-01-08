-- Solution skeleton
CREATE TABLE IF NOT EXISTS rivers (
  "id" SERIAL PRIMARY KEY,
  river_name VARCHAR(60) NOT NULL,
  "length" INT NOT NULL,
  drainage_area INT NOT NULL,
  average_discharge INT NOT NULL,
  outflow VARCHAR(70) NOT NULL,
  CONSTRAINT rivers_length_check CHECK ("length" >= 0),
  CONSTRAINT rivers_drainage_area_check CHECK (drainage_area >= 0),
  CONSTRAINT rivers_average_discharge_check CHECK (average_discharge >= 0)
);


INSERT INTO rivers (river_name, "length", drainage_area, average_discharge, outflow) 
VALUES 	
	('Nile', 6650, 3254555, 5100, 'Mediterranean'),
	('Amazon', 6400, 7050000, 219000, 'Atlantic Ocean'),
	('Yangtze', 6300, 1800000, 31900, 'East China Sea'),
	('Mississippi', 6275, 2980000, 16200, 'Gulf of Mexico'),
	('Yenisei', 5539, 2580000, 19600, 'Kara Sea'),
	('Yellow River', 5464, 745000, 2110, 'Bohai Sea'),
	('Ob', 5410, 2990000, 12800, 'Gulf of Ob'),
	('Paraná', 4880, 2582672, 18000, 'Río de la Plata'),
	('Congo', 4700, 3680000, 41800, 'Atlantic Ocean'),
	('Amur', 4444, 1855000, 11400, 'Sea of Okhotsk'),
	('Lena', 4400, 2490000, 17100, 'Laptev Sea'),
	('Mekong', 4350, 810000, 16000, 'South China Sea'),
	('Mackenzie', 4241, 1790000, 10300, 'Beaufort Sea'),
	('Niger', 4200, 2090000, 9570, 'Gulf of Guinea'),
	('Murray', 3672, 1061000, 7670, 'Southern Ocean'),
	('Tocantins', 3650, 950000, 13598, 'Atlantic Ocean, Amazon'),
	('Volga', 3645, 1380000, 8080, 'Caspian Sea'),
	('Shatt al-Arab', 3596, 884000, 8560, 'Persian Gulf'),
	('Madeira', 3380, 1485200, 31200, 'Amazon'),
	('Purús', 3211, 63166, 8400, 'Amazon'),
	('Yukon', 3185, 850000, 6210, 'Bering Sea'),
	('Indus', 3180, 960000, 7160, 'Arabian Sea'),
	('São Francisco', 3180, 610000, 3300, 'Atlantic Ocean'),
	('Syr Darya', 3078, 219000, 7030, 'Aral Sea'),
	('Salween', 3060, 324000, 3153, 'Andaman Sea'),
	('Saint Lawrence', 3058, 1030000, 10100, 'Gulf of Saint Lawrence'),
	('Rio Grande', 3057, 570000, 820, 'Gulf of Mexico'),
	('Lower Tunguska', 2989, 473000, 3600, 'Yenisei'),
	('Brahmaputra', 2948, 1730000, 19200, 'Ganges'),
	('Danube', 2888, 817000, 7130, 'Black Sea');
	


-- Input
CREATE VIEW view_river_info AS 
SELECT CONCAT(
	'The river', ' ', r.river_name, ' ', 'flows into the', ' ',  
	r.outflow, ' ', 'and is', ' ', r."length", ' ', 'kilometers long.'
	) AS "River Information"
FROM rivers AS r
ORDER BY r.river_name;


-- Output
6400
4444
2948
4700
2888
3180
4400
2989
4241
3380
4350
6275
3672
4200
6650
5410
4880
3211
3057
3058
3060
3180
3596
3078
3650
3645
6300
5464
5539
3185