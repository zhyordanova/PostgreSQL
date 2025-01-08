-- Solution skeleton
CREATE TABLE IF NOT EXISTS peaks (
  "id" SERIAL PRIMARY KEY,
  peak_name VARCHAR(50) NOT NULL,
  elevation INT NOT NULL,
  mountain_id INT NOT NULL,
  CONSTRAINT peaks_elevation_check CHECK (elevation >= 0),
  CONSTRAINT peaks_mountain_id_check CHECK (mountain_id >= 0)
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
	
	
-- Output
Aconcagua
Aconcagua
Botev
Botev
Carstensz Pyramid
Carstensz Pyramid
Damavand
Damavand
Dykh-Tau
Dykh-Tau
Elbrus
Elbrus
Everest
Everest
Julianatop
Julianatop
K2
K2
Kangchenjunga
Kangchenjunga
Kilimanjaro
Kilimanjaro
alyovitsa
Malyovitsa
awenzi
Mawenzi
onte Pissis
Monte Pissis
ount Giluwe
Mount Giluwe
ount Kenya
Mount Kenya
ount Logan
Mount Logan
ount McKinley
Mount McKinley
ount Shinn
Mount Shinn
ount Sidley
Mount Sidley
ount Tyree
Mount Tyree
usala
Musala
Ojos del Salado
Ojos del Salado
Pico de Orizaba
Pico de Orizaba
Puncak Trikora
Puncak Trikora
Shkhara
Shkhara
Vihren
Vihren
Vinson Massif
Vinson Massif
Golyam Perelik
Golyam Perelik
Shirokolashki Snezhnik
Shirokolashki Snezhnik
Golyam Persenk
Golyam Persenk
Batashki Snezhnik
Batashki Snezhnik
Cerro Bonete
Cerro Bonete
Galán
Galán
ercedario
Mercedario
Pissis
Pissis
Lhotse
Lhotse
akalu
Makalu
Cho Oyu
Cho Oyu
Kutelo
Kutelo
Banski Suhodol
Banski Suhodol
Golyam Polezhan
Golyam Polezhan
Kamenitsa
Kamenitsa
alak Polezhan
Malak Polezhan
alka Musala
Malka Musala
Orlovets
Orlovets
Vezhen
Vezhen
Kom
Ko