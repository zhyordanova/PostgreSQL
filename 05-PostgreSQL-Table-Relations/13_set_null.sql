/* Create Customers Table */
CREATE TABLE customers(
   "id" SERIAL PRIMARY KEY,
   customer_name VARCHAR(100) NOT NULL
);


/* Create Contacts Table */
CREATE TABLE contacts(
   "id" SERIAL PRIMARY KEY,
   contact_name VARCHAR(255) NOT NULL,
   phone VARCHAR(15),
   email VARCHAR(255),
   customer_id INT,
   CONSTRAINT fk_contacts_customers
      FOREIGN KEY(customer_id) 
	  REFERENCES customers("id")
	  ON DELETE SET NULL
	  ON UPDATE CASCADE
);


/* Insert into Customers Table */
INSERT INTO customers (
	customer_name
) 
VALUES
	('BlueBird Inc'),
	('Dolphin LLC');
	

/* Insert into Contacts Table */
INSERT INTO contacts (
	contact_name, phone, email, customer_id
) 
VALUES
	('John Doe','(408)-111-1234','john.doe@bluebird.dev', 1),
    ('Jane Doe','(408)-111-1235','jane.doe@bluebird.dev', 1),
    ('David Wright','(408)-222-1234','david.wright@dolphin.dev', 2);


/* Delete Customer with "id" = 1 */ 
DELETE FROM customers
WHERE customers.id = 1;