/* a. Create a table */
CREATE TABLE IF NOT EXISTS products (
  product_name VARCHAR(100) NOT NULL
);


INSERT INTO products (
	product_name
) 
VALUES
	('Broccoli'),
	('Shampoo'),
	('Toothpaste'),
	('Candy');
	

/* b. Define primary key when changing the existing table structure */
ALTER TABLE products
ADD COLUMN "id" SERIAL PRIMARY KEY;


/* Alternative */
ALTER TABLE products
ADD COLUMN "id" SERIAL UNIQUE;
