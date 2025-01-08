-- Solution skeleton
CREATE TABLE IF NOT EXISTS apartments (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(45) NOT NULL,
  image VARCHAR(50) DEFAULT NULL,
  country VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  zip_code CHAR(10),
  address VARCHAR(50) NOT NULL,
  address_2 VARCHAR(50),
  latitude NUMERIC(15, 4), 
  longitude NUMERIC(15, 4), 
  direction VARCHAR(15) NOT NULL,
  booking_id INT NOT NULL,
  CONSTRAINT appartments_booking_id_check CHECK (booking_id >= 0)
);


-- Input
INSERT INTO apartments (
	"name", image, country, city, zip_code, address, address_2, latitude, longitude, direction, booking_id
) 
VALUES 	
	 ('Wolff LLC','http://placeimg.com/640/480/city','Bedfordshire','South Macstad','80679','761 Nikita Mews','Suite 306',38.1941,58.315,'North',37),
	 ('O`Keefe - Wunsch','http://placeimg.com/640/480/city','Buckinghamshire','Rosariomouth','32225-6871','016 Jules Harbor','Apt. 583',5.9271,-95.1855,'Northeast',38),
	 ('Waters Group','http://placeimg.com/640/480/city','Cambridgeshire','East Garett','24852-4545','690 Ullrich Ridges','Apt. 303',-10.6776,-105.1542,'West',5),
	 ('McDermott\, Little and Waelchi','http://placeimg.com/640/480/city','Buckinghamshire','New Karlmouth','74416-4346','9546 Block Circle','Apt. 616',82.1055,-142.8697,'East',64),
	 ('Welch Group','http://placeimg.com/640/480/city','Bedfordshire','Naderborough','60182-2880','92830 Predovic Meadow','Suite 058',-32.5269,45.3129,'West',22),
	 ('Metz - Wunsch','http://placeimg.com/640/480/city','Bedfordshire','Pleasanton','56414','6894 Bins Wells','Suite 495',80.6713,-175.7865,'West',37),
	 ('Ondricka - Cartwright','http://placeimg.com/640/480/city','Bedfordshire','Bozeman','83891','71968 Pollich Pines','Suite 068',-61.4242,24.1151,'Northwest',64),
	 ('Cartwright and Sons','http://placeimg.com/640/480/city','Berkshire','Hilmashire','40737-9204','015 Rosalinda Parkway','Apt. 452',73.8368,94.3394,'East',70),
	 ('Ebert Inc','http://placeimg.com/640/480/city','Berkshire','Rancho Santa Margarita','05366-6264','08073 Hartmann Harbors','Apt. 793',-44.5338,-72.9646,'Southeast',76),
	 ('O`Hara - Towne','http://placeimg.com/640/480/city','Berkshire','Hegmannstad','14353-8008','0194 Shirley Estate','Apt. 318',-45.0083,-106.1228,'Southwest',40),
	 ('Lindgren LLC','http://placeimg.com/640/480/city','Cambridgeshire','Turlock','90050-0724','835 Casimer Brooks','Suite 680',-26.7704,144.2188,'Northwest',10),
	 ('Hodkiewicz Group','http://placeimg.com/640/480/city','Berkshire','East Norris','58841','542 Labadie Burgs','Suite 371',-69.4822,-179.5697,'Northwest',15),
	 ('Runolfsson\, Bradtke and Wolff','http://placeimg.com/640/480/city','Buckinghamshire','Wizaburgh','74319','263 Walker Motorway','Apt. 217',-35.5491,36.7316,'Northwest',78),
	 ('Nikolaus\, Rogahn and Ondricka','http://placeimg.com/640/480/city','Bedfordshire','Stammmouth','82951-3467','5152 Edwina Dam','Apt. 851',-58.7717,-55.113,'Southeast',87),
	 ('Cruickshank\, Ritchie and Purdy','http://placeimg.com/640/480/city','Cambridgeshire','Ocieville','84929-3733','93754 Filiberto Mission','Suite 907',-34.4685,31.3036,'West',88),
	 ('Langworth and Sons','http://placeimg.com/640/480/city','Borders','Rauhaven','49402','457 Metz Flat','Suite 410',-18.437,11.4392,'Southeast',2),
	 ('MacGyver Group','http://placeimg.com/640/480/city','Buckinghamshire','Lake Braedenborough','30931','93106 Parker Drive','Apt. 167',46.1953,-137.6581,'South',16),
	 ('Streich\, Russel and Will','http://placeimg.com/640/480/city','Buckinghamshire','Westminster','23514-3594','507 Bennett Forge','Apt. 402',-30.9145,7.9758,'South',93),
	 ('Haag LLC','http://placeimg.com/640/480/city','Berkshire','West Carter','65747-1000','61853 Lindgren Union','Apt. 355',30.6205,-99.3798,'Southwest',16),
	 ('Hickle\, Jerde and Watsica','http://placeimg.com/640/480/city','Berkshire','Emardside','21986','9130 Anderson Path','Apt. 324',-29.9816,-171.5498,'North',67);



-- Output
38.1941
38.19	
38.19
5.9271
5.93	
5.92
-10.6776	
-10.68	
-10.67
82.1055	
82.11	
82.10
-32.5269	
-32.53	
-32.52
80.6713
80.67
80.67
-61.4242
-61.42	
-61.42
73.8368
73.84	
73.83
-44.5338
-44.53	
-44.53
-45.0083	
-45.01	
-45.00
-26.7704	
-26.77	
-26.77
-69.4822
-69.48	
-69.48
-35.5491
-35.55	
-35.54
-58.7717
-58.77	
-58.77
-34.4685
-34.47	
-34.46
-18.4370	
-18.44	
-18.43
46.1953	
46.20	
46.19
-30.9145
-30.91	
-30.91
30.6205	
30.62	
30.62
-29.9816
-29.98	
-29.98