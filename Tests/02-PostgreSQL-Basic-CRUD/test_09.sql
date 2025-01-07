-- Solution skeleton
CREATE TABLE IF NOT EXISTS addresses (
  "id" SERIAL PRIMARY KEY,
  street VARCHAR(100) NOT NULL,
  "number" INT NOT NULL,
  city_id INT NOT NULL,
  CONSTRAINT addresses_city_id_check CHECK (city_id > 0)
);


-- Input
INSERT INTO addresses ("number", street, city_id) 
VALUES
	(108, 'Lakeside Court', 5),
	(1343, 'Prospect St', 5),
	(1648, 'Eastgate Lane', 5),
	(2284, 'Azalea Avenue', 5),
	(2947, 'Vine Lane', 5),
	(3067, 'Maya', 5),
	(3197, 'Thornhill Place', 5),
	(3284, 'S. Blank Avenue', 5),
	(332, 'Laguna Niguel', 5),
	(3454, 'Bel Air Drive', 5),
	(3670, 'All Ways Drive', 5),
	(3708, 'Montana', 5),
	(3711, 'Rollingwood Dr', 5),
	(3919, 'Pinto Road', 5),
	(4311, 'Clay Rd', 5),
	(4777, 'Rockne Drive', 5),
	(5678, 'Clear Court', 5),
	(5863, 'Sierra', 5),
	(6058, 'Hill Street', 5),
	(6118, 'Grasswood Circle', 5),
	(620, 'Woodside Ct.', 5),
	(6307, 'Greenbelt Way', 5),
	(6448, 'Castle Court', 5),
	(6774, 'Bonanza', 5),
	(6968, 'Wren Ave.', 5),
	(7221, 'Peachwillow Street', 5),
	(7270, 'Pepper Way', 5),
	(7396, 'Stratton Circle', 5),
	(7808, 'Brown St.', 5),
	(7902, 'Grammercy Lane', 5),
	(8668, 'Via Neruda', 5),
	(8684, 'Military East', 5),
	(8751, 'Norse Drive', 5),
	(9320, 'Teakwood Dr.', 5),
	(9435, 'Breck Court', 5),
	(9745, 'Bonita Ct.', 5),
	(951, 'Pascalstr', 31),
	(94, 'rue Descartes', 30),
	(1226, 'Shoe St.', 8),
	(1399, 'Firestone Drive', 8),
	(1902, 'Santa Cruz', 8),
	(1970, 'Napa Ct.', 8),
	(250, 'Race Court', 8),
	(5672, 'Hale Dr.', 8),
	(5747, 'Shirley Drive', 8),
	(6387, 'Scenic Avenue', 8),
	(6872, 'Thornwood Dr.', 8),
	(7484, 'Roundtree Drive', 8),
	(8157, 'W. Book', 8),
	(9539, 'Glenside Dr', 8),
	(9833, 'Mt. Dias Blv.', 8),
	(10203, 'Acorn Avenue', 2),
	(3997, 'Via De Luna', 23),
	(6, 'Downshire Way', 23),
	(1411, 'Ranch Drive', 15),
	(3074, 'Arbor Drive', 15),
	(390, 'Ridgewood Ct.', 15),
	(9666, 'Northridge Ct.', 15),
	(9752, 'Jeanne Circle', 15),
	(8154, 'Via Mexico', 27),
	(80, 'Sunview Terrace', 26),
	(1825, 'Corte Del Prado', 17),
	(2598, 'La Vista Circle', 17),
	(3421, 'Bouncing Road', 17),
	(3977, 'Central Avenue', 17),
	(5086, 'Nottingham Place', 17),
	(5379, 'Treasure Island Way', 17),
	(8209, 'Green View Court', 17),
	(8463, 'Vista Avenue', 17),
	(9693, 'Mellowood Street', 17),
	(991, 'Vista Verde', 17),
	(1061, 'Buskrik Avenue', 3),
	(172, 'Turning Dr.', 3),
	(2038, 'Encino Drive', 3),
	(2046, 'Las Palmas', 3),
	(2059, 'Clay Rd', 3),
	(207, 'Berry Court', 3),
	(2080, 'Sycamore Drive', 3),
	(2466, 'Clearland Circle', 3),
	(2687, 'Ridge Road', 3),
	(2812, 'Mazatlan', 3),
	(3026, 'Anchor Drive', 3),
	(3281, 'Hillview Dr.', 3),
	(3632, 'Bank Way', 3),
	(371, 'Apple Dr.', 3),
	(504, 'O St.', 3),
	(5423, 'Champion Rd.', 3),
	(6057, 'Hill Street', 3),
	(6870, 'D Bel Air Drive', 3),
	(7338, 'Green St.', 3),
	(7511, 'Cooper Dr.', 3),
	(8152, 'Claudia Dr.', 3),
	(8411, 'Mt. Orange Place', 3),
	(9277, 'Country View Lane', 3),
	(9784, 'Mt Etna Drive', 3),
	(9825, 'Coralie Drive', 3),
	(1185, 'Dallas Drive', 7),
	(1362, 'Somerset Place', 7),
	(181, 'Gaining Drive', 7),
	(1962, 'Cotton Ct.', 7),
	(2176, 'Apollo Way', 7),
	(2294, 'West 39th St.', 7),
	(3238, 'Laguna Circle', 7),
	(3385, 'Crestview Drive', 7),
	(3665, 'Oak Creek Ct.', 7),
	(3928, 'San Francisco', 7),
	(475, 'Santa Maria', 7),
	(5242, 'Marvelle Ln.', 7),
	(5452, 'Corte Gilberto', 7),
	(6629, 'Polson Circle', 7),
	(7640, 'First Ave.', 7),
	(7883, 'Missing Canyon Court', 7),
	(8624, 'Pepper Way', 7),
	(9241, 'St George Dr.', 7),
	(213, 'Stonewood Drive', 18),
	(2425, 'Notre Dame Ave', 18),
	(3884, 'Beauty Street', 18),
	(8036, 'Summit View Dr.', 18),
	(9605, 'Pheasant Circle', 18),
	(1245, 'Clay Road', 10),
	(1748, 'Bird Drive', 10),
	(310, 'Winter Lane', 10),
	(3127, 'El Camino Drive', 10),
	(3514, 'Sunshine', 10),
	(1144, 'Paradise Ct.', 6),
	(1921, 'Ranch Road', 6),
	(3333, 'Madhatter Circle', 6),
	(342, 'San Simeon', 6),
	(3848, 'East 39th Street', 6),
	(5256, 'Chickpea Ct.', 6),
	(5979, 'El Pueblo', 6),
	(6580, 'Poor Ridge Court', 6),
	(7435, 'Ricardo', 6),
	(7691, 'Benedict Ct.', 6),
	(7772, 'Golden Meadow', 6),
	(8585, 'Los Gatos Ct.', 6),
	(9314, 'Icicle Way', 6),
	(9530, 'Vine Lane', 6),
	(989, 'Crown Ct', 6),
	(25, '95th Ave NE', 20),
	(4095, 'Cooper Dr.', 20),
	(4155, 'Working Drive', 20),
	(463, 'H Stagecoach Rd.', 20),
	(5050, 'Mt. Wilson Way', 20),
	(5203, 'Virginia Lane', 20),
	(5458, 'Gladstone Drive', 20),
	(5553, 'Cash Avenue', 20),
	(5669, 'Ironwood Way', 20),
	(6697, 'Ridge Park Drive', 20),
	(7048, 'Laurel', 20),
	(8192, 'Seagull Court', 20),
	(350, 'Pastel Drive', 22),
	(34, 'Waterloo Road', 21),
	(8291, 'Crossbow Way', 28),
	(5678, 'Lakeview Blvd.', 24),
	(1356, 'Grove Way', 12),
	(3, 'Walnut Ave', 12),
	(1792, 'Belmont Rd.', 12),
	(2275, 'Valley Blvd.', 12),
	(3747, 'W. Landing Avenue', 12),
	(3841, 'Silver Oaks Place', 12),
	(4566, 'La Jolla', 12),
	(4734, 'Sycamore Court', 12),
	(5030, 'Blue Ridge Dr.', 12),
	(5734, 'Ashford Court', 12),
	(7726, 'Driftwood Drive', 12),
	(8310, 'Ridge Circle', 12),
	(896, 'Southdale', 12),
	(9652, 'Los Angeles', 12),
	(2487, 'Riverside Drive', 19),
	(1397, 'Paradise Ct.', 14),
	(1400, 'Gate Drive', 14),
	(3030, 'Blackburn Ct.', 14),
	(4350, 'Minute Dr.', 14),
	(8967, 'Hamilton Ave.', 14),
	(9297, 'Kenston Dr.', 14),
	(9687, 'Shakespeare Drive', 14),
	(9100, 'Sheppard Avenue North', 29),
	(636, 'Vine Hill Way', 25),
	(101, 'Candy Rd.', 1),
	(1275, 'West Street', 1),
	(2137, 'Birchwood Dr', 1),
	(2383, 'Pepper Drive', 1),
	(2427, 'Notre Dame Ave.', 1),
	(2482, 'Buckingham Dr.', 1),
	(3066, 'Wallace Dr.', 1),
	(3397, 'Rancho View Drive', 1),
	(3768, 'Door Way', 1),
	(4909, 'Poco Lane', 1),
	(6369, 'Ellis Street', 1),
	(6891, 'Ham Drive', 1),
	(7297, 'RisingView', 1),
	(8000, 'Crane Court', 1),
	(8040, 'Hill Ct', 1),
	(8467, 'Clifford Court', 1),
	(9006, 'Woodside Way', 1),
	(9322, 'Driving Drive', 1),
	(9863, 'Ridge Place', 1),
	(9882, 'Clay Rde', 1),
	(9906, 'Oak Grove Road', 1),
	(1378, 'String Dr', 13),
	(1803, 'Olive Hill', 13),
	(2176, 'Brown Street', 13),
	(2266, 'Greenwood Circle', 13),
	(2598, 'Breck Court', 13),
	(2736, 'Scramble Rd', 13),
	(4312, 'Cambridge Drive', 13),
	(5009, 'Orange Street', 13),
	(5670, 'Bel Air Dr.', 13),
	(5980, 'Icicle Circle', 13),
	(6510, 'Hacienda Drive', 13),
	(6937, 'E. 42nd Street', 13),
	(7165, 'Brock Lane', 13),
	(7559, 'Worth Ct.', 13),
	(7985, 'Center Street', 13),
	(9495, 'Limewood Place', 13),
	(9533, 'Working Drive', 13),
	(177, '11th Ave', 16),
	(1962, 'Ferndale Lane', 16),
	(2473, 'Orchard Way', 16),
	(4096, 'San Remo', 16),
	(4310, 'Kenston Dr.', 16),
	(4444, 'Pepper Way', 16),
	(4525, 'Benedict Ct.', 16),
	(5263, 'Etcheverry Dr', 16),
	(535, 'Greendell Pl', 16),
	(6871, 'Thornwood Dr.', 16),
	(6951, 'Harmony Way', 16),
	(7086, 'O St.', 16),
	(7145, 'Matchstick Drive', 16),
	(7820, 'Bird Drive', 16),
	(7939, 'Bayview Court', 16),
	(8316, 'La Salle St.', 16),
	(9104, 'Mt. Sequoia Ct.', 16),
	(1234, 'Seaside Way', 9),
	(5725, 'Glaze Drive', 9),
	(1064, 'Slow Creek Road', 4),
	(1102, 'Ravenwood', 4),
	(1220, 'Bradford Way', 4),
	(1349, 'Steven Way', 4),
	(136, 'Balboa Court', 4),
	(137, 'Mazatlan', 4),
	(1398, 'Yorba Linda', 4),
	(1619, 'Stillman Court', 4),
	(2144, 'San Rafael', 4),
	(2354, 'Frame Ln.', 4),
	(2639, 'Anchor Court', 4),
	(3029, 'Pastime Dr', 4),
	(3243, 'Buckingham Dr.', 4),
	(426, 'San Rafael', 4),
	(4598, 'Manila Avenue', 4),
	(4948, 'West 4th St', 4),
	(502, 'Alexander Pl.', 4),
	(5025, 'Holiday Hills', 4),
	(5125, 'Cotton Ct.', 4),
	(5375, 'Clearland Circle', 4),
	(5376, 'Catanzaro Way', 4),
	(5407, 'Cougar Way', 4),
	(5666, 'Hazelnut Lane', 4),
	(5802, 'Ampersand Drive', 4),
	(6498, 'Mining Rd.', 4),
	(6578, 'Woodhaven Ln.', 4),
	(6657, 'Sand Pointe Lane', 4),
	(6843, 'San Simeon Dr.', 4),
	(7126, 'Ending Ct.', 4),
	(7127, 'Los Gatos Court', 4),
	(7166, 'Brock Lane', 4),
	(7403, 'N. Broadway', 4),
	(7439, 'Laguna Niguel', 4),
	(7594, 'Alexander Pl.', 4),
	(7616, 'Honey Court', 4),
	(77, 'Birchwood', 4),
	(7765, 'Sunsine Drive', 4),
	(7842, 'Ygnacio Valley Road', 4),
	(8290, 'Margaret Ct.', 4),
	(8656, 'Lakespring Place', 4),
	(874, 'Olivera Road', 4),
	(931, 'Corte De Luna', 4),
	(9537, 'Ridgewood Drive', 4),
	(9964, 'North Ridge Drive', 4),
	(1285, 'Greenbrier Street', 11),
	(2115, 'Passing', 11),
	(2601, 'Cambridge Drive', 11),
	(3114, 'Notre Dame Ave.', 11),
	(3280, 'Pheasant Circle', 11),
	(4231, 'Spar Court', 11),
	(4852, 'Chaparral Court', 11),
	(5724, 'Victory Lane', 11),
	(591, 'Merriewood Drive', 11),
	(7230, 'Vine Maple Street', 11),
	(163, 'Nishava Str, ent A, apt. 1', 32);
	

