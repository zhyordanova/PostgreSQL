-- Solution skeleton
CREATE TABLE IF NOT EXISTS bookings_calculation (
  "id" SERIAL PRIMARY KEY,
  booked_for INT NOT NULL,
  multiplication NUMERIC(5,2),
  modulo NUMERIC(5,2),
  CONSTRAINT bookings_booked_for_check CHECK (booked_for >= 0),
  CONSTRAINT bookings_multiplication_check CHECK (multiplication >= 0),
  CONSTRAINT bookings_modulo_check CHECK (modulo >= 0)
);


-- Input
INSERT INTO bookings_calculation (
	booked_for, multiplication, modulo
) 
VALUES 
	(9, 450, 9),
	(3, 150, 3), 
	(9, 450, 9),
	(10, 500, 10),
	(1, 50, 1),
	(9, 450, 9);
	
	
-- Output
341.6666666666666667