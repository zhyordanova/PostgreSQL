-- Solution skeleton
CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP DEFAULT NULL
);


INSERT INTO projects ("name", description, start_date, end_date) 
VALUES
	('Classic Vest', 'Research, design and development of Classic Vest. Light-weight, wind-resistant, packs to fit into a pocket.', '2003-06-01 12:00:00', '2014-06-02 09:00:00'),
	('Cycling Cap', 'Research, design and development of Cycling Cap. Traditional style with a flip-up brim; one-size fits all.', '2001-09-01 08:00:00', '2003-10-01 12:00:00'),
	('Full-Finger Gloves', 'Research, design and development of Full-Finger Gloves. Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.', '2002-01-15 10:00:00', '2003-06-02 09:00:00'),
	('Half-Finger Gloves', 'Research, design and development of Half-Finger Gloves. Full padding, improved finger flex, durable palm, adjustable closure.', '2002-01-31 01:00:00', '2003-02-12 01:00:00'),
	('HL Mountain Frame', 'Research, design and development of HL Mountain Frame. Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.', '2001-06-02 09:00:00', '2003-02-17 12:00:00'),
	('HL Road Frame', 'Research, design and development of HL Road Frame. Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.', '1998-05-02 18:00:00', '2000-02-16 15:00:00');


-- Input
SELECT * FROM public.projects
ORDER BY id ASC


-- Output
1
CLASSIC VEST
Research, design and development of Classic Vest. Light-weight, wind-resistant, packs to fit into a pocket.
2003-06-01 12:00:00	
2014-06-02 09:00:00
2
CYCLING CAP
Research, design and development of Cycling Cap. Traditional style with a flip-up brim; one-size fits all.
2001-09-01 08:00:00
2003-10-01 12:00:00
3
FULL-FINGER GLOVES
Research, design and development of Full-Finger Gloves. Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.
2002-01-15 10:00:00
2003-06-02 09:00:00
4
HALF-FINGER GLOVES
Research, design and development of Half-Finger Gloves. Full padding, improved finger flex, durable palm, adjustable closure.
2002-01-31 01:00:00
2003-02-12 01:00:00
5
HL MOUNTAIN FRAME
Research, design and development of HL Mountain Frame. Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.
2001-06-02 09:00:00
2003-02-17 12:00:00
6
HL ROAD FRAME
Research, design and development of HL Road Frame. Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.
1998-05-02 18:00:00
2000-02-16 15:00:00