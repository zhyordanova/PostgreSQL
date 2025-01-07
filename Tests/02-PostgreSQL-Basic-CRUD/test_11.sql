-- Solution skeleton
CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP DEFAULT NULL
);


-- Input
INSERT INTO projects (name, description, start_date, end_date) 
VALUES
	('Long-Sleeve Logo Jersey', 'Research, design and development of Long-Sleeve Logo Jersey. Unisex long-sleeve AWC logo microfiber cycling jersey', '2001-06-01 00:00:00.000000', '2003-03-26 08:25:00'),
	('Men`s Bib-Shorts', 'Research, design and development of Men`s Bib-Shorts. Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.', '2002-04-12 11:00:00', '2003-06-05 11:00:00'),
	('Mountain-100', 'Research, design and development of Mountain-100. Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.', '2001-04-14 14:00:00', '2003-06-05 10:00:00'),
	('Mountain', 'Research, design and development of Mountain-200. Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.', '2002-03-05 00:00:00', '2004-03-11 10:32:00'),
	('Mountain', 'Research, design and development of Mountain-400-W. This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.', '2006-10-22 19:00:00', NULL),
	('Mountain', 'Research, design and development of Mountain-500. Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.', '2002-05-11 09:57:00', '2003-06-30 00:00:00'),
	('Racing Socks', 'Research, design and development of Racing Socks. Thin, lightweight and durable with cuffs that stay up.', '2005-07-11 00:00:00', NULL),
	('Road', 'Research, design and development of Road-150. This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.', '2001-09-07 05:00:00', '2003-06-08 17:00:00'),
	('Road', 'Research, design and development of Road-250. Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.', '2002-01-08 14:00:00', '2003-07-08 02:00:00'),
	('Road', 'Research, design and development of Road-350-W. Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.', '2003-09-29 03:00:00', NULL),
	('Road', 'Research, design and development of Road-450. A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.', '2001-09-16 12:00:00', '2003-09-23 00:00:00'),
	('Road', 'Research, design and development of Road-550-W. Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.', '2002-06-09 10:00:00', '2003-06-10 08:00:00'),
	('Road', 'Research, design and development of Road-650. Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we`re famous for.', '2001-06-10 01:00:00', '2003-06-11 03:00:00'),
	('Road', 'Research, design and development of Road-750. Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.', '2002-01-10 09:57:00', '2003-05-11 20:00:00'),
	('Short-Sleeve Classic Jersey', 'Research, design and development of Short-Sleeve Classic Jersey. Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.', '2003-06-11 21:00:00', NULL),
	('Sport-100', 'Research, design and development of Sport-100. Universal fit, well-vented, lightweight , snap-on visor.', '2001-06-01 00:00:00', '2003-10-18 00:00:00'),
	('Touring', 'Research, design and development of Touring-1000. Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.', '2002-11-11 09:57:00', '2003-06-12 00:00:00'),
	('Touring', 'Research, design and development of Touring-2000. The plush custom saddle keeps you riding all day,  and there`s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.', '2002-11-20 11:57:00', '2003-12-15 00:00:000'),
	('Touring', 'Research, design and development of Touring-3000. All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.', '2002-09-11 09:57:00', '2003-12-22 02:00:00'),
	('Women`s Mountain Shorts', 'Research, design and development of Women`s Mountain Shorts. Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.', '2003-06-12 17:00:00', NULL),
	('Women`s Tights', 'Research, design and development of Women`s Tights. Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.', '2002-06-01 00:00:00', '2003-12-18 08:00:00'),
	('Road-550', 'Research, design and development of Road-550. Same technology as all of our Road series bikes.  Perfect all-around bike for road or racing.', '2002-06-12 07:00:00', '2004-01-16 00:00:00'),
	('Road-350', 'Research, design and development of Road-350. Cross-train, race, or just socialize on a sleek, aerodynamic bike.  Advanced seat technology provides comfort all day.', '2002-12-11 09:57:00', '2003-03-12 03:00:00'),
	('LL Mountain Front Wheel', 'Research, design and development of LL Mountain Front Wheel. Replacement mountain wheel for entry-level rider.', '2002-11-12 09:57:00', '2005-06-01 21:00:00'),
	('Touring', 'Research, design and development of Touring Rear Wheel. Excellent aerodynamic rims guarantee a smooth ride.', '2005-05-01 16:34:00', NULL),
	('Touring', 'Research, design and development of Touring Front Wheel. Aerodynamic rims for smooth riding.', '2005-05-06 16:45:00', NULL),
	('Mountain Front Wheel', 'Research, design and development of ML Mountain Front Wheel. Replacement mountain wheel for the casual to serious rider.', '2002-06-01 01:20:00', '2003-06-01 16:30:00'),
	('Mountain Front Wheel', 'Research, design and development of HL Mountain Front Wheel. High-performance mountain replacement wheel.', '2002-06-01 00:00:00', '2003-05-14 12:15:00'),
	('Road', 'Research, design and development of LL Road Front Wheel. Replacement road front wheel for entry-level cyclist.', '2002-01-16 10:00:00', '2003-01-26 22:00:00'),
	('Road', 'Research, design and development of ML Road Front Wheel. Sturdy alloy features a quick-release hub.', '2002-01-15 00:00:00', '2003-06-07 23:00:00'),
	('Road', 'Research, design and development of HL Road Front Wheel. Strong wheel with double-walled rim.', '2002-06-04 00:00:00', '2003-06-01 00:00:00'),
	('Mountain Handlebars', 'Research, design and development of LL Mountain Handlebars. All-purpose bar for on or off-road.', '2002-06-08 03:00:00', '2003-01-13 18:00:00'),
	('Touring', 'Research, design and development of Touring Pedal. A stable pedal for all-day riding.', '2005-05-16 16:34:00', NULL),
	('Mountain', 'Research, design and development of ML Mountain Handlebars. Tough aluminum alloy bars for downhill.', '2007-06-01 00:00:00', '2008-06-01 20:10:00'),
	('Mountain Handlebars', 'Research, design and development of HL Mountain Handlebars. Flat bar strong enough for the pro circuit.', '2010-04-16 00:00:00', '2011-01-26 07:50:00'),
	('Road', 'Research, design and development of LL Road Handlebars. Unique shape provides easier reach to the levers.', '2011-07-07 10:00:00', '2013-06-01 11:00:00'),
	('Road', 'Research, design and development of ML Road Handlebars. Anatomically shaped aluminum tube bar will suit all riders.', '2012-06-05 05:00:00', '2013-06-01 00:00:00'),
	('Road', 'Research, design and development of HL Road Handlebars. Designed for racers; high-end anatomically shaped bar from aluminum alloy.', '2022-06-01 10:00:00', '2023-07-01 09:00:00');
	
	
-- Output
Mountain
2002-03-05 00:00:00
Mountain
2006-10-22 19:00:00
Mountain
2002-05-11 09:57:00
Road
2001-09-07 05:00:00
Road
2002-01-08 14:00:00
Road
2003-09-29 03:00:00
Road
2001-09-16 12:00:00
Road
2002-06-09 10:00:00
Road
2001-06-10 01:00:00
Road
2002-01-10 09:57:00
Touring
2002-11-11 09:57:00
Touring
2002-11-20 11:57:00
Touring
2002-09-11 09:57:00
Touring
2005-05-01 16:34:00
Touring
2005-05-06 16:45:00
Road
2002-01-16 10:00:00
Road
2002-01-15 00:00:00
Road
2002-06-04 00:00:00
Touring
2005-05-16 16:34:00
Mountain
2007-06-01 00:00:00