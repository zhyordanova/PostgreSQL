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
	( 9693, 'Mellowood Street', 17),
	( 1245, 'Clay Road', 10),
	( 8154, 'Via Mexico', 27),
	( 1398, 'Yorba Linda', 4),
	( 6870, 'D Bel Air Drive', 3),
	( 9241, 'St George Dr.', 7),
	( 250, 'Race Court', 8),
	( 3074, 'Arbor Drive', 15),
	( 390, 'Ridgewood Ct.', 15),
	( 1792, 'Belmont Rd.', 12),
	( 1921, 'Ranch Road', 6),
	( 1619, 'Stillman Court', 4),
	( 6, 'Downshire Way', 23),
	( 1144, 'Paradise Ct.', 6),
	( 951, 'Pascalstr', 31),
	( 3514, 'Sunshine', 10),
	( 7902, 'Grammercy Lane', 5),
	( 5672, 'Hale Dr.', 8),
	( 9277, 'Country View Lane', 3),
	( 10203, 'Acorn Avenue', 2),
	( 1356, 'Grove Way', 12),
	( 8668, 'Via Neruda', 5),
	( 8684, 'Military East', 5),
	( 2144, 'San Rafael', 4),
	( 989, 'Crown Ct', 6);
	
	
-- Output
10203 Acorn Avenue
2
1398 Yorba Linda
4
1619 Stillman Court
4
2144 San Rafael
4
989 Crown Ct
6
1921 Ranch Road
6
1144 Paradise Ct.
6
5672 Hale Dr.
8
250 Race Court
8
3514 Sunshine
10
1245 Clay Road
10
1792 Belmont Rd.
12
1356 Grove Way
12