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
	


SELECT DISTINCT lower(table_name)
FROM information_schema.views
WHERE table_schema = 'public'
    AND lower(table_name) = 'view_river_info';
	
	
SELECT lower(column_name)
FROM information_schema.columns
WHERE table_schema = 'public'
    AND lower(table_name) = 'view_river_info';

	
	
SELECT COUNT(*) AS record_count
FROM view_river_info;


-- Input	
SELECT * FROM public.view_river_info;
	
	
-- Output
The river Amazon flows into the Atlantic Ocean and is 6400 kilometers long.
The river Amur flows into the Sea of Okhotsk and is 4444 kilometers long.
The river Brahmaputra flows into the Ganges and is 2948 kilometers long.
The river Congo flows into the Atlantic Ocean and is 4700 kilometers long.
The river Danube flows into the Black Sea and is 2888 kilometers long.
The river Indus flows into the Arabian Sea and is 3180 kilometers long.
The river Lena flows into the Laptev Sea and is 4400 kilometers long.
The river Lower Tunguska flows into the Yenisei and is 2989 kilometers long.
The river Mackenzie flows into the Beaufort Sea and is 4241 kilometers long.
The river Madeira flows into the Amazon and is 3380 kilometers long.
The river Mekong flows into the South China Sea and is 4350 kilometers long.
The river Mississippi flows into the Gulf of Mexico and is 6275 kilometers long.
The river Murray flows into the Southern Ocean and is 3672 kilometers long.
The river Niger flows into the Gulf of Guinea and is 4200 kilometers long.
The river Nile flows into the Mediterranean and is 6650 kilometers long.
The river Ob flows into the Gulf of Ob and is 5410 kilometers long.
The river Paraná flows into the Río de la Plata and is 4880 kilometers long.
The river Purús flows into the Amazon and is 3211 kilometers long.
The river Rio Grande flows into the Gulf of Mexico and is 3057 kilometers long.
The river Saint Lawrence flows into the Gulf of Saint Lawrence and is 3058 kilometers long.
The river Salween flows into the Andaman Sea and is 3060 kilometers long.
The river São Francisco flows into the Atlantic Ocean and is 3180 kilometers long.
The river Shatt al-Arab flows into the Persian Gulf and is 3596 kilometers long.
The river Syr Darya flows into the Aral Sea and is 3078 kilometers long.
The river Tocantins flows into the Atlantic Ocean, Amazon and is 3650 kilometers long.
The river Volga flows into the Caspian Sea and is 3645 kilometers long.
The river Yangtze flows into the East China Sea and is 6300 kilometers long.
The river Yellow River flows into the Bohai Sea and is 5464 kilometers long.
The river Yenisei flows into the Kara Sea and is 5539 kilometers long.
The river Yukon flows into the Bering Sea and is 3185 kilometers long.