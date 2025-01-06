-- Solution skeleton
CREATE TYPE 
	type_mood AS ENUM ('happy', 'relaxed', 'stressed', 'sad');
	
CREATE TABLE IF NOT EXISTS minions_info (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) DEFAULT '',
	code CHAR(4) DEFAULT '',
	task VARCHAR(150),
	banana NUMERIC(8, 3) CHECK (banana >= 0),
	email VARCHAR(20) UNIQUE,
	equipped BOOLEAN,
	mood type_mood
);

INSERT INTO 
	minions_info (name, code, task, banana, email, equipped, mood)
VALUES 
	('Mark', 'GKYA', 'Graphing Points', '3265.265', 'mark@minion.com',	'false', 'happy'),
	('Mel', 'HSK', 'Science Investigation', '54784.996', 'mel@minion.com',	'true', 'stressed'),
	('Bob', 'HF', 'Painting', '35.652', 'bob@minion.com', 'true', 'happy'),
	('Darwin', 'EHND', 'Create a Digital Greeting', '321.958', 'darwin@minion.com', 'false', 'relaxed'),
	('Kevin', 'KMHD', 'Construct with Virtual Blocks', '35214.789', 'kevin@minion.com', 'false', 'happy'),
 	('Norbert', 'FEWB', 'Testing', '3265.500', 'norbert@minion.com', 'true', 'sad'),
 	('Donny', 'L', 'Make a Map', '8.452', 'donny@minion.com', 'true', 'happy');
	

-- Result

Mark
Graphing Points
mark@minion.com
3265.265
Mel
Science Investigation
mel@minion.com
54784.996
Bob
Painting
bob@minion.com
35.652
Darwin
Create a Digital Greeting
darwin@minion.com
321.958
Kevin
Construct with Virtual Blocks
kevin@minion.com
35214.789
Norbert
Testing
norbert@minion.com
3265.500
Donny
Make a Map
donny@minion.com
8.452