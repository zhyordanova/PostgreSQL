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
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',97),
	 ('Aniya','Terry','Terrell Blanda IV','Regional Security Specialist','Global','894-432-3355 x066','Macie87@hotmail.com','https://cdn.fakercloud.com/avatars/langate_128.jpg','Buckinghamshire','Lake Marlene',73),
	 ('Treva','Blick','Kellie Barton','Global Integration Technician','Chief','920.650.0036','Alek.Murray@hotmail.com','https://cdn.fakercloud.com/avatars/bungiwan_128.jpg','Buckinghamshire','North Germainebury',29),
	 ('Judson','Macejkovic','Lynda Bartell','District Program Manager','Investor','250-542-3079 x636','Newell41@gmail.com','https://cdn.fakercloud.com/avatars/ChrisFarina78_128.jpg','Avon','Norfolk',1),
	 ('Doyle','Kuhn','Andrew Gottlieb PhD','Central Accounts Consultant','Chief','(471) 955-8285 x2007','Alfred.Purdy2@gmail.com','https://cdn.fakercloud.com/avatars/mufaddal_mw_128.jpg','Borders','South Theo',1),
	 ('Cielo','Hansen','Marsha Hauck','Customer Web Executive','Internal','852.736.1906','Wilfredo.Terry@yahoo.com','https://cdn.fakercloud.com/avatars/emmandenn_128.jpg','Borders','North Carmenfort',84),
	 ('Lawson','Corkery','Tina Walter','Legacy Branding Representative','Human','781.445.7023','Brook97@hotmail.com','https://cdn.fakercloud.com/avatars/fronx_128.jpg','Buckinghamshire','Langstad',2),
	 ('Roel','Schiller','Sandra Langosh','Dynamic Infrastructure Administrator','Future','432.870.8850','Thalia_Wehner78@gmail.com','https://cdn.fakercloud.com/avatars/jeremyshimko_128.jpg','Borders','Rapid City',58),
	 ('Boyd','Gerlach','Mrs. Jeannie Jaskolski','District Accounts Developer','Internal','(208) 650-5437 x8452','Jeffrey_Dickens40@gmail.com','https://cdn.fakercloud.com/avatars/kianoshp_128.jpg','Buckinghamshire','West Kristina',85);
	 
	 
	 
-- Output
Ms. Brandy Rice
Rosalind_Hudson@hotmail.com
Terrell Blanda IV
Macie87@hotmail.com
Andrew Gottlieb PhD
Alfred.Purdy2@gmail.com
Sandra Langosh
Thalia_Wehner78@gmail.com