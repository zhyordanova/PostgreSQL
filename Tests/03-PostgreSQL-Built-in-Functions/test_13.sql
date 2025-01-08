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
INSERT INTO peaks (
	peak_name, elevation, mountain_id
) 
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
Acon
Aconc
Botev
Bote
B
Carstensz Pyramid
Cars
Carstensz Pyr
Damavand
Dama
Dama
Dykh-Tau
Dykh
Dykh
Elbrus
Elbr
El
Everest
Ever
Eve
Julianatop
Juli
Julian
K2
K2

Kangchenjunga
Kang
Kangchenj
Kilimanjaro
Kili
Kiliman
Malyovitsa
Maly
Malyov
Mawenzi
Mawe
Maw
Monte Pissis
Mont
Monte Pi
Mount Giluwe
Moun
Mount Gi
Mount Kenya
Moun
Mount K
Mount Logan
Moun
Mount L
Mount McKinley
Moun
Mount McKi
Mount Shinn
Moun
Mount S
Mount Sidley
Moun
Mount Si
Mount Tyree
Moun
Mount T
Musala
Musa
Mu
Ojos del Salado
Ojos
Ojos del Sa
Pico de Orizaba
Pico
Pico de Ori
Puncak Trikora
Punc
Puncak Tri
Shkhara
Shkh
Shk
Vihren
Vihr
Vi
Vinson Massif
Vins
Vinson Ma
Golyam Perelik
Goly
Golyam Per
Shirokolashki Snezhnik
Shir
Shirokolashki Snez
Golyam Persenk
Goly
Golyam Per
Batashki Snezhnik
Bata
Batashki Snez
Cerro Bonete
Cerr
Cerro Bo
Galán
Galá
G
Mercedario
Merc
Merced
Pissis
Piss
Pi
Lhotse
Lhot
Lh
Makalu
Maka
Ma
Cho Oyu
Cho 
Cho
Kutelo
Kute
Ku
Banski Suhodol
Bans
Banski Suh
Golyam Polezhan
Goly
Golyam Pole
Kamenitsa
Kame
Kamen
Malak Polezhan
Mala
Malak Pole
Malka Musala
Malk
Malka Mu
Orlovets
Orlo
Orlo
Vezhen
Vezh
Ve
Kom
Kom
