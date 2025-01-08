-- Solution skeleton
CREATE TABLE IF NOT EXISTS peaks (
  "id" SERIAL PRIMARY KEY,
  peak_name VARCHAR(50) NOT NULL,
  elevation INT NOT NULL,
  mountain_id INT NOT NULL,
  CONSTRAINT peaks_elevation_check CHECK (elevation >= 0),
  CONSTRAINT peaks_mountain_id_check CHECK (mountain_id >= 0)
);


CREATE TABLE IF NOT EXISTS mountains (
  "id" SERIAL PRIMARY KEY,
  mountain_range VARCHAR(50) NOT NULL
);


-- Input
INSERT INTO peaks (peak_name, elevation, mountain_id) 
VALUES 	
	('Aconcagua', 6962, 3),
	('Botev', 2376, 4),
	('Carstensz Pyramid', 4884, 21),
	('Damavand', 5610, 2),
	('Dykh-Tau', 5205, 5),
	('Elbrus', 5642, 5),
	('Everest', 8848, 9),
	('Julianatop', 4760, 10),
	('K2', 8611, 11),
	('Kangchenjunga', 8586, 9),
	('Kilimanjaro', 5895, 13),
	('Malyovitsa', 2729, 17),
	('Mawenzi', 5149, 14),
	('Monte Pissis', 6793, 3),
	('Mount Giluwe', 4368, 20),
	('Mount Kenya', 5199, 12),
	('Mount Logan', 5959, 18),
	('Mount McKinley', 6194, 1),
	('Mount Shinn', 4661, 19),
	('Mount Sidley', 4285, 8),
	('Mount Tyree', 4852, 19),
	('Musala', 2925, 17),
	('Ojos del Salado', 6893, 3),
	('Pico de Orizaba', 5636, 22),
	('Puncak Trikora', 4750, 15),
	('Shkhara', 5193, 5),
	('Vihren', 2914, 16),
	('Vinson Massif', 4897, 7),
	('Golyam Perelik', 2191, 23),
	('Shirokolashki Snezhnik', 2188, 23),
	('Golyam Persenk', 2091, 23),
	('Batashki Snezhnik', 2082, 23),
	('Cerro Bonete', 6759, 3),
	('Galán', 5912, 3),
	('Mercedario', 6720, 3),
	('Pissis', 6795, 3),
	('Lhotse', 8516, 9),
	('Makalu', 8462, 9),
	('Cho Oyu', 8201, 9),
	('Kutelo', 2908, 16),
	('Banski Suhodol', 2884, 16),
	('Golyam Polezhan', 2851, 16),
	('Kamenitsa', 2822, 16),
	('Malak Polezhan', 2822, 16),
	('Malka Musala', 2902, 17),
	('Orlovets', 2685, 17),
	('Vezhen', 2198, 4),
	('Kom', 2016, 4);
	
	

INSERT INTO mountains (mountain_range) 
VALUES 	
	('Alaska Range'),
	('Alborz'),
	('Andes'),
	('Balkan Mountains'),
	('Caucasus'),
	('Cordillera Neovolcanica'),
	('Ellsworth Mountains'),
	('Executive Committee Range'),
	('Himalayas'),
	('Jayawijaya Mountains'),
	('Karakoram'),
	('Kenyan Highlands'),
	('Kilimanjaro'),
	('Kilimanjaro Region'),
	('Maoke Mountains'),
	('Pirin'),
	('Rila'),
	('Saint Elias Mountains'),
	('Sentinel Range'),
	('Southern Highlands'),
	('The Sudirman Range'),
	('Trans-Mexican Volcanic Belt'),
	('Rhodope Mountains'),
	('Vitosha'),
	('Strandza'),
	('Monte Rosa');
	
	
-- Output
Andes Aconcagua
15
120
Balkan Mountains Botev
22
176
The Sudirman Range Carstensz Pyramid
36
296
Alborz Damavand
15
120
Caucasus Dykh-Tau
17
136
Caucasus Elbrus
15
120
Himalayas Everest
17
136
Jayawijaya Mountains Julianatop
31
248
Karakoram K2
12
96
Himalayas Kangchenjunga
23
184
Kilimanjaro Kilimanjaro
23
184
Rila Malyovitsa
15
120
Kilimanjaro Region Mawenzi
26
208
Andes Monte Pissis
18
144
Southern Highlands Mount Giluwe
31
248
Kenyan Highlands Mount Kenya
28
224
Saint Elias Mountains Mount Logan
33
264
Alaska Range Mount McKinley
27
216
Sentinel Range Mount Shinn
26
208
Executive Committee Range Mount Sidley
38
304
Sentinel Range Mount Tyree
26
208
Rila Musala
11
88
Andes Ojos del Salado
21
168
Trans-Mexican Volcanic Belt Pico de Orizaba
43
344
Maoke Mountains Puncak Trikora
30
240
Caucasus Shkhara
16
128
Pirin Vihren
12
96
Ellsworth Mountains Vinson Massif
33
264
Rhodope Mountains Golyam Perelik
32
256
Rhodope Mountains Shirokolashki Snezhnik
40
320
Rhodope Mountains Golyam Persenk
32
256
Rhodope Mountains Batashki Snezhnik
35
280
Andes Cerro Bonete
18
144
Andes Galán
11
96
Andes Mercedario
16
128
Andes Pissis
12
96
Himalayas Lhotse
16
128
Himalayas Makalu
16
128
Himalayas Cho Oyu
17
136
Pirin Kutelo
12
96
Pirin Banski Suhodol
20
160
Pirin Golyam Polezhan
21
168
Pirin Kamenitsa
15
120
Pirin Malak Polezhan
20
160
Rila Malka Musala
17
136
Rila Orlovets
13
104
Balkan Mountains Vezhen
23
184
Balkan Mountains Kom
20
160