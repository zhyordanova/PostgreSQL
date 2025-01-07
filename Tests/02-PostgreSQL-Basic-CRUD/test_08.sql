-- Solution skeleton
CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP DEFAULT NULL
);


-- Input
INSERT INTO projects ("name", description, start_date, end_date) 
VALUES
	('Patch kit', 'Research, design and development of Patch kit. Includes 8 different size patches, glue and sandpaper.', '2016-10-15 19:00:00', NULL),
	('Minipump', 'Research, design and development of Minipump. Designed for convenience. Fits in your pocket. Aluminum barrel. 160psi rated.', '2020-06-01 05:00:00', '2023-06-01 10:00:00'),
	('LL Fork', 'Research, design and development of LL Fork. Stout design absorbs shock and offers more precise steering.', '2012-06-01 00:00:00', '2015-08-01 11:00:00'),
	('ML Fork', 'Research, design and development of ML Fork. Composite road fork with an aluminum steerer tube.', '2012-06-01 00:00:00', '2013-10-01 05:00:00'),
	('Headlights - Dual-Beam', 'Research, design and development of Headlights - Dual-Beam. Rechargeable dual-beam headlight.', '2016-06-01 07:00:00', '2017-07-17 08:00:00'),
	('HL Fork', 'Research, design and development of HL Fork. High-performance carbon road fork with curved legs.', '2017-06-01 07:00:00', '2018-12-01 00:00:00'),
	('Headlights - Weatherproof', 'Research, design and development of Headlights - Weatherproof. Rugged weatherproof headlight.', '2018-06-01 03:00:00', '2019-06-09 04:00:00'),
	('Mountain', 'Research, design and development of Mountain Pump. Simple and light-weight. Emergency patches stored in handle.', '2022-06-06 08:00:00', '2022-06-12 04:00:00'),
	('Road', 'Research, design and development of LL Road Front Wheel. Replacement road front wheel for entry-level cyclist.', '2002-01-16 10:00:00', '2003-01-26 22:00:00'),
	('Road', 'Research, design and development of ML Road Front Wheel. Sturdy alloy features a quick-release hub.', '2002-01-15 00:00:00', '2003-06-07 23:00:00'),
	('Road', 'Research, design and development of HL Road Front Wheel. Strong wheel with double-walled rim.', '2002-06-04 00:00:00', '2003-06-01 00:00:00'),
	('Cable Lock', 'Research, design and development of Cable Lock. Wraps to fit front and rear tires, carrier and 2 keys included.', '2019-06-01 20:00:00', '2019-10-10 09:00:000'),
	('Taillight', 'Research, design and development of Taillight. Affordable light for safe night riding - uses 3 AAA batteries', '2020-06-01 21:00:00', '2023-06-02 20:00:00'),
	('Touring-Panniers', 'Research, design and development of Touring-Panniers. Durable, water-proof nylon construction with easy access. Large enough for weekend trips.', '2021-06-08 07:00:00', '2023-06-04 00:00:00'),
	('Fender Set - Mountain', 'Research, design and development of Fender Set - Mountain. Clip-on fenders fit most mountain bikes.', '2023-06-01 09:00:00', NULL),
	('All-Purpose Bike Stand', 'Research, design and development of All-Purpose Bike Stand. Perfect all-purpose bike stand for working on your bike at home. Quick-adjusting clamps and steel construction.', '2005-09-01 00:00:00', NULL),
	('Rear Derailleur', 'Research, design and development of Rear Derailleur. Wide-link design.', '2023-05-26 10:00:00', NULL),
	('Mountain', 'Research, design and development of Mountain Pump. Simple and light-weight. Emergency patches stored in handle.', '2022-06-06 08:00:00', '2022-06-12 04:00:00');
	
	
-- Output
Headlights - Dual-Beam
2016-06-01 07:00:00
2017-07-17 08:00:00
HL Fork
2017-06-01 07:00:00
2018-12-01 00:00:00
Headlights - Weatherproof
2018-06-01 03:00:00
2019-06-09 04:00:00
Cable Lock
2019-06-01 20:00:00
2019-10-10 09:00:00
Minipump
2020-06-01 05:00:00
2023-06-01 10:00:00
Taillight
2020-06-01 21:00:00
2023-06-02 20:00:00
Mountain
2022-06-06 08:00:00
2022-06-12 04:00:00
Mountain
2022-06-06 08:00:00
2022-06-12 04:00:00