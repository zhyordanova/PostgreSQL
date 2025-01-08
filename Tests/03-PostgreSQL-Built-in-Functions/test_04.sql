-- Solution skeleton
CREATE TABLE IF NOT EXISTS currencies (
  "id" SERIAL PRIMARY KEY,
  currency_code CHAR(3) NOT NULL,
  description VARCHAR(200) NOT NULL
);
	

-- Input
INSERT INTO currencies (currency_code, description) 
VALUES 	
	('AED', 'United Arab Emirates Dirham'),
	('AFN', 'Afghanistan Afghani'),
	('ALL', 'Albania Lek'),
	('AMD', 'Armenia Dram'),
	('ANG', 'Netherlands Antilles Guilder'),
	('AOA', 'Angola Kwanza'),
	('ARS', 'Argentina Peso'),
	('AUD', 'Australia Dollar'),
	('AWG', 'Aruba Guilder'),
	('AZN', 'Azerbaijan New Manat');
	
	
-- Output
ed Arab Emirates Dirham
anistan Afghani
nia Lek
nia Dram
erlands Antilles Guilder
la Kwanza
ntina Peso
ralia Dollar
a Guilder
baijan New Manat