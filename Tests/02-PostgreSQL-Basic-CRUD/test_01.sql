-- Solution skeleton
CREATE TABLE IF NOT EXISTS cities (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL,
  "state" VARCHAR(80) DEFAULT NULL,
  area NUMERIC(7, 3),
  CONSTRAINT cities_area_check CHECK (area >= 0)
);

-- Input
INSERT INTO cities ("name", "state", area) 
VALUES 
	('Redmond', 'Washington', 44.640),
	('Redmond', 'Washington', 44.640),
	('Redmond', 'Washington', 44.640),
	('Calgary', 'Canada', 820.620),
	('Calgary', 'Canada', 820.620),
	('Calgary', 'Canada', 820.620),
	('Edmonds', 'Washington', 25.920),
	('Seattle', 'Washington', 367.900),
	('Bellevue', 'Washington', 97.140),
	('Bellevue', 'Washington', 97.140);
	

-- Output
1
Redmond
Washington
44.640
2
Redmond
Washington
44.640
3
Redmond
Washington
44.640
4
Calgary
Canada
820.620
5
Calgary
Canada
820.620
6
Calgary
Canada
820.620
7
Edmonds
Washington
25.920
8
Seattle
Washington
367.900
9
Bellevue
Washington
97.140
10
Bellevue
Washington
97.140