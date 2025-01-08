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
agua
cagua
Botev
otev
v
Carstensz Pyramid
amid
tensz Pyramid
Damavand
vand
vand
Dykh-Tau
-Tau
-Tau
Elbrus
brus
us
Everest
rest
est
Julianatop
atop
anatop
K2
K2

Kangchenjunga
unga
chenjunga
Kilimanjaro
jaro
manjaro
Malyovitsa
itsa
ovitsa
Mawenzi
enzi
nzi
Monte Pissis
ssis
e Pissis
Mount Giluwe
luwe
t Giluwe
Mount Kenya
enya
t Kenya
Mount Logan
ogan
t Logan
Mount McKinley
nley
t McKinley
Mount Shinn
hinn
t Shinn
Mount Sidley
dley
t Sidley
Mount Tyree
yree
t Tyree
Musala
sala
la
Ojos del Salado
lado
 del Salado
Pico de Orizaba
zaba
 de Orizaba
Puncak Trikora
kora
ak Trikora
Shkhara
hara
ara
Vihren
hren
en
Vinson Massif
ssif
on Massif
Golyam Perelik
elik
am Perelik
Shirokolashki Snezhnik
hnik
okolashki Snezhnik
Golyam Persenk
senk
am Persenk
Batashki Snezhnik
hnik
shki Snezhnik
Cerro Bonete
nete
o Bonete
Galán
alán
n
Mercedario
ario
edario
Pissis
ssis
is
Lhotse
otse
se
Makalu
kalu
lu
Cho Oyu
 Oyu
 Oyu
Kutelo
telo
lo
Banski Suhodol
odol
ki Suhodol
Golyam Polezhan
zhan
am Polezhan
Kamenitsa
itsa
nitsa
Malak Polezhan
zhan
k Polezhan
Malka Musala
sala
a Musala
Orlovets
vets
vets
Vezhen
zhen
en
Kom
Kom