-- Output
108
Lakeside Court
332
Laguna Niguel
620
Woodside Ct.
951
Pascalstr
94
rue Descartes
250
Race Court
9539
Glenside Dr
9833
Mt. Dias Blv.
10203
Acorn Avenue
3997
Via De Luna
6
Downshire Way
1411
Ranch Drive
3074
Arbor Drive
390
Ridgewood Ct.
9666
Northridge Ct.
9752
Jeanne Circle
8154
Via Mexico
80
Sunview Terrace
1825
Corte Del Prado
2598
La Vista Circle
3421
Bouncing Road
3977
Central Avenue
5086
Nottingham Place
5379
Treasure Island Way
8209
Green View Court
8463
Vista Avenue
9693
Mellowood Street
991
Vista Verde
1061
Buskrik Avenue
172
Turning Dr.
2038
Encino Drive
2046
Las Palmas
2059
Clay Rd
207
Berry Court
2080
Sycamore Drive
2466
Clearland Circle
2687
Ridge Road
2812
Mazatlan
3026
Anchor Drive
3281
Hillview Dr.
3632
Bank Way
371
Apple Dr.
504
O St.
5423
Champion Rd.
6057
Hill Street
6870
D Bel Air Drive
7338
Green St.
7511
Cooper Dr.
8152
Claudia Dr.
8411
Mt. Orange Place
9277
Country View Lane
9784
Mt Etna Drive
9825
Coralie Drive
1185
Dallas Drive
1362
Somerset Place
181
Gaining Drive
1962
Cotton Ct.
475
Santa Maria
213
Stonewood Drive
310
Winter Lane
342
San Simeon
989
Crown Ct
25
95th Ave NE
463
H Stagecoach Rd.
350
Pastel Drive
34
Waterloo Road
3
Walnut Ave
896
Southdale
636
Vine Hill Way
101
Candy Rd.
177
11th Ave
535
Greendell Pl
136
Balboa Court
137
Mazatlan
426
San Rafael
502
Alexander Pl.
77
Birchwood
874
Olivera Road
931
Corte De Luna
591
Merriewood Drive
163
Nishava Str, ent A, apt. 1