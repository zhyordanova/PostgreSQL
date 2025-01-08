-- Solution skeleton
CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  project_name VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP DEFAULT NULL,
  end_date TIMESTAMP DEFAULT NULL
);


-- Input
INSERT INTO projects (
	project_name, description, start_date, end_date
) 
VALUES
	('Classic Vest', 'Research, design and development of Classic Vest. Light-weight, wind-resistant, packs to fit into a pocket.', NULL, NULL),
	('Cycling Cap', 'Research, design and development of Cycling Cap. Traditional style with a flip-up brim; one-size fits all.', '2001-09-01 08:00:00', '2003-10-01 12:00:00'),
	('Full-Finger Gloves', 'Research, design and development of Full-Finger Gloves. Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.', '2002-01-15 10:00:00', '2003-06-02 09:00:00'),
	('Half-Finger Gloves', 'Research, design and development of Half-Finger Gloves. Full padding, improved finger flex, durable palm, adjustable closure.', '2002-01-31 01:00:00', '2003-02-12 01:00:00'),
	('HL Mountain Frame', 'Research, design and development of HL Mountain Frame. Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.', '2001-06-02 09:00:00', NULL),
	('HL Road Frame', 'Research, design and development of HL Road Frame. Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.', NULL, NULL),
	('HL Touring Frame', 'Research, design and development of HL Touring Frame. The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men`s version.', NULL, NULL),
	('LL Mountain Frame', 'Research, design and development of LL Mountain Frame. Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.', '2002-11-20 09:57:00', '2003-06-01 16:30:00'),
	('LL Road Frame', 'Research, design and development of LL Road Frame. The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.', '2001-06-01 09:20:00', '2003-03-16 10:05:00'),
	('LL Touring Frame', 'Research, design and development of LL Touring Frame. Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.', '2005-08-20 16:34:00', NULL),
	('Long-Sleeve Logo Jersey', 'Research, design and development of Long-Sleeve Logo Jersey. Unisex long-sleeve AWC logo microfiber cycling jersey', '2001-06-01 00:00:00.000000', '2003-03-26 08:25:00'),
	('Men`s Bib-Shorts', 'Research, design and development of Men`s Bib-Shorts. Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.', '2002-04-12 11:00:00', NULL),
	('Mountain-100', 'Research, design and development of Mountain-100. Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.', '2001-04-14 14:00:00', NULL),
	('Mountain', 'Research, design and development of Mountain-200. Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.', '2002-03-05 00:00:00', '2004-03-11 10:32:00'),
	('Mountain-300', 'Research, design and development of Mountain-300. For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.', '2002-05-10 07:00:00', '2003-06-06 07:00:00'),
	('Mountain', 'Research, design and development of Mountain-400-W. This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.', NULL, NULL),
	('Mountain', 'Research, design and development of Mountain-500. Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.', '2002-05-11 09:57:00', '2003-06-30 00:00:00'),
	('Racing Socks', 'Research, design and development of Racing Socks. Thin, lightweight and durable with cuffs that stay up.', '2005-07-11 00:00:00', NULL),
	('Road', 'Research, design and development of Road-150. This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.', '2001-09-07 05:00:00', '2003-06-08 17:00:00'),
	('Road', 'Research, design and development of Road-250. Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.', '2002-01-08 14:00:00', NULL),
	('Road', 'Research, design and development of Road-350-W. Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.', NULL, NULL),
	('Road', 'Research, design and development of Road-450. A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.', '2001-09-16 12:00:00', NULL),
	('Road', 'Research, design and development of Road-550-W. Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.', '2002-06-09 10:00:00', '2003-06-10 08:00:00'),
	('Road', 'Research, design and development of Road-650. Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we`re famous for.', '2001-06-10 01:00:00', NULL),
	('Road', 'Research, design and development of Road-750. Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.', '2002-01-10 09:57:00', '2003-05-11 20:00:00'),
	('Short-Sleeve Classic Jersey', 'Research, design and development of Short-Sleeve Classic Jersey. Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.', NULL, NULL),
	('Sport-100', 'Research, design and development of Sport-100. Universal fit, well-vented, lightweight , snap-on visor.', '2001-06-01 00:00:00', '2003-10-18 00:00:00'),
	('Touring', 'Research, design and development of Touring-1000. Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.', '2002-11-11 09:57:00', '2003-06-12 00:00:00'),
	('Touring', 'Research, design and development of Touring-2000. The plush custom saddle keeps you riding all day,  and there`s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.', '2002-11-20 11:57:00', NULL),
	('Touring', 'Research, design and development of Touring-3000. All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.', '2002-09-11 09:57:00', '2003-12-22 02:00:00'),
	('Women`s Mountain Shorts', 'Research, design and development of Women`s Mountain Shorts. Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.', NULL, NULL),
	('Women`s Tights', 'Research, design and development of Women`s Tights. Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.', '2002-06-01 00:00:00', '2003-12-18 08:00:00'),
	('Mountain-400', 'Research, design and development of Mountain-400. Suitable for any type of off-road trip. Fits any budget.', '2001-06-01 16:00:00', '2004-06-01 05:00:00'),
	('Road-550', 'Research, design and development of Road-550. Same technology as all of our Road series bikes.  Perfect all-around bike for road or racing.', '2002-06-12 07:00:00', NULL),
	('Road-350', 'Research, design and development of Road-350. Cross-train, race, or just socialize on a sleek, aerodynamic bike.  Advanced seat technology provides comfort all day.', '2002-12-11 09:57:00', '2003-03-12 03:00:00'),
	('LL Mountain Front Wheel', 'Research, design and development of LL Mountain Front Wheel. Replacement mountain wheel for entry-level rider.', '2002-11-12 09:57:00', '2005-06-01 21:00:00'),
	('Touring', 'Research, design and development of Touring Rear Wheel. Excellent aerodynamic rims guarantee a smooth ride.', '2005-05-01 16:34:00', NULL),
	('Touring', 'Research, design and development of Touring Front Wheel. Aerodynamic rims for smooth riding.', '2005-05-06 16:45:00', NULL),
	('Mountain Front Wheel', 'Research, design and development of ML Mountain Front Wheel. Replacement mountain wheel for the casual to serious rider.', '2002-06-01 01:20:00', '2003-06-01 16:30:00'),
	('Mountain Front Wheel', 'Research, design and development of HL Mountain Front Wheel. High-performance mountain replacement wheel.', '2002-06-01 00:00:00', '2003-05-14 12:15:00'),
	('LL Touring Handlebars', 'Research, design and development of LL Touring Handlebars. Unique shape reduces fatigue for entry level riders.', '2005-05-10 16:34:000', NULL),
	('HL Touring Handlebars', 'Research, design and development of HL Touring Handlebars. A light yet stiff aluminum bar for long distance riding.', NULL, NULL),
	('Road', 'Research, design and development of LL Road Front Wheel. Replacement road front wheel for entry-level cyclist.', '2002-01-16 10:00:00', '2003-01-26 22:00:00'),
	('Road', 'Research, design and development of ML Road Front Wheel. Sturdy alloy features a quick-release hub.', '2002-01-15 00:00:00', '2003-06-07 23:00:00'),
	('Road', 'Research, design and development of HL Road Front Wheel. Strong wheel with double-walled rim.', '2002-06-04 00:00:00', '2003-06-01 00:00:00'),
	('Mountain Handlebars', 'Research, design and development of LL Mountain Handlebars. All-purpose bar for on or off-road.', '2002-06-08 03:00:00', '2003-01-13 18:00:00'),
	('Touring', 'Research, design and development of Touring Pedal. A stable pedal for all-day riding.', NULL, NULL),
	('Mountain', 'Research, design and development of ML Mountain Handlebars. Tough aluminum alloy bars for downhill.', '2007-06-01 00:00:00', '2008-06-01 20:10:00'),
	('Mountain Handlebars', 'Research, design and development of HL Mountain Handlebars. Flat bar strong enough for the pro circuit.', '2010-04-16 00:00:00', NULL),
	('Road', 'Research, design and development of LL Road Handlebars. Unique shape provides easier reach to the levers.', '2011-07-07 10:00:00', '2013-06-01 11:00:00'),
	('Road', 'Research, design and development of ML Road Handlebars. Anatomically shaped aluminum tube bar will suit all riders.', NULL, NULL),
	('Road', 'Research, design and development of HL Road Handlebars. Designed for racers; high-end anatomically shaped bar from aluminum alloy.', '2022-06-01 10:00:00', NULL),
	('LL Headset', 'Research, design and development of LL Headset. Threadless headset provides quality at an economical price.', '2022-06-07 00:00:00', '2023-06-09 00:00:00'),
	('ML Headset', 'Research, design and development of ML Headset. Sealed cartridge keeps dirt out.', '2002-06-01 00:00:00', '2023-06-01 02:00:00'),
	('HL Headset', 'Research, design and development of HL Headset. High-quality 1" threadless headset with a grease port for quick lubrication.', '2012-06-01 03:00:00', '2023-01-18 05:15:00'),
	('Road', 'Research, design and development of ML Road Rear Wheel. Aluminum alloy rim with stainless steel spokes; built for speed.', '2012-06-01 01:00:00', '2013-06-10 09:00:00'),
	('Road', 'Research, design and development of HL Road Rear Wheel. Strong rear wheel with double-walled rim.', '2002-06-01 00:00:00', '2013-01-16 09:00:00'),
	('LL Mountain Seat/Saddle 2', 'Research, design and development of LL Mountain Seat/Saddle 2. Synthetic leather. Features gel for increased comfort.', NULL, NULL),
	('Mountain', 'Research, design and development of ML Mountain Seat/Saddle 2. Designed to absorb shock.', '2014-06-01 00:00:00', '2015-03-11 10:32:00'),
	('LL Fork', 'Research, design and development of LL Fork. Stout design absorbs shock and offers more precise steering.', '2012-06-01 00:00:00', NULL),
	('ML Fork', 'Research, design and development of ML Fork. Composite road fork with an aluminum steerer tube.', NULL, NULL),
	('HL Fork', 'Research, design and development of HL Fork. High-performance carbon road fork with curved legs.', '2017-06-01 07:00:00', '2018-12-01 00:00:00'),
	('Hydration Pack', 'Research, design and development of Hydration Pack. Versatile 70 oz hydration pack offers extra storage, easy-fill access, and a waist belt.', NULL, NULL),
	('Taillight', 'Research, design and development of Taillight. Affordable light for safe night riding - uses 3 AAA batteries', '2020-06-01 21:00:00', '2023-06-02 20:00:00'),
	('Headlights - Dual-Beam', 'Research, design and development of Headlights - Dual-Beam. Rechargeable dual-beam headlight.', '2016-06-01 07:00:00', NULL),
	('Headlights - Weatherproof', 'Research, design and development of Headlights - Weatherproof. Rugged weatherproof headlight.', '2018-06-01 03:00:00', '2019-06-09 04:00:00'),
	('Water Bottle', 'Research, design and development of Water Bottle. AWC logo water bottle - holds 30 oz; leak-proof.', '2023-06-01 12:00:00', NULL),
	('Mountain Bottle Cage', 'Research, design and development of Mountain Bottle Cage. Tough aluminum cage holds bottle securly on tough terrain.', '2014-06-01 15:00:00', NULL),
	('Road Bottle Cage', 'Research, design and development of Road Bottle Cage. Aluminum cage is lighter than our mountain version; perfect for long distance trips.', '2004-02-21 16:00:00', NULL),
	('Patch kit', 'Research, design and development of Patch kit. Includes 8 different size patches, glue and sandpaper.', '2016-10-15 19:00:00', NULL),
	('Cable Lock', 'Research, design and development of Cable Lock. Wraps to fit front and rear tires, carrier and 2 keys included.', '2019-06-01 20:00:00', '2019-10-10 09:00:000'),
	('Minipump', 'Research, design and development of Minipump. Designed for convenience. Fits in your pocket. Aluminum barrel. 160psi rated.', '2020-06-01 05:00:00', '2023-06-01 10:00:00'),
	('Mountain', 'Research, design and development of Mountain Pump. Simple and light-weight. Emergency patches stored in handle.', '2022-06-06 08:00:00', '2022-06-12 04:00:00'),
	('Hitch Rack - 4-Bike', 'Research, design and development of Hitch Rack - 4-Bike. Carries 4 bikes securely; steel construction, fits 2" receiver hitch.', NULL, NULL),
	('Bike Wash', 'Research, design and development of Bike Wash. Washes off the toughest road grime; dissolves grease, environmentally safe. 1-liter bottle.', '2022-08-01 06:00:00', NULL),
	('Touring-Panniers', 'Research, design and development of Touring-Panniers. Durable, water-proof nylon construction with easy access. Large enough for weekend trips.', '2021-06-08 07:00:00', NULL),
	('Fender Set - Mountain', 'Research, design and development of Fender Set - Mountain. Clip-on fenders fit most mountain bikes.', '2023-06-01 09:00:00', NULL),
	('All-Purpose Bike Stand', 'Research, design and development of All-Purpose Bike Stand. Perfect all-purpose bike stand for working on your bike at home. Quick-adjusting clamps and steel construction.', NULL, NULL),
	('Rear Derailleur', 'Research, design and development of Rear Derailleur. Wide-link design.', NULL, NULL);
	
	
-- Output
HL Mountain Frame
In Progress
LL Mountain Frame
Done
Mountain-100
In Progress
Mountain
Done
Mountain-300
Done
Mountain
Ready for development
Mountain
Done
Women`s Mountain Shorts
Ready for development
Mountain-400
Done
LL Mountain Front Wheel
Done
Mountain Front Wheel
Done
Mountain Front Wheel
Done
Mountain Handlebars
Done
Mountain
Done
Mountain Handlebars
In Progress
LL Mountain Seat/Saddle 2
Ready for development
Mountain
Done
Mountain Bottle Cage
In Progress
Mountain
Done
Fender Set - Mountain
In Progress