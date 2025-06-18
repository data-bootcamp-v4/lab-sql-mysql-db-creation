USE lab_mysql;

-- Disable checks for smooth execution
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS = 0;

-- Clear data in proper order
DELETE FROM invoices;
DELETE FROM customers;
DELETE FROM salespersons;
DELETE FROM cars;

-- Insert cars with explicit IDs
INSERT INTO cars (id, vin, manufacturer, model, year, color) VALUES 
  (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
  (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
  (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
  (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
  (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
  (6, 'XX41UDN3CHU2VVVV1', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Insert customers
INSERT INTO customers (id, cust_id, name, phone, email, address, city, state, country, zipcode) VALUES
  (1, 10001, 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
  (2, 20001, 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
  (3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'hello@napoleon.me', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert salespersons
INSERT INTO salespersons (staff_id, name, store) VALUES 
  ('00001', 'Petey Cruiser', 'Madrid'),
  ('00002', 'Anna Sthesia', 'Barcelona'),
  ('00003', 'Paul Molive', 'Berlin'),
  ('00004', 'Gail Forcewind', 'Paris'),
  ('00005', 'Paige Turner', 'Miami'),
  ('00006', 'Bob Frapples', 'Mexico City'),
  ('00007', 'Walter Melon', 'Amsterdam'),
  ('00008', 'Shonda Leer', 'São Paulo');

-- Drop existing constraints one by one with error handling
DROP PROCEDURE IF EXISTS drop_fk_if_exists;
DELIMITER //
CREATE PROCEDURE drop_fk_if_exists(IN tbl VARCHAR(64), IN fk_name VARCHAR(64))
BEGIN
    IF EXISTS (
        SELECT 1 FROM information_schema.table_constraints 
        WHERE constraint_schema = DATABASE() 
        AND table_name = tbl 
        AND constraint_name = fk_name
        AND constraint_type = 'FOREIGN KEY'
    ) THEN
        SET @sql = CONCAT('ALTER TABLE ', tbl, ' DROP FOREIGN KEY ', fk_name);
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END //
DELIMITER ;

-- Drop all possible foreign key constraints
CALL drop_fk_if_exists('invoices', 'invoices_ibfk_1');
CALL drop_fk_if_exists('invoices', 'invoices_ibfk_2');
CALL drop_fk_if_exists('invoices', 'invoices_ibfk_3');
CALL drop_fk_if_exists('invoices', 'fk_invoice_car');
CALL drop_fk_if_exists('invoices', 'fk_invoice_customer');
CALL drop_fk_if_exists('invoices', 'fk_invoice_salesperson');

-- Add new constraints with unique names
ALTER TABLE invoices
ADD CONSTRAINT invoices_fk_car
FOREIGN KEY (car_id) REFERENCES cars(id);

ALTER TABLE invoices
ADD CONSTRAINT invoices_fk_customer
FOREIGN KEY (customer_id) REFERENCES customers(id);

ALTER TABLE invoices
ADD CONSTRAINT invoices_fk_salesperson
FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id);

-- Insert invoice data
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES 
  (852399038, '2018-08-22', 1, 1, '00003'),
  (731166526, '2018-12-31', 3, 3, '00005'),
  (271135104, '2019-01-22', 2, 2, '00007');

-- Clean up
DROP PROCEDURE IF EXISTS drop_fk_if_exists;

-- Restore settings
SET FOREIGN_KEY_CHECKS = 1;
SET SQL_SAFE_UPDATES = 1;