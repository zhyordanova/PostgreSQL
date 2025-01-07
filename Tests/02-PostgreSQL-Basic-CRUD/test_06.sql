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
	(9745, 'Bonita Ct.', 5);
	

-- Output
20
6118 Grasswood Circle
5
21
620 Woodside Ct.
5
22
6307 Greenbelt Way
5
23
6448 Castle Court
5
24
6774 Bonanza
5
25
6968 Wren Ave.
5
26
7221 Peachwillow Street
5
27
7270 Pepper Way
5
28
7396 Stratton Circle
5
29
7808 Brown St.
5
30
7902 Grammercy Lane
5
31
8668 Via Neruda
5
32
8684 Military East
5
33
8751 Norse Drive
5
34
9320 Teakwood Dr.
5
35
9435 Breck Court
5
36
9745 Bonita Ct.
5