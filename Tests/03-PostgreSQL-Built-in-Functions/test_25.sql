-- Solution skeleton
CREATE TABLE IF NOT EXISTS users (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  companion_full_name VARCHAR(200) NOT NULL,
  job_title VARCHAR(80) NOT NULL,
  job_type VARCHAR(70) NOT NULL,
  phone VARCHAR(30) NOT NULL,
  email VARCHAR(255),
  image VARCHAR(100) DEFAULT NULL,
  country VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  onboarding_completion INT DEFAULT 0,
  CONSTRAINT users_email_check CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')
);



-- Input
INSERT INTO users (
	first_name, last_name, companion_full_name, job_title, job_type, phone, email, image, country, city, onboarding_completion
) 
VALUES 	
	 ('Kattie','Hane','Darrel Champlin','Senior Data Orchestrator','District','292.479.2831','Kirk_Torphy92@gmail.com','https://cdn.fakercloud.com/avatars/antjanus_128.jpg','Berkshire','New Gaetano',82),
	 ('Orin','Kshlerin','Robert Gerlach','Forward Assurance Designer','Future','901.373.5326 x6273','Jordon39@yahoo.com','https://cdn.fakercloud.com/avatars/txcx_128.jpg','Buckinghamshire','Felipeborough',61),
	 ('Floy','Klein','Carla Huels','Human Branding Specialist','Dynamic','681.721.0550 x5379','Wilfred.Terry@yahoo.com','https://cdn.fakercloud.com/avatars/ssbb_me_128.jpg','Bedfordshire','Padbergport',39),
	 ('Breanne','Jacobi','John Hirthe','Investor Implementation Manager','Principal','1-320-695-1664 x4548','Jed.OKon@yahoo.com','https://cdn.fakercloud.com/avatars/longlivemyword_128.jpg','Cambridgeshire','Kissimmee',79),
	 ('Augustine','Reichert','Marco Reichel','International Group Supervisor','District','1-240-795-7808','Rodrigo_Renner@gmail.com','https://cdn.fakercloud.com/avatars/itolmach_128.jpg','Berkshire','West Meaghan',89),
	 ('Hope','Turner','Vernon Kreiger','Direct Optimization Agent','Investor','(634) 274-7122 x63780','Waylon.Wisoky@yahoo.com','https://cdn.fakercloud.com/avatars/byryan_128.jpg','Bedfordshire','Alfredchester',51),
	 ('Fletcher','O`Keefe','Ms. Brandy Rice','National Factors Technician','Dynamic','635-250-9518','Rosalind_Hudson@hotmail.com','https://cdn.fakercloud.com/avatars/okandungel_128.jpg','Bedfordshire','North Cobybury',18),
	 ('Eliza','Considine','Alma Lebsack','Human Solutions Architect','Central','727-456-4141','Angelita_Miller@gmail.com','https://cdn.fakercloud.com/avatars/divya_128.jpg','Borders','North Jaquelineton',11),
	 ('Abel','Brakus','Dr. Luther Bartoletti','Lead Integration Executive','Global','1-215-987-8205','Edwin24@yahoo.com','https://cdn.fakercloud.com/avatars/bargaorobalo_128.jpg','Borders','Nigelburgh',83),
	 ('Jessy','Friesen','Rhonda Kuvalis','Dynamic Group Facilitator','Corporate','823.378.9164 x178','Chanel.Kunde@yahoo.com','https://cdn.fakercloud.com/avatars/stalewine_128.jpg','Bedfordshire','Lancaster',50),
	 ('Dudley','Lynch','Roger Reichert V','Global Usability Developer','Product','(309) 936-8561 x2062','Reginald_DuBuque@yahoo.com','https://cdn.fakercloud.com/avatars/benoitboucart_128.jpg','Buckinghamshire','Hudsonmouth',29),
	 ('Dillon','Kulas','Jacqueline Kihn','National Program Orchestrator','Central','335.461.9207','Abbie.McKenzie40@yahoo.com','https://cdn.fakercloud.com/avatars/noufalibrahim_128.jpg','Avon','Port Bernadette',47),
	 ('Marcos','Purdy','Mrs. Isabel Corwin','Chief Communications Strategist','Lead','769.665.8765 x94027','Bulah.Considine@yahoo.com','https://cdn.fakercloud.com/avatars/jmfsocial_128.jpg','Cambridgeshire','North Gennaroshire',8),
	 ('Berta','Friesen','Angelina Wehner','Central Optimization Engineer','International','613-618-4250 x0293','Cory.Blick40@hotmail.com','https://cdn.fakercloud.com/avatars/chacky14_128.jpg','Avon','North Miami',40),
	 ('Margarett','Mohr','Floyd Balistreri','Dynamic Brand Manager','Corporate','356-291-7356','Angie.Balistreri93@yahoo.com','https://cdn.fakercloud.com/avatars/jpenico_128.jpg','Bedfordshire','Port Auroreberg',16),
	 ('Orville','Spencer','Audrey Harris','Product Intranet Specialist','Central','(965) 600-4569','Neoma_Beatty42@gmail.com','https://cdn.fakercloud.com/avatars/kalmerrautam_128.jpg','Bedfordshire','West Nicholausfurt',86),
	 ('Santiago','Spencer','Marty Kerluke','Human Directives Producer','Dynamic','(395) 551-9028 x35883','Marcelle39@gmail.com','https://cdn.fakercloud.com/avatars/charliegann_128.jpg','Cambridgeshire','East Devan',89),
	 ('Eleanora','Kuvalis','Vincent Abbott','Investor Quality Analyst','Investor','245-831-4431 x4708','Clifford60@yahoo.com','https://cdn.fakercloud.com/avatars/ionuss_128.jpg','Cambridgeshire','Paramount',71),
	 ('Ryan','Koss','Brenda Nolan','Senior Directives Technician','Lead','1-337-659-5108','Linnie62@yahoo.com','https://cdn.fakercloud.com/avatars/stayuber_128.jpg','Buckinghamshire','South Kaia',29),
	 ('Arnulfo','Cummerata','Matt Kilback I','Central Web Strategist','Central','1-394-879-4762','Isobel55@yahoo.com','https://cdn.fakercloud.com/avatars/nehfy_128.jpg','Berkshire','Virgilmouth',95),
	 ('Gudrun','Ziemann','Kevin Gleason','Product Quality Specialist','National','864.328.6556','Jessie.Hoppe@yahoo.com','https://cdn.fakercloud.com/avatars/wikiziner_128.jpg','Buckinghamshire','Lake Georgiana',69),
	 ('Myrtie','Predovic','Hannah Casper','Future Division Liaison','Dynamic','701-562-6687','Gus.Wolf40@hotmail.com','https://cdn.fakercloud.com/avatars/randomlies_128.jpg','Bedfordshire','Arianemouth',44),
	 ('Arvilla','Schaefer','Hugo Schmitt','Product Directives Assistant','Legacy','1-672-735-4257','Emil16@yahoo.com','https://cdn.fakercloud.com/avatars/r_garcia_128.jpg','Cambridgeshire','Pacochatown',12),
	 ('Vida','Schuster','Kevin Cartwright','District Security Analyst','Human','(702) 379-2069 x99327','Desmond.Block19@yahoo.com','https://cdn.fakercloud.com/avatars/hafeeskhan_128.jpg','Bedfordshire','Lake Cheyennehaven',47),
	 ('Mireya','Wisozk','Marcus Thompson','Customer Optimization Supervisor','Future','(248) 321-3397 x861','Garrison_Luettgen51@gmail.com','https://cdn.fakercloud.com/avatars/timpetricola_128.jpg','Cambridgeshire','New Maxie',67),
	 ('Arvel','Pfannerstill','Barry Cronin','International Response Specialist','Principal','(297) 351-1870 x342','Tod_Russel73@hotmail.com','https://cdn.fakercloud.com/avatars/safrankov_128.jpg','Berkshire','North Marcelostad',43),
	 ('Gerard','McLaughlin','Miguel Reilly','International Factors Liaison','Global','645.774.3688 x4199','Glennie95@hotmail.com','https://cdn.fakercloud.com/avatars/chadengle_128.jpg','Buckinghamshire','Diamond Bar',83),
	 ('Patrick','Funk','George Langosh','Investor Interactions Coordinator','Investor','749-226-8521','Jacinto.Connelly@hotmail.com','https://cdn.fakercloud.com/avatars/timgthomas_128.jpg','Avon','Caylamouth',30),
	 ('Kristina','Glover','Dr. Fred Bednar','Chief Tactics Analyst','Chief','243-605-0477 x24995','Ladarius.Ortiz36@hotmail.com','https://cdn.fakercloud.com/avatars/urrutimeoli_128.jpg','Avon','Callieville',25),
	 ('Katrine','Ullrich','Roger Koss','Lead Division Executive','Forward','1-565-435-4667','Jameson_Anderson51@gmail.com','https://cdn.fakercloud.com/avatars/stefvdham_128.jpg','Avon','Walterville',11),
	 ('Madaline','Marvin','Cedric Lynch','District Accountability Manager','Internal','260-432-6506 x4672','Colby_Hilpert@hotmail.com','https://cdn.fakercloud.com/avatars/Chakintosh_128.jpg','Buckinghamshire','Torranceville',94),
	 ('Isac','Muller','Lola Bradtke','Dynamic Mobility Architect','Central','(345) 986-9182','Durward.Kautzer29@gmail.com','https://cdn.fakercloud.com/avatars/lmjabreu_128.jpg','Buckinghamshire','Camarillo',50),
	 ('Kole','Ziemann','Bernadette Ferry','Dynamic Tactics Developer','Central','418.643.0713 x71944','Damian74@hotmail.com','https://cdn.fakercloud.com/avatars/jeremery_128.jpg','Cambridgeshire','Schoenmouth',79),
	 ('Krystina','Koelpin','Donnie Becker','Principal Usability Agent','Future','559-867-3235 x2799','Osvaldo28@hotmail.com','https://cdn.fakercloud.com/avatars/danillos_128.jpg','Avon','Lake Luisafurt',66),
	 ('Rod','Mayert','Victor Predovic','Central Interactions Consultant','Human','1-914-912-9355','Walton66@hotmail.com','https://cdn.fakercloud.com/avatars/herbigt_128.jpg','Cambridgeshire','Port Margret',40),
	 ('Maryse','Rolfson','Inez Harris PhD','District Optimization Coordinator','National','205-933-9496','Garnett.Dickinson@yahoo.com','https://cdn.fakercloud.com/avatars/marklamb_128.jpg','Cambridgeshire','West Hildamouth',14),
	 ('Bernadine','Zulauf','Juan Hansen DDS','Human Assurance Consultant','Dynamic','948.271.4112 x016','Rolando.Goodwin@gmail.com','https://cdn.fakercloud.com/avatars/nsamoylov_128.jpg','Buckinghamshire','Wilson',91),
	 ('Adella','Nicolas','Fannie Wiza','Future Applications Associate','Future','(813) 938-2831 x898','Jany89@yahoo.com','https://cdn.fakercloud.com/avatars/puzik_128.jpg','Borders','West Marcelinoport',57),
	 ('Kaylee','Schinner','Debra Quitzon','Dynamic Metrics Engineer','Principal','(973) 225-8673','Allan.Bode97@gmail.com','https://cdn.fakercloud.com/avatars/sydlawrence_128.jpg','Bedfordshire','Gusikowskistad',73),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',97),
	 ('Aniya','Terry','Terrell Blanda IV','Regional Security Specialist','Global','894-432-3355 x066','Macie87@hotmail.com','https://cdn.fakercloud.com/avatars/langate_128.jpg','Buckinghamshire','Lake Marlene',73),
	 ('Treva','Blick','Kellie Barton','Global Integration Technician','Chief','920.650.0036','Alek.Murray@hotmail.com','https://cdn.fakercloud.com/avatars/bungiwan_128.jpg','Buckinghamshire','North Germainebury',29),
	 ('Garrick','Cronin','Mrs. Darla Schiller','Dynamic Web Consultant','Lead','892.814.2736 x027','Sydnie.Beier26@yahoo.com','https://cdn.fakercloud.com/avatars/rohixx_128.jpg','Berkshire','Port Antoniettachester',19),
	 ('Odie','Spinka','Dr. Hugo Lueilwitz','Direct Interactions Orchestrator','Future','1-752-849-0571 x77995','Ivah_Boehm65@yahoo.com','https://cdn.fakercloud.com/avatars/tanveerrao_128.jpg','Buckinghamshire','Lake Stan',68),
	 ('Elvera','Schoen','Jan Rice','Regional Intranet Liaison','Dynamic','(666) 466-8177','Camila.Corwin6@gmail.com','https://cdn.fakercloud.com/avatars/therealmarvin_128.jpg','Bedfordshire','Lake Lorainefurt',84),
	 ('Tyrel','Cole','Mr. Shelia Thompson','Legacy Branding Specialist','International','236-727-5044 x38682','Mariah_Williamson60@hotmail.com','https://cdn.fakercloud.com/avatars/falconerie_128.jpg','Berkshire','Smithburgh',9),
	 ('Rosamond','Schaden','Drew Walsh','Dynamic Configuration Producer','Future','748.895.1217','Alvena87@hotmail.com','https://cdn.fakercloud.com/avatars/sandywoodruff_128.jpg','Cambridgeshire','Brandyntown',12),
	 ('Audra','Heaney','Clifford Prosacco IV','Regional Accountability Director','Global','1-466-921-6636 x6283','Chasity_Mosciski@gmail.com','https://cdn.fakercloud.com/avatars/logorado_128.jpg','Cambridgeshire','Lake Dale',30),
	 ('Abbey','Oberbrunner','Mrs. Chad Bogisich','Investor Optimization Developer','Lead','1-326-667-4395 x35992','Sam_Quitzon42@hotmail.com','https://cdn.fakercloud.com/avatars/aluisio_azevedo_128.jpg','Cambridgeshire','Port Felipe',23),
	 ('Blanca','Mayert','Merle Schiller','Central Communications Orchestrator','Dynamic','206.415.4758 x2610','Bailey_Rau@yahoo.com','https://cdn.fakercloud.com/avatars/carlyson_128.jpg','Berkshire','Port Lilianhaven',69),
	 ('Chaz','MacGyver','Lorenzo Bahringer','Human Identity Consultant','Lead','(488) 801-5356 x672','Jayden_Huel@hotmail.com','https://cdn.fakercloud.com/avatars/scott_riley_128.jpg','Buckinghamshire','South Laurie',94),
	 ('Maudie','Gutkowski','Erick Cronin','Human Factors Manager','Lead','809-375-2185','Eliane.Sanford50@gmail.com','https://cdn.fakercloud.com/avatars/sergeyalmone_128.jpg','Avon','South Ravenmouth',28),
	 ('Davon','Thiel','Wm Gibson','Central Integration Engineer','Principal','663.934.6283','Juliana75@hotmail.com','https://cdn.fakercloud.com/avatars/marcoramires_128.jpg','Avon','Port Astrid',87),
	 ('Niko','Rolfson','Doreen Shanahan','Central Communications Assistant','Senior','631.663.7079 x97845','Vernie70@gmail.com','https://cdn.fakercloud.com/avatars/johannesneu_128.jpg','Cambridgeshire','Trentbury',51),
	 ('Garrick','Dooley','Winston Schinner','Central Data Agent','Lead','616.649.3788 x6673','Johnathan4@hotmail.com','https://cdn.fakercloud.com/avatars/nfedoroff_128.jpg','Berkshire','Padbergside',93),
	 ('Marlon','Frami','Jeannette Kling','Internal Infrastructure Assistant','Central','(667) 612-5196 x514','Paolo_Tromp86@hotmail.com','https://cdn.fakercloud.com/avatars/to_soham_128.jpg','Bedfordshire','Framishire',13),
	 ('Armani','Predovic','Howard Grady','Internal Metrics Liaison','Central','533.352.8046 x43215','Vivien36@gmail.com','https://cdn.fakercloud.com/avatars/kirangopal_128.jpg','Borders','Palm Springs',91),
	 ('Jedediah','Bashirian','Ms. Eula Gutkowski','Legacy Applications Engineer','Dynamic','(615) 369-4856','Felicia23@yahoo.com','https://cdn.fakercloud.com/avatars/alevizio_128.jpg','Bedfordshire','Spring Valley',49),
	 ('Kathryn','Reichel','Kelvin Cummings IV','Human Markets Liaison','Lead','(858) 981-5267','Jeff_Turcotte55@hotmail.com','https://cdn.fakercloud.com/avatars/brenton_clarke_128.jpg','Buckinghamshire','Lake Minervaton',56),
	 ('Verona','Pacocha','Brad Wyman','Human Group Developer','Dynamic','(349) 541-5064','Imelda_Schmitt@yahoo.com','https://cdn.fakercloud.com/avatars/madshensel_128.jpg','Cambridgeshire','Chicago',96),
	 ('Araceli','O`Conner','Rochelle Hirthe','Internal Creative Specialist','Dynamic','1-784-454-4296 x882','Mara5@gmail.com','https://cdn.fakercloud.com/avatars/gt_128.jpg','Cambridgeshire','Cheektowaga',10),
	 ('Jeramie','Leannon','Pam Kozey','International Tactics Analyst','Product','908.239.8518','Asa.Torp@gmail.com','https://cdn.fakercloud.com/avatars/peejfancher_128.jpg','Borders','West Emorychester',55),
	 ('Ruthe','Yundt','Herman Jones','Corporate Accounts Producer','Corporate','1-231-226-9339 x9458','Lonnie_Gaylord@yahoo.com','https://cdn.fakercloud.com/avatars/baluli_128.jpg','Cambridgeshire','Bayerburgh',24),
	 ('Clarabelle','Flatley','Kara Heller V','Direct Communications Strategist','Investor','(559) 205-7990 x6064','Marilyne_Stroman@hotmail.com','https://cdn.fakercloud.com/avatars/kolsvein_128.jpg','Cambridgeshire','Hampton',84),
	 ('Elza','Ward','Stacey Crooks','Global Quality Representative','Future','233.666.8221','Shany63@yahoo.com','https://cdn.fakercloud.com/avatars/kumarrajan12123_128.jpg','Borders','North Mazie',52),
	 ('Jaida','Schimmel','Stacey Robel','Lead Configuration Supervisor','Senior','(417) 452-6643','Casimer34@hotmail.com','https://cdn.fakercloud.com/avatars/tristanlegros_128.jpg','Avon','Gibsonmouth',24),
	 ('Kyle','Kutch','Joy Conroy','Lead Creative Supervisor','Human','287.976.8797 x5995','Catalina.Grady75@hotmail.com','https://cdn.fakercloud.com/avatars/langate_128.jpg','Avon','South Addison',76),
	 ('Judson','Macejkovic','Lynda Bartell','District Program Manager','Investor','250-542-3079 x636','Newell41@gmail.com','https://cdn.fakercloud.com/avatars/ChrisFarina78_128.jpg','Avon','Norfolk',1),
	 ('Doyle','Kuhn','Andrew Gottlieb PhD','Central Accounts Consultant','Chief','(471) 955-8285 x2007','Alfred.Purdy2@gmail.com','https://cdn.fakercloud.com/avatars/mufaddal_mw_128.jpg','Borders','South Theo',1),
	 ('Cielo','Hansen','Marsha Hauck','Customer Web Executive','Internal','852.736.1906','Wilfredo.Terry@yahoo.com','https://cdn.fakercloud.com/avatars/emmandenn_128.jpg','Borders','North Carmenfort',84),
	 ('Estelle','Murray','Eric Gleichner','Customer Quality Director','Direct','864-878-9333 x5470','Demarcus36@hotmail.com','https://cdn.fakercloud.com/avatars/iamjdeleon_128.jpg','Bedfordshire','Libbieland',18),
	 ('Nola','Maggio','Jerald Howe','International Paradigm Supervisor','Product','(304) 363-4101 x803','Guillermo80@hotmail.com','https://cdn.fakercloud.com/avatars/carlfairclough_128.jpg','Borders','Swiftside',80),
	 ('Addison','Douglas','Glenn Bogisich','Dynamic Identity Architect','Legacy','(618) 518-3191','Jeremy.Heller86@yahoo.com','https://cdn.fakercloud.com/avatars/miguelkooreman_128.jpg','Bedfordshire','Zackland',30),
	 ('Jaydon','Cormier','Shawna Gottlieb','Dynamic Assurance Agent','Legacy','1-968-327-1702 x0911','Orlando.Towne@gmail.com','https://cdn.fakercloud.com/avatars/rtyukmaev_128.jpg','Buckinghamshire','Lysannefurt',97),
	 ('Mario','Purdy','Santos Adams','Customer Security Associate','Central','212-554-7249','Matilda23@gmail.com','https://cdn.fakercloud.com/avatars/goddardlewis_128.jpg','Buckinghamshire','San Marcos',96),
	 ('Clovis','Goodwin','Mattie Moen Jr.','Dynamic Integration Assistant','Principal','1-517-814-9348 x808','Jeanie.Oberbrunner52@gmail.com','https://cdn.fakercloud.com/avatars/d33pthought_128.jpg','Berkshire','Duluth',88),
	 ('Bulah','Toy','Jana Spinka','District Research Officer','Dynamic','950.603.8691','Vaughn.Veum30@hotmail.com','https://cdn.fakercloud.com/avatars/osvaldas_128.jpg','Cambridgeshire','Eloyside',42),
	 ('Ike','Reynolds','Priscilla Hauck','Global Solutions Designer','Dynamic','663-510-4549 x39941','Marisa_Kunze@hotmail.com','https://cdn.fakercloud.com/avatars/ryuchi311_128.jpg','Avon','Pacochaland',13),
	 ('Eulalia','Toy','Ms. Elizabeth Swift','Internal Brand Specialist','Chief','273.579.2451','Cale.Baumbach@yahoo.com','https://cdn.fakercloud.com/avatars/albertaugustin_128.jpg','Borders','Zitaborough',35),
	 ('Phyllis','Hagenes','Bonnie Gottlieb MD','Chief Assurance Liaison','National','322-649-2908','Francis89@gmail.com','https://cdn.fakercloud.com/avatars/low_res_128.jpg','Avon','Eloisaville',51),
	 ('Jacklyn','Tillman','Esther Pouros','Dynamic Optimization Associate','International','1-705-604-8418 x7457','Zoila_Daniel77@gmail.com','https://cdn.fakercloud.com/avatars/gregrwilkinson_128.jpg','Cambridgeshire','Orenshire',28),
	 ('Lurline','Quitzon','Leah Wilkinson','Regional Identity Producer','Senior','1-822-293-5089','Adah25@hotmail.com','https://cdn.fakercloud.com/avatars/kevinoh_128.jpg','Bedfordshire','Lake Gladyce',16),
	 ('Mckenna','Sanford','Irene Bergnaum','Senior Mobility Architect','Lead','269-356-9572','Yvonne_Kessler@yahoo.com','https://cdn.fakercloud.com/avatars/dzantievm_128.jpg','Berkshire','South Zachary',56),
	 ('Arvid','Rath','Robin Kulas','Chief Interactions Consultant','District','(572) 827-0878 x8329','Scarlett54@gmail.com','https://cdn.fakercloud.com/avatars/billyroshan_128.jpg','Avon','North Spencerside',34),
	 ('Jules','Predovic','Van Jakubowski','Senior Markets Strategist','Direct','(857) 348-3759 x2786','Eloy63@gmail.com','https://cdn.fakercloud.com/avatars/kuldarkalvik_128.jpg','Buckinghamshire','West Ellastad',8),
	 ('Tillman','Koch','Mattie Metz','Central Tactics Designer','District','1-495-587-1082','Scarlett_Schmeler@yahoo.com','https://cdn.fakercloud.com/avatars/andyisonline_128.jpg','Cambridgeshire','Ann Arbor',6),
	 ('Lucinda','Ebert','Becky Friesen','Corporate Data Associate','Direct','354-200-3103 x61362','Karlie_Haag@yahoo.com','https://cdn.fakercloud.com/avatars/jagan123_128.jpg','Berkshire','Lake Nyamouth',94),
	 ('Hailee','Hyatt','Tracey Prohaska','District Web Planner','Forward','1-375-836-4926 x4635','Mark.Wolff@yahoo.com','https://cdn.fakercloud.com/avatars/balintorosz_128.jpg','Bedfordshire','Huntington Park',43),
	 ('Rory','Hauck','Dr. Cory Borer','Principal Directives Facilitator','Global','(889) 566-4852 x994','Jerry.McKenzie78@gmail.com','https://cdn.fakercloud.com/avatars/hanna_smi_128.jpg','Avon','Isabelshire',89),
	 ('Gabrielle','Collier','Roy Wiza','Chief Operations Orchestrator','Senior','371-846-7940 x749','Dexter_Schowalter@yahoo.com','https://cdn.fakercloud.com/avatars/a_brixen_128.jpg','Avon','Manteca',49),
	 ('Odell','Wehner','Melvin D`Amore','Direct Intranet Designer','Legacy','317.785.8276 x6600','Hudson40@yahoo.com','https://cdn.fakercloud.com/avatars/demersdesigns_128.jpg','Avon','Connellytown',64),
	 ('Colt','Schimmel','Jeannette Turcotte','Investor Assurance Architect','Dynamic','390-238-0854 x5069','Kay38@gmail.com','https://cdn.fakercloud.com/avatars/ernestsemerda_128.jpg','Cambridgeshire','Norwalk',12),
	 ('Abby','Konopelski','Dallas Davis','Direct Interactions Executive','Principal','285-756-8821','Erica_Jast@hotmail.com','https://cdn.fakercloud.com/avatars/iamgarth_128.jpg','Bedfordshire','South Ida',22),
	 ('Davonte','Ebert','Lorena Kuhlman','Dynamic Integration Planner','Regional','1-963-243-3857 x276','Alexander_Mayert71@gmail.com','https://cdn.fakercloud.com/avatars/andresdjasso_128.jpg','Avon','Davontefurt',46),
	 ('Liliane','Bernier','Naomi Watsica','Global Paradigm Supervisor','Direct','(921) 266-5175','Beverly74@gmail.com','https://cdn.fakercloud.com/avatars/tonymillion_128.jpg','Berkshire','Edmond',15),
	 ('Ardith','Prohaska','Calvin Bahringer','Future Research Officer','Regional','1-373-268-5924 x902','Lewis66@gmail.com','https://cdn.fakercloud.com/avatars/sergeyalmone_128.jpg','Buckinghamshire','North Agustinshire',70),
	 ('Cathrine','Beier','Bradley Brekke','Regional Intranet Coordinator','Customer','1-810-979-6821 x1955','Alanna_Satterfield@hotmail.com','https://cdn.fakercloud.com/avatars/vlajki_128.jpg','Avon','Kent',52),
	 ('Lawson','Corkery','Tina Walter','Legacy Branding Representative','Human','781.445.7023','Brook97@hotmail.com','https://cdn.fakercloud.com/avatars/fronx_128.jpg','Buckinghamshire','Langstad',2),
	 ('Roel','Schiller','Sandra Langosh','Dynamic Infrastructure Administrator','Future','432.870.8850','Thalia_Wehner78@gmail.com','https://cdn.fakercloud.com/avatars/jeremyshimko_128.jpg','Borders','Rapid City',58),
	 ('Boyd','Gerlach','Mrs. Jeannie Jaskolski','District Accounts Developer','Internal','(208) 650-5437 x8452','Jeffrey_Dickens40@gmail.com','https://cdn.fakercloud.com/avatars/kianoshp_128.jpg','Buckinghamshire','West Kristina',85),
	 ('Lyla','Cronin','Sherman Farrell II','Investor Identity Consultant','International','906.204.1302','Kraig47@yahoo.com','https://cdn.fakercloud.com/avatars/greenbes_128.jpg','Borders','Akron',21),
	 ('Syble','Herzog','Dr. Jacqueline Lang','Principal Quality Strategist','International','908.948.9458 x98663','Alexie71@hotmail.com','https://cdn.fakercloud.com/avatars/silv3rgvn_128.jpg','Berkshire','Rileybury',66),
	 ('Chyna','Dicki','Tara Johnson','Chief Accountability Officer','Central','(748) 814-2153','Jerry_Morar@gmail.com','https://cdn.fakercloud.com/avatars/wake_gs_128.jpg','Buckinghamshire','Lakewood',92),
	 ('Aliya','Ruecker','Henry Turner','Central Marketing Analyst','Lead','(956) 595-4922 x994','Halle40@gmail.com','https://cdn.fakercloud.com/avatars/91bilal_128.jpg','Avon','South Nyasia',13),
	 ('Odessa','Konopelski','Nettie Pacocha II','Senior Identity Designer','International','887.798.2807 x4249','Karson58@gmail.com','https://cdn.fakercloud.com/avatars/josecarlospsh_128.jpg','Berkshire','Rowanside',69),
	 ('Ken','Schuppe','Louise Hodkiewicz','Regional Optimization Planner','Regional','292-583-6572 x73721','Mafalda.Denesik@hotmail.com','https://cdn.fakercloud.com/avatars/emsgulam_128.jpg','Bedfordshire','Port Heleneshire',10),
	 ('Jannie','Mueller','Elbert Reichel','Customer Implementation Designer','Investor','1-639-236-3283 x2932','Odie9@hotmail.com','https://cdn.fakercloud.com/avatars/jffgrdnr_128.jpg','Buckinghamshire','Lake April',56),
	 ('Monica','Jones','Kathleen Schneider','Investor Communications Liaison','Global','1-673-718-0307 x8225','Vicente_Hane@yahoo.com','https://cdn.fakercloud.com/avatars/jitachi_128.jpg','Cambridgeshire','Kleinfort',50),
	 ('Noe','Leffler','Brent Wehner','Direct Web Administrator','Lead','591-350-1863','Jeremie8@hotmail.com','https://cdn.fakercloud.com/avatars/davecraige_128.jpg','Cambridgeshire','Simoneview',26),
	 ('Linwood','Stroman','Doreen Langworth','Product Creative Consultant','Chief','(443) 811-7175 x747','Wanda.Beahan32@hotmail.com','https://cdn.fakercloud.com/avatars/sweetdelisa_128.jpg','Bedfordshire','Gary',15),
	 ('Grover','Goyette','Carlos Maggio','Human Usability Manager','Global','714-952-5756','Katarina2@gmail.com','https://cdn.fakercloud.com/avatars/karsh_128.jpg','Cambridgeshire','North Violettetown',59),
	 ('Gregorio','Rolfson','Veronica Gislason','Product Assurance Executive','Regional','257.814.0976','Keaton_Kreiger77@yahoo.com','https://cdn.fakercloud.com/avatars/sergeyalmone_128.jpg','Bedfordshire','Cormierhaven',54),
	 ('Jaron','Hackett','Sheryl Klocko','Customer Brand Supervisor','Central','(711) 591-1508','Dorian_Boehm40@yahoo.com','https://cdn.fakercloud.com/avatars/apriendeau_128.jpg','Borders','Herzogtown',11),
	 ('Ubaldo','Crooks','Virgil Hoppe V','Regional Factors Specialist','Dynamic','(429) 723-1147 x65503','Ron.Mohr@gmail.com','https://cdn.fakercloud.com/avatars/bassamology_128.jpg','Cambridgeshire','Kleinport',14),
	 ('Iliana','Lesch','Annie Macejkovic III','District Web Coordinator','Customer','(943) 774-5529 x687','Soledad92@hotmail.com','https://cdn.fakercloud.com/avatars/olaolusoga_128.jpg','Bedfordshire','Pfannerstillfort',52),
	 ('Brayan','Gorczany','Jean Schimmel','Direct Interactions Associate','Dynamic','(384) 393-7587','Devante47@yahoo.com','https://cdn.fakercloud.com/avatars/mgonto_128.jpg','Avon','Whittier',33),
	 ('Sammie','Cummings','Julia Cruickshank','National Brand Supervisor','Lead','(791) 967-2561 x99221','Yvette_Streich@hotmail.com','https://cdn.fakercloud.com/avatars/gizmeedevil1991_128.jpg','Borders','Kenner',88),
	 ('Danielle','Lueilwitz','Lance Zulauf','Legacy Metrics Technician','Principal','1-348-318-5783 x5289','Dixie_Conroy@hotmail.com','https://cdn.fakercloud.com/avatars/jcubic_128.jpg','Buckinghamshire','Aurora',61),
	 ('Cortez','Connelly','Gwendolyn Sawayn','Chief Accountability Manager','Direct','1-418-341-8847','Devyn_Emmerich98@hotmail.com','https://cdn.fakercloud.com/avatars/flexrs_128.jpg','Berkshire','North Mandyville',89),
	 ('Murl','Champlin','Ryan Swaniawski','Corporate Group Orchestrator','National','(948) 368-6063 x42116','Casey_Bins11@gmail.com','https://cdn.fakercloud.com/avatars/adrienths_128.jpg','Bedfordshire','South Dangeloton',12),
	 ('Kiley','Lowe','Wayne Hyatt V','Principal Research Representative','Global','(369) 505-2039 x8901','Janet61@yahoo.com','https://cdn.fakercloud.com/avatars/sur4dye_128.jpg','Cambridgeshire','West Idellamouth',55),
	 ('Paula','Mann','Melinda Erdman','International Operations Designer','Product','216-713-4657 x3359','Belle_Block72@gmail.com','https://cdn.fakercloud.com/avatars/madshensel_128.jpg','Avon','New Modesta',40),
	 ('Eugene','Hyatt','Verna O`Hara IV','Central Markets Liaison','Senior','(891) 753-0934 x357','Nasir48@hotmail.com','https://cdn.fakercloud.com/avatars/beweinreich_128.jpg','Avon','Delano',57),
	 ('Ahmed','Botsford','Eleanor Balistreri','Lead Operations Strategist','Dynamic','422.326.1204 x25552','Veronica32@gmail.com','https://cdn.fakercloud.com/avatars/ahmetalpbalkan_128.jpg','Berkshire','Eunaside',31),
	 ('Vladimir','Frami','Josefina Abshire','International Functionality Producer','Principal','658.586.8574','Furman21@hotmail.com','https://cdn.fakercloud.com/avatars/chaensel_128.jpg','Berkshire','West Yesenia',27),
	 ('Melvin','Nikolaus','Francisco Stoltenberg','Future Functionality Consultant','District','1-606-266-8110','Edyth_Hickle@gmail.com','https://cdn.fakercloud.com/avatars/AlbertoCococi_128.jpg','Bedfordshire','New Manuelahaven',52);
	 


-- Output
Ar
7
Ma
7
Ja
5
El
4
Ka
4
Ro
4
Ab
3
Da
3
Ga
3
Je
3
Od
3
Ad
2
Au
2
Be
2
Br
2
Ch
2
Cl
2
Co
2
Eu
2
Fl
2
Gr
2
Ju
2
Kr
2
Li
2
Lu
2
No
2
Or
2
Pa
2
Sa
2
Ah
1
Al
1
An
1
Bl
1
Bo
1
Bu
1
Ca
1
Ci
1
Di
1
Do
1
Du
1
Es
1
Ge
1
Gu
1
Ha
1
Ho
1
Ik
1
Il
1
Is
1
Ke
1
Ki
1
Ko
1
Ky
1
La
1
Ly
1
Mc
1
Me
1
Mi
1
Mo
1
Mu
1
My
1
Ni
1
Ph
1
Ru
1
Ry
1
Sy
1
Ti
1
Tr
1
Ty
1
Ub
1
Ve
1
Vi
1
Vl
1
Wi
1