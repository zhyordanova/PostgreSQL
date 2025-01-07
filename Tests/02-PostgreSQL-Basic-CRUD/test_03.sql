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
	('Ottawa', 'Canada', 2790.310),
	('Sofia', 'Bulgaria', 492.000),
	('Sammamish', 'Washington', 62.250),
	('Renton', NULL, 65.360),
	('Snohomish', 'Washington', 9.640),
	('Portland', 'Oregon', 375.550),
	('Seattle', 'Washington', 367.900),
	('San Francisco', 'California', 600.590),
	('Newcastle', '	England', 115.100);
	

-- Output
Sofia
492.000
Snohomish
9.640
Seattle
367.900
San Francisco
600.590
Sammamish
62.250
Renton
65.360
Redmond
44.640
Portland
375.550
Ottawa
2790.310
Newcastle
115.100

-- Input
INSERT INTO cities ("name", "state", area) 
VALUES 
	('Memphis', 'Tennessee', 783.600),
	('Nevada', 'California', 5.670),
	('Kenmore', 'Washington', 18.690),
	('Melbourne', 'Australian', 9.992),
	('Everett', 'Washington', 124.080),
	('Monroe', 'Missouri', 102.300),
	('Issaquah', 'Washington', 34.140),
	('Kent', 'England', 3.736),
	('Gold Bar', 'Washington', 2.740),
	('Minneapolis', 'Minnesota', 148.94);
	
	
-- Output
Nevada
5.670
Monroe
102.300
Minneapolis
148.940
Memphis
783.600
Melbourne
9.992
Kent
3.736
Kenmore
18.690
Issaquah
34.140
Gold Bar
2.740
Everett
124.080