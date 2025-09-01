SHOW DATABASES;
USE ironhack_lab;
SHOW TABLES;
DESCRIBE cars;
USE ironhack_lab;

-- 1) Cars
INSERT INTO cars (vin, manufacturer, model, year)
VALUES 
('1HGCM82633A004352','Honda','Civic','2020'),
('WDBUF56X38B123456','Mercedes','E350','2018'),
('3FA6P0LU6HR123456','Ford','Fusion','2017');

-- 2) Customers
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA');

-- 3) Salespersons
INSERT INTO salespersons (staff_id, name, store)
VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown');

-- 4) Invoices
-- Make sure the car_id, cust_id, and staff_id values match the IDs auto-generated when inserting into the other tables
INSERT INTO invoices (invoice_num, cust_id, staff_id)
VALUES
('INV-0001','C001','S001'),
('INV-0002','C002','S002'),
('INV-0003','C003','S003');
-- See all rows in each table
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;
USE ironhack_lab;

ALTER TABLE customers    ADD UNIQUE KEY uq_customers_cust_id (cust_id);
ALTER TABLE salespersons ADD UNIQUE KEY uq_salespersons_staff_id (staff_id);
ALTER TABLE invoices ADD COLUMN car_id INT;

-- Link each invoice to a car (adjust if your data is different)
UPDATE invoices SET car_id = 1 WHERE invoice_num = 'INV-0001';
UPDATE invoices SET car_id = 2 WHERE invoice_num = 'INV-0002';
UPDATE invoices SET car_id = 1 WHERE invoice_num = 'INV-0003';

USE ironhack_lab;

-- 1) Make invoice_num unique (good practice, safe, auditable)
ALTER TABLE invoices ADD UNIQUE KEY uq_invoice_num (invoice_num);

-- 2) Fill the car_id column using the unique key
UPDATE invoices SET car_id = 1 WHERE invoice_num = 'INV-0001';
UPDATE invoices SET car_id = 2 WHERE invoice_num = 'INV-0002';
UPDATE invoices SET car_id = 1 WHERE invoice_num = 'INV-0003';

-- 3) (Optional but recommended if rubric asks) Add foreign keys
ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id)  REFERENCES cars(id),
  ADD CONSTRAINT fk_invoices_cust
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
  ADD CONSTRAINT fk_invoices_staff
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id);

-- 4) Verify
SELECT * FROM invoices;

-- 5) Nice demo JOIN for the report
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

-- Make sure each invoice is linked to a car
UPDATE invoices SET car_id = 1 WHERE invoice_num = 'INV-0001';
UPDATE invoices SET car_id = 2 WHERE invoice_num = 'INV-0002';
UPDATE invoices SET car_id = 1 WHERE invoice_num = 'INV-0003';

-- Rerun the JOIN to verify
SELECT 
    i.invoice_num,
    c.cust_name,
    s.name AS salesperson,
    ca.manufacturer,
    ca.model,
    ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;
-- Make business IDs unique (good practice)
ALTER TABLE cars        ADD UNIQUE KEY uq_cars_vin (vin);
ALTER TABLE customers   ADD UNIQUE KEY uq_customers_cust_id (cust_id);
ALTER TABLE salespersons ADD UNIQUE KEY uq_salespersons_staff_id (staff_id);
ALTER TABLE invoices    ADD UNIQUE KEY uq_invoices_invoice_num (invoice_num);
-- Add the relationships
ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id)  REFERENCES cars(id),
  ADD CONSTRAINT fk_invoices_cust
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
  ADD CONSTRAINT fk_invoices_staff
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id);
    USE ironhack_lab;
    CREATE INDEX idx_invoices_car_id   ON invoices(car_id);
CREATE INDEX idx_invoices_cust_id  ON invoices(cust_id);
CREATE INDEX idx_invoices_staff_id ON invoices(staff_id);
-- 2) Add the FKs one by one (clearer errors if any)
ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
  FOREIGN KEY (car_id)  REFERENCES cars(id);

ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_cust
  FOREIGN KEY (cust_id) REFERENCES customers(cust_id);

ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_staff
  FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id);
  DESCRIBE cars;
DESCRIBE invoices;
DESCRIBE customers;
DESCRIBE salespersons;
-- car links that don't exist in cars
SELECT i.* 
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NOT NULL AND ca.id IS NULL;

-- customer links that don't exist in customers
SELECT i.*
FROM invoices i
LEFT JOIN customers c ON i.cust_id = c.cust_id
WHERE c.cust_id IS NULL;

-- staff links that don't exist in salespersons
SELECT i.*
FROM invoices i
LEFT JOIN salespersons s ON i.staff_id = s.staff_id
WHERE s.staff_id IS NULL;
USE ironhack_lab;

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;
-- Cars (ids will be 1,2,3)
INSERT INTO cars (vin, manufacturer, model, year)
VALUES 
('1HGCM82633A004352','Honda','Civic','2020'),
('WDBUF56X38B123456','Mercedes','E350','2018'),
('3FA6P0LU6HR123456','Ford','Fusion','2017');

-- Customers
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA');

-- Salespersons
INSERT INTO salespersons (staff_id, name, store)
VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown');
-- Link each invoice to a valid car
UPDATE invoices SET car_id = 1 WHERE id = 1;  -- INV-0001
UPDATE invoices SET car_id = 2 WHERE id = 2;  -- INV-0002
UPDATE invoices SET car_id = 1 WHERE id = 3;  -- INV-0003
-- Broken car links
SELECT i.* 
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NOT NULL AND ca.id IS NULL;

-- Broken customer links
SELECT i.*
FROM invoices i
LEFT JOIN customers c ON i.cust_id = c.cust_id
WHERE c.cust_id IS NULL;

-- Broken staff links
SELECT i.*
FROM invoices i
LEFT JOIN salespersons s ON i.staff_id = s.staff_id
WHERE s.staff_id IS NULL;
-- Indexes on child columns (safe, professor-friendly)
CREATE INDEX idx_invoices_car_id   ON invoices(car_id);
CREATE INDEX idx_invoices_cust_id  ON invoices(cust_id);
CREATE INDEX idx_invoices_staff_id ON invoices(staff_id);

-- Foreign keys (run one by one)
ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
  FOREIGN KEY (car_id)  REFERENCES cars(id);

ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_cust
  FOREIGN KEY (cust_id) REFERENCES customers(cust_id);

ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_staff
  FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id);
  SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
-- 1. Check car matches
SELECT i.id, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id;

-- 2. Check customer matches
SELECT i.id, i.cust_id, c.cust_id AS customer_table_id
FROM invoices i
LEFT JOIN customers c ON i.cust_id = c.cust_id;

-- 3. Check salesperson matches
SELECT i.id, i.staff_id, s.staff_id AS staff_table_id
FROM invoices i
LEFT JOIN salespersons s ON i.staff_id = s.staff_id;
USE ironhack_lab;

-- 1) See which invoices still miss a car match
SELECT i.id, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id;

-- 2) Link each invoice to an existing car (adjust if your car IDs differ)
UPDATE invoices SET car_id = 1 WHERE id = 1;  -- INV-0001
UPDATE invoices SET car_id = 2 WHERE id = 2;  -- INV-0002
UPDATE invoices SET car_id = 1 WHERE id = 3;  -- INV-0003

-- 3) Re-check (should show matching IDs now)
SELECT i.id, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id;

-- 4) (If not already added) index + FK for car
CREATE INDEX idx_invoices_car_id ON invoices(car_id);  -- ok if it says duplicate/exists
ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
  FOREIGN KEY (car_id) REFERENCES cars(id);
  USE ironhack_lab;

SELECT id, vin, manufacturer, model, year FROM cars;
SELECT id, invoice_num, car_id          FROM invoices;

-- Mismatch check
SELECT i.id, i.invoice_num, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id;
-- Example: suppose cars have ids 4 and 5 (adjust to your real ids)
UPDATE invoices SET car_id = 4 WHERE id = 1;  -- INV-0001
UPDATE invoices SET car_id = 5 WHERE id = 2;  -- INV-0002
UPDATE invoices SET car_id = 4 WHERE id = 3;  -- INV-0003
USE ironhack_lab;

SELECT id, vin, manufacturer, model, year FROM cars;
SELECT id, invoice_num, car_id FROM invoices;

-- find any mismatches (car_id that doesn't exist in cars)
SELECT i.id, i.invoice_num, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NULL OR ca.id IS NULL;
-- Example ONLY — replace 4/5 with your real car ids
UPDATE invoices SET car_id = 4 WHERE id = 1;  -- INV-0001
UPDATE invoices SET car_id = 5 WHERE id = 2;  -- INV-0002
UPDATE invoices SET car_id = 4 WHERE id = 3;  -- INV-0003
CREATE INDEX idx_invoices_car_id ON invoices(car_id);
ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
  FOREIGN KEY (car_id) REFERENCES cars(id);
  USE ironhack_lab;
SELECT id, vin, manufacturer, model, year FROM cars ORDER BY id;
-- if cars have ids 1 and 2:
UPDATE invoices SET car_id = 1 WHERE id = 1;  -- INV-0001
UPDATE invoices SET car_id = 2 WHERE id = 2;  -- INV-0002
UPDATE invoices SET car_id = 1 WHERE id = 3;  -- INV-0003
SELECT i.id, i.invoice_num, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NULL OR ca.id IS NULL;
USE ironhack_lab;

INSERT INTO cars (vin, manufacturer, model, year)
VALUES 
('1HGCM82633A004352','Honda','Civic','2020'),
('WDBUF56X38B123456','Mercedes','E350','2018');
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('1HGCM82633A004352', 'Honda', 'Civic', 2020, 'Blue'),
('WDBUF56X38B123456', 'Mercedes', 'E350', 2018, 'Black');
USE ironhack_lab;

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('1HGCM82633A004352', 'Honda',    'Civic', 2020, 'Blue'),
('WDBUF56X38B123456', 'Mercedes', 'E350',  2018, 'Black');

SELECT id, vin, manufacturer, model, year, color FROM cars;
-- Adjust IDs if your SELECT above showed different ones
UPDATE invoices SET car_id = 1 WHERE id = 1;  -- INV-0001 -> Honda
UPDATE invoices SET car_id = 2 WHERE id = 2;  -- INV-0002 -> Mercedes
UPDATE invoices SET car_id = 1 WHERE id = 3;  -- INV-0003 -> Honda

-- Sanity check: should show matching car_table_id values (not NULL)
SELECT i.id, i.invoice_num, i.car_id, ca.id AS car_table_id
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NULL OR ca.id IS NULL;
-- Ok if it says the index already exists
CREATE INDEX idx_invoices_car_id ON invoices(car_id);

ALTER TABLE invoices
  ADD CONSTRAINT fk_invoices_car
  FOREIGN KEY (car_id) REFERENCES cars(id);
  SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id
USE ironhack_lab;

-- Quick data peek
SELECT * FROM invoices;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM cars;

-- Diagnose each link (NULL on the right means the match failed)
SELECT i.id, i.invoice_num, i.cust_id, c.cust_id AS match_customer
FROM invoices i LEFT JOIN customers c ON i.cust_id = c.cust_id;

SELECT i.id, i.staff_id, s.staff_id AS match_staff
FROM invoices i LEFT JOIN salespersons s ON i.staff_id = s.staff_id;

SELECT i.id, i.car_id, ca.id AS match_car
FROM invoices i LEFT JOIN cars ca ON i.car_id = ca.id;
USE ironhack_lab;

-- Link the first two invoices to real cars (IDs from your cars table)
UPDATE invoices SET car_id = 1 WHERE id = 1;  -- INV-0001 -> car id 1
UPDATE invoices SET car_id = 2 WHERE id = 2;  -- INV-0002 -> car id 2

-- Quick check (should show no NULLs)
SELECT i.id, i.car_id, ca.id AS match_car
FROM invoices i
LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NULL OR ca.id IS NULL;

-- Final proof
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

-- 1) Ensure base data exists (no duplicates)
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('1HGCM82633A004352','Honda','Civic',2020,'Blue'),
('WDBUF56X38B123456','Mercedes','E350',2018,'Black')
ON DUPLICATE KEY UPDATE vin = vin;  -- no-op if already there

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name, store)
VALUES 
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = name;

-- 2) Point invoices to real cars (IDs 1 & 2 after the inserts above)
UPDATE invoices SET car_id = 1 WHERE id = 1;
UPDATE invoices SET car_id = 2 WHERE id = 2;
UPDATE invoices SET car_id = 1 WHERE id = 3;

-- 3) Quick sanity (should be 0 rows)
SELECT i.id, i.car_id, ca.id AS car_table_id
FROM invoices i LEFT JOIN cars ca ON i.car_id = ca.id
WHERE i.car_id IS NULL OR ca.id IS NULL;

-- 4) Final proof (should show 3 rows)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
  USE ironhack_lab;

-- Customer match (right column must NOT be NULL)
SELECT i.id, i.invoice_num, i.cust_id, c.cust_id AS match_customer
FROM invoices i LEFT JOIN customers c ON i.cust_id = c.cust_id;

-- Salesperson match (right column must NOT be NULL)
SELECT i.id, i.invoice_num, i.staff_id, s.staff_id AS match_staff
FROM invoices i LEFT JOIN salespersons s ON i.staff_id = s.staff_id;
-- Customers
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = VALUES(cust_name);

-- Salespersons
INSERT INTO salespersons (staff_id, name, store)
VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = VALUES(name);
USE ironhack_lab;

-- 1) Do we have customers?
SELECT COUNT(*) AS customers_rows FROM customers;

-- 2) If 0, (re)insert customers (safe: no duplicates)
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = VALUES(cust_name);

-- 3) Quick customer match check (right column must NOT be NULL)
SELECT i.id, i.invoice_num, i.cust_id, c.cust_id AS match_customer
FROM invoices i LEFT JOIN customers c ON i.cust_id = c.cust_id;

-- 4) Final proof (should now show 3 rows)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

SELECT
  SUM(ca.id   IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;
USE ironhack_lab;

-- Fix missing cars (assuming IDs 1 and 2 exist in cars table)
UPDATE invoices SET car_id = 1 WHERE car_id IS NULL AND id IN (1,3);
UPDATE invoices SET car_id = 2 WHERE car_id IS NULL AND id = 2;

-- Fix missing customers (assuming C001, C002, C003 exist in customers table)
UPDATE invoices SET cust_id = 'C001' WHERE cust_id IS NULL AND id = 1;
UPDATE invoices SET cust_id = 'C002' WHERE cust_id IS NULL AND id = 2;
UPDATE invoices SET cust_id = 'C003' WHERE cust_id IS NULL AND id = 3;

-- Re-check: should all be zero now
SELECT
  SUM(ca.id IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

-- Final joined query (should now show data)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

-- 0) Make sure the parent rows exist (no duplicates will be created)
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352','Honda','Civic',2020,'Blue'),
('WDBUF56X38B123456','Mercedes','E350',2018,'Black')
ON DUPLICATE KEY UPDATE vin = vin;

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count) VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name, store) VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = name;

-- 1) Link INVOICES → CUSTOMERS (by invoice_num so it’s unambiguous)
UPDATE invoices SET cust_id = 'C001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET cust_id = 'C002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET cust_id = 'C003' WHERE invoice_num = 'INV-0003';

-- 2) Link INVOICES → SALESPERSONS (harmless if already set)
UPDATE invoices SET staff_id = 'S001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET staff_id = 'S002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET staff_id = 'S003' WHERE invoice_num = 'INV-0003';

-- 3) Link INVOICES → CARS
-- (we inserted only two cars, so their ids are the first two in the table)
-- set INV-0001 and INV-0003 to the first car id, and INV-0002 to the second
UPDATE invoices SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1)
WHERE invoice_num IN ('INV-0001','INV-0003');

UPDATE invoices SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1 OFFSET 1)
WHERE invoice_num = 'INV-0002';

-- 4) Sanity check — these must all be 0
SELECT
  SUM(ca.id    IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

-- 5) Final proof (this should finally show 3 rows)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

-- 0) Make sure the parent rows exist (no duplicates will be created)
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352','Honda','Civic',2020,'Blue'),
('WDBUF56X38B123456','Mercedes','E350',2018,'Black')
ON DUPLICATE KEY UPDATE vin = vin;

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count) VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name, store) VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = name;

-- 1) Link INVOICES → CUSTOMERS (by invoice_num so it’s unambiguous)
UPDATE invoices SET cust_id = 'C001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET cust_id = 'C002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET cust_id = 'C003' WHERE invoice_num = 'INV-0003';

-- 2) Link INVOICES → SALESPERSONS (harmless if already set)
UPDATE invoices SET staff_id = 'S001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET staff_id = 'S002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET staff_id = 'S003' WHERE invoice_num = 'INV-0003';

-- 3) Link INVOICES → CARS
-- (we inserted only two cars, so their ids are the first two in the table)
-- set INV-0001 and INV-0003 to the first car id, and INV-0002 to the second
UPDATE invoices SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1)
WHERE invoice_num IN ('INV-0001','INV-0003');

UPDATE invoices SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1 OFFSET 1)
WHERE invoice_num = 'INV-0002';

-- 4) Sanity check — these must all be 0
SELECT
  SUM(ca.id    IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

-- 5) Final proof (this should finally show 3 rows)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

/* 1) Make sure parent rows exist (idempotent) */
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352','Honda','Civic', 2020,'Blue'),
('WDBUF56X38B123456','Mercedes','E350', 2018,'Black')
ON DUPLICATE KEY UPDATE vin = vin;

INSERT INTO customers
(cust_id, cust_name,     cust_phone,  cust_email,          cust_address,   cust_city, cust_state, cust_count)
VALUES
('C001',  'Alice Smith', '555-1234',  'alice@example.com', '123 Main St',  'New York','NY','USA'),
('C002',  'John Doe',    '555-5678',  'john@example.com',  '456 Park Ave', 'New York','NY','USA'),
('C003',  'Maria Lopez', '555-8765',  'maria@example.com', '789 Broadway', 'New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name,        store)
VALUES
('S001', 'Bob Jones',   'Downtown'),
('S002', 'Eva Lee',     'Uptown'),
('S003', 'Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = name;

/* 2) Link each invoice to real parents (use invoice_num so Safe Updates won’t block) */
-- Customers
UPDATE invoices SET cust_id = 'C001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET cust_id = 'C002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET cust_id = 'C003' WHERE invoice_num = 'INV-0003';

-- Salespersons
UPDATE invoices SET staff_id = 'S001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET staff_id = 'S002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET staff_id = 'S003' WHERE invoice_num = 'INV-0003';

-- Cars: use the first two car IDs in the table (works no matter what the actual IDs are)
UPDATE invoices
SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1)
WHERE invoice_num IN ('INV-0001','INV-0003');

UPDATE invoices
SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1 OFFSET 1)
WHERE invoice_num = 'INV-0002';

/* 3) Sanity: all zeros means joins will return rows */
SELECT
  SUM(ca.id    IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

/* 4) Final proof (take this screenshot) */
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

-- Make sure parent rows exist (won’t create duplicates)
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352','Honda','Civic',2020,'Blue'),
('WDBUF56X38B123456','Mercedes','E350',2018,'Black')
ON DUPLICATE KEY UPDATE vin = vin;

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count) VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name, store) VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = name;

-- Link INVOICES → CUSTOMERS (by invoice_num so safe-updates won’t block)
UPDATE invoices SET cust_id  = 'C001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET cust_id  = 'C002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET cust_id  = 'C003' WHERE invoice_num = 'INV-0003';

-- Link INVOICES → SALESPERSONS
UPDATE invoices SET staff_id = 'S001' WHERE invoice_num = 'INV-0001';
UPDATE invoices SET staff_id = 'S002' WHERE invoice_num = 'INV-0002';
UPDATE invoices SET staff_id = 'S003' WHERE invoice_num = 'INV-0003';

-- Link INVOICES → CARS (use the first two car IDs that exist)
UPDATE invoices
SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1)
WHERE invoice_num IN ('INV-0001','INV-0003');

UPDATE invoices
SET car_id = (SELECT id FROM cars ORDER BY id LIMIT 1 OFFSET 1)
WHERE invoice_num = 'INV-0002';

-- Sanity: must all be zeros
SELECT
  SUM(ca.id    IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

-- Final proof (should show 3 rows)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

-- Replace the 3 invoices with clean, linked rows
DELETE FROM invoices;

INSERT INTO invoices (invoice_num, cust_id, staff_id, car_id)
VALUES
('INV-0001','C001','S001',(SELECT id FROM cars ORDER BY id LIMIT 1)),
('INV-0002','C002','S002',(SELECT id FROM cars ORDER BY id LIMIT 1 OFFSET 1)),
('INV-0003','C003','S003',(SELECT id FROM cars ORDER BY id LIMIT 1));

-- Final proof
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;

USE ironhack_lab;

-- 1) Make sure parent rows exist (idempotent)
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A004352','Honda','Civic', 2020,'Blue'),
('WDBUF56X38B123456','Mercedes','E350', 2018,'Black')
ON DUPLICATE KEY UPDATE vin = vin;

INSERT INTO customers
(cust_id, cust_name,     cust_phone,  cust_email,          cust_address,   cust_city, cust_state, cust_count)
VALUES
('C001',  'Alice Smith', '555-1234',  'alice@example.com', '123 Main St',  'New York','NY','USA'),
('C002',  'John Doe',    '555-5678',  'john@example.com',  '456 Park Ave', 'New York','NY','USA'),
('C003',  'Maria Lopez', '555-8765',  'maria@example.com', '789 Broadway', 'New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name,        store)
VALUES
('S001', 'Bob Jones',   'Downtown'),
('S002', 'Eva Lee',     'Uptown'),
('S003', 'Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = name;

-- 2) Grab two real car IDs from whatever is in the table
SET @car1 := (SELECT id FROM cars ORDER BY id LIMIT 1);
SET @car2 := (SELECT id FROM cars ORDER BY id LIMIT 1 OFFSET 1);

-- Safety: if there is only 1 car row, reuse it
SET @car2 := COALESCE(@car2, @car1);

-- 3) UPSERT the invoices by invoice_num (guarantees they exist with correct FKs)
INSERT INTO invoices (invoice_num, cust_id, staff_id, car_id)
VALUES
('INV-0001','C001','S001',@car1),
('INV-0002','C002','S002',@car2),
('INV-0003','C003','S003',@car1)
ON DUPLICATE KEY UPDATE
  cust_id = VALUES(cust_id),
  staff_id = VALUES(staff_id),
  car_id  = VALUES(car_id);

-- 4) Sanity (should all be zeros)
SELECT
  SUM(ca.id    IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

-- 5) FINAL RESULT (this is your screenshot)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;

USE ironhack_lab;

SET SQL_SAFE_UPDATES = 0;

/* 1) Ensure parent rows exist (idempotent; won’t duplicate) */
INSERT IGNORE INTO cars (vin, manufacturer, model, year, color) VALUES
('VIN-AAA-001','Honda','Civic', 2020,'Blue'),
('VIN-AAA-002','Mercedes','E350', 2018,'Black');

INSERT INTO customers
(cust_id,  cust_name,     cust_phone,  cust_email,          cust_address,   cust_city, cust_state, cust_count)
VALUES
('C001',   'Alice Smith', '555-1234',  'alice@example.com', '123 Main St',  'New York','NY','USA'),
('C002',   'John Doe',    '555-5678',  'john@example.com',  '456 Park Ave', 'New York','NY','USA'),
('C003',   'Maria Lopez', '555-8765',  'maria@example.com', '789 Broadway', 'New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = cust_name;

INSERT INTO salespersons (staff_id, name,        store) VALUES
('S001', 'Bob Jones',    'Downtown'),
('S002', 'Eva Lee',      'Uptown'),
('S003', 'Carlos Perez', 'Midtown')
ON DUPLICATE KEY UPDATE name = name;

/* 2) Get concrete car IDs for the two VINs we just ensured */
SET @car1 := (SELECT id FROM cars WHERE vin='VIN-AAA-001' LIMIT 1);
SET @car2 := (SELECT id FROM cars WHERE vin='VIN-AAA-002' LIMIT 1);

/* 3) Upsert the 3 invoices so they DEFINITELY exist and link correctly */
-- If invoice_num is unique, this updates; if not, it inserts new rows.
INSERT INTO invoices (invoice_num, cust_id, staff_id, car_id) VALUES
('INV-0001','C001','S001',@car1),
('INV-0002','C002','S002',@car2),
('INV-0003','C003','S003',@car1)
ON DUPLICATE KEY UPDATE
  cust_id = VALUES(cust_id),
  staff_id = VALUES(staff_id),
  car_id  = VALUES(car_id);

/* 4) Sanity: these MUST all be zero now */
SELECT
  SUM(ca.id    IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id;

/* 5) FINAL RESULT — take this screenshot */
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer, ca.model, ca.year
FROM invoices i
JOIN customers    c ON i.cust_id = c.cust_id
JOIN salespersons s ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id  = ca.id;
USE ironhack_lab;

SELECT
  (SELECT COUNT(*) FROM invoices)                                           AS invoices,
  (SELECT COUNT(*) FROM invoices i JOIN customers    c ON i.cust_id  = c.cust_id)            AS after_customers,
  (SELECT COUNT(*) FROM invoices i JOIN customers c ON i.cust_id=c.cust_id
                         JOIN salespersons s ON i.staff_id=s.staff_id)                       AS after_salespersons,
  (SELECT COUNT(*) FROM invoices i JOIN customers c ON i.cust_id=c.cust_id
                         JOIN salespersons s ON i.staff_id=s.staff_id
                         JOIN cars ca        ON i.car_id = ca.id)                            AS final_inner;
                         SELECT 
  i.invoice_num,
  COALESCE(c.cust_name,'(no customer)')    AS cust_name,
  COALESCE(s.name,'(no salesperson)')      AS salesperson,
  COALESCE(ca.manufacturer,'(no car)')     AS manufacturer,
  COALESCE(ca.model,'')                    AS model,
  ca.year
FROM invoices i
LEFT JOIN customers    c  ON i.cust_id  = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id
LEFT JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;
USE ironhack_lab;

-- 1) Make sure the parent rows exist (safe if they already do)
INSERT INTO customers(cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count) VALUES
('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
('C002','John Doe','555-5678','john@example.com','456 Park Ave','New York','NY','USA'),
('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
ON DUPLICATE KEY UPDATE cust_name = VALUES(cust_name);

INSERT INTO salespersons(staff_id, name, store) VALUES
('S001','Bob Jones','Downtown'),
('S002','Eva Lee','Uptown'),
('S003','Carlos Perez','Midtown')
ON DUPLICATE KEY UPDATE name = VALUES(name);

INSERT INTO cars(vin, manufacturer, model, year, color) VALUES
('VIN-AAA-001','Honda','Civic',2020,'Blue'),
('VIN-AAA-002','Mercedes','E350',2018,'Black')
ON DUPLICATE KEY UPDATE manufacturer = VALUES(manufacturer);

-- 2) Get the car ids we just ensured exist
SET @car1 := (SELECT id FROM cars WHERE vin='VIN-AAA-001' LIMIT 1);
SET @car2 := (SELECT id FROM cars WHERE vin='VIN-AAA-002' LIMIT 1);

-- 3) Point each invoice to real parents (adjust if your invoice_nums differ)
UPDATE invoices SET cust_id='C001', staff_id='S001', car_id=@car1 WHERE invoice_num='INV-0001';
UPDATE invoices SET cust_id='C002', staff_id='S002', car_id=@car2 WHERE invoice_num='INV-0002';
UPDATE invoices SET cust_id='C003', staff_id='S003', car_id=@car1 WHERE invoice_num='INV-0003';

-- 4) Quick proof with INNER JOIN (should now return 3 rows)
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name       AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c  ON i.cust_id  = c.cust_id
JOIN salespersons s  ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;
ALTER TABLE invoices
  ADD INDEX idx_invoices_cust  (cust_id),
  ADD INDEX idx_invoices_staff (staff_id),
  ADD INDEX idx_invoices_car   (car_id),
  ADD CONSTRAINT fk_invoices_cust  FOREIGN KEY (cust_id)  REFERENCES customers(cust_id),
  ADD CONSTRAINT fk_invoices_staff FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id),
  ADD CONSTRAINT fk_invoices_car   FOREIGN KEY (car_id)   REFERENCES cars(id);
  USE ironhack_lab;

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('VIN-AAA-001','Honda','Civic',2020,'Blue'),
('VIN-AAA-002','Mercedes','E350',2018,'Black')
ON DUPLICATE KEY UPDATE manufacturer=VALUES(manufacturer), model=VALUES(model), year=VALUES(year), color=VALUES(color);
SELECT id, vin, manufacturer, model, year, color
FROM cars
ORDER BY id;
-- Map each invoice to a VIN, then set car_id from cars.id
UPDATE invoices i
JOIN (
  SELECT 'INV-0001' AS inv, 'VIN-AAA-001' AS vin UNION ALL
  SELECT 'INV-0002',        'VIN-AAA-002'        UNION ALL
  SELECT 'INV-0003',        'VIN-AAA-001'
) m ON m.inv = i.invoice_num
JOIN cars ca ON ca.vin = m.vin
SET i.car_id = ca.id;
SELECT 
  i.invoice_num,
  c.cust_name,
  s.name            AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c  ON i.cust_id  = c.cust_id
JOIN salespersons s  ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;
USE ironhack_lab;

-- 0) sanity (optional)
SELECT COUNT(*) AS invoices_total FROM invoices;

-- 1) Make sure the cars exist (VIN is unique). This keeps the same IDs if they already exist.
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
  ('VIN-AAA-001','Honda','Civic', 2020,'Blue'),
  ('VIN-AAA-002','Mercedes','E350',2018,'Black')
AS new
ON DUPLICATE KEY UPDATE
  manufacturer = new.manufacturer,
  model        = new.model,
  year         = new.year,
  color        = new.color;

-- 2) Make sure customers and salespersons exist (idempotent upserts)
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
  ('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
  ('C002','John Doe',  '555-5678','john@example.com', '456 Park Ave','New York','NY','USA'),
  ('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
AS new
ON DUPLICATE KEY UPDATE cust_name = new.cust_name;

INSERT INTO salespersons (staff_id, name, store)
VALUES
  ('S001','Bob Jones','Downtown'),
  ('S002','Eva Lee',  'Uptown'),
  ('S003','Carlos Perez','Midtown')
AS new
ON DUPLICATE KEY UPDATE name = new.name;

-- 3) Ensure the three invoices exist and point to the right customer/staff
INSERT INTO invoices (invoice_num, cust_id, staff_id)
VALUES
  ('INV-0001','C001','S001'),
  ('INV-0002','C002','S002'),
  ('INV-0003','C003','S003')
AS new
ON DUPLICATE KEY UPDATE
  cust_id  = new.cust_id,
  staff_id = new.staff_id;

-- 4) Map each invoice to a car by VIN, then set car_id from cars.id
UPDATE invoices i
JOIN (
  SELECT 'INV-0001' AS inv, 'VIN-AAA-001' AS vin UNION ALL
  SELECT 'INV-0002',        'VIN-AAA-002'        UNION ALL
  SELECT 'INV-0003',        'VIN-AAA-001'
) m  ON m.inv = i.invoice_num
JOIN cars ca ON ca.vin = m.vin
SET i.car_id = ca.id;

-- 5) Final proof (inner joins): should return 3 rows
SELECT
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c  ON i.cust_id  = c.cust_id
JOIN salespersons s  ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;
USE ironhack_lab;

-- 0) sanity (optional)
SELECT COUNT(*) AS invoices_total FROM invoices;

-- 1) Make sure the cars exist (VIN is unique). This keeps the same IDs if they already exist.
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
  ('VIN-AAA-001','Honda','Civic', 2020,'Blue'),
  ('VIN-AAA-002','Mercedes','E350',2018,'Black')
AS new
ON DUPLICATE KEY UPDATE
  manufacturer = new.manufacturer,
  model        = new.model,
  year         = new.year,
  color        = new.color;

-- 2) Make sure customers and salespersons exist (idempotent upserts)
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
  ('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
  ('C002','John Doe',  '555-5678','john@example.com', '456 Park Ave','New York','NY','USA'),
  ('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
AS new
ON DUPLICATE KEY UPDATE cust_name = new.cust_name;

INSERT INTO salespersons (staff_id, name, store)
VALUES
  ('S001','Bob Jones','Downtown'),
  ('S002','Eva Lee',  'Uptown'),
  ('S003','Carlos Perez','Midtown')
AS new
ON DUPLICATE KEY UPDATE name = new.name;

-- 3) Ensure the three invoices exist and point to the right customer/staff
INSERT INTO invoices (invoice_num, cust_id, staff_id)
VALUES
  ('INV-0001','C001','S001'),
  ('INV-0002','C002','S002'),
  ('INV-0003','C003','S003')
AS new
ON DUPLICATE KEY UPDATE
  cust_id  = new.cust_id,
  staff_id = new.staff_id;

-- 4) Map each invoice to a car by VIN, then set car_id from cars.id
UPDATE invoices i
JOIN (
  SELECT 'INV-0001' AS inv, 'VIN-AAA-001' AS vin UNION ALL
  SELECT 'INV-0002',        'VIN-AAA-002'        UNION ALL
  SELECT 'INV-0003',        'VIN-AAA-001'
) m  ON m.inv = i.invoice_num
JOIN cars ca ON ca.vin = m.vin
SET i.car_id = ca.id;

-- 5) Final proof (inner joins): should return 3 rows
SELECT
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c  ON i.cust_id  = c.cust_id
JOIN salespersons s  ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;

USE ironhack_lab;

-- 1) Cars (with color). If the VINs already exist, update fields.
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
  ('VIN-AAA-001','Honda','Civic', 2020,'Blue'),
  ('VIN-AAA-002','Mercedes','E350',2018,'Black')
AS new
ON DUPLICATE KEY UPDATE
  manufacturer = new.manufacturer,
  model        = new.model,
  year         = new.year,
  color        = new.color;

-- 2) Customers (idempotent)
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
  ('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
  ('C002','John Doe',  '555-5678','john@example.com', '456 Park Ave','New York','NY','USA'),
  ('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
AS new
ON DUPLICATE KEY UPDATE cust_name = new.cust_name;

-- 3) Salespersons (idempotent)
INSERT INTO salespersons (staff_id, name, store)
VALUES
  ('S001','Bob Jones','Downtown'),
  ('S002','Eva Lee',  'Uptown'),
  ('S003','Carlos Perez','Midtown')
AS new
ON DUPLICATE KEY UPDATE name = new.name;

-- 4) Make sure the three invoices exist and point to the right customer/staff (force set by invoice_num)
INSERT INTO invoices (invoice_num, cust_id, staff_id)
VALUES
  ('INV-0001','C001','S001'),
  ('INV-0002','C002','S002'),
  ('INV-0003','C003','S003')
AS new
ON DUPLICATE KEY UPDATE
  cust_id  = new.cust_id,
  staff_id = new.staff_id;

-- Just in case invoice_num wasn't unique earlier, HARD-SET the ids explicitly:
UPDATE invoices SET cust_id='C001', staff_id='S001' WHERE invoice_num='INV-0001';
UPDATE invoices SET cust_id='C002', staff_id='S002' WHERE invoice_num='INV-0002';
UPDATE invoices SET cust_id='C003', staff_id='S003' WHERE invoice_num='INV-0003';

-- 5) Map each invoice to a car by VIN → set car_id
UPDATE invoices i
JOIN (
  SELECT 'INV-0001' AS inv, 'VIN-AAA-001' AS vin UNION ALL
  SELECT 'INV-0002',        'VIN-AAA-002'        UNION ALL
  SELECT 'INV-0003',        'VIN-AAA-001'
) m  ON m.inv = i.invoice_num
JOIN cars ca ON ca.vin = m.vin
SET i.car_id = ca.id;

-- 6) Quick diagnostics (should all be zeros)
SELECT
  SUM(ca.id   IS NULL) AS missing_car_links,
  SUM(c.cust_id IS NULL) AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id= s.staff_id;

-- 7) Final result (INNER JOIN). Expect 3 rows.
SELECT
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c  ON i.cust_id  = c.cust_id
JOIN salespersons s  ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;
SELECT
  i.invoice_num,
  COALESCE(c.cust_name,'(no customer)') AS cust_name,
  COALESCE(s.name,'(no salesperson)')   AS salesperson,
  COALESCE(ca.manufacturer,'(no car)')  AS manufacturer,
  COALESCE(ca.model,'')                 AS model,
  ca.year
FROM invoices i
LEFT JOIN customers    c  ON i.cust_id  = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id
LEFT JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num;
USE ironhack_lab;

-- Ensure the 2 cars exist (with color)
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
  ('VIN-AAA-001','Honda','Civic', 2020,'Blue'),
  ('VIN-AAA-002','Mercedes','E350',2018,'Black')
AS new
ON DUPLICATE KEY UPDATE
  manufacturer = new.manufacturer,
  model        = new.model,
  year         = new.year,
  color        = new.color;

-- Ensure 3 customers exist
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_count)
VALUES
  ('C001','Alice Smith','555-1234','alice@example.com','123 Main St','New York','NY','USA'),
  ('C002','John Doe',  '555-5678','john@example.com', '456 Park Ave','New York','NY','USA'),
  ('C003','Maria Lopez','555-8765','maria@example.com','789 Broadway','New York','NY','USA')
AS new
ON DUPLICATE KEY UPDATE cust_name = new.cust_name;

-- Ensure 3 salespersons exist
INSERT INTO salespersons (staff_id, name, store)
VALUES
  ('S001','Bob Jones','Downtown'),
  ('S002','Eva Lee',  'Uptown'),
  ('S003','Carlos Perez','Midtown')
AS new
ON DUPLICATE KEY UPDATE name = new.name;

-- Ensure invoices exist for those 3, and FORCE their cust/staff
INSERT INTO invoices (invoice_num, cust_id, staff_id)
VALUES
  ('INV-0001','C001','S001'),
  ('INV-0002','C002','S002'),
  ('INV-0003','C003','S003')
AS new
ON DUPLICATE KEY UPDATE
  cust_id  = new.cust_id,
  staff_id = new.staff_id;

UPDATE invoices SET cust_id='C001', staff_id='S001' WHERE invoice_num='INV-0001';
UPDATE invoices SET cust_id='C002', staff_id='S002' WHERE invoice_num='INV-0002';
UPDATE invoices SET cust_id='C003', staff_id='S003' WHERE invoice_num='INV-0003';

-- Map each invoice to a car by VIN → set car_id
UPDATE invoices i
JOIN (
  SELECT 'INV-0001' AS inv, 'VIN-AAA-001' AS vin UNION ALL
  SELECT 'INV-0002',        'VIN-AAA-002'        UNION ALL
  SELECT 'INV-0003',        'VIN-AAA-001'
) m  ON m.inv = i.invoice_num
JOIN cars ca ON ca.vin = m.vin
SET i.car_id = ca.id;

-- Sanity: should be 0,0,0 (no missing links)
SELECT
  SUM(ca.id IS NULL)      AS missing_car_links,
  SUM(c.cust_id IS NULL)  AS missing_customer_links,
  SUM(s.staff_id IS NULL) AS missing_staff_links
FROM invoices i
LEFT JOIN cars         ca ON i.car_id  = ca.id
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id= s.staff_id;

-- FINAL (INNER JOIN) – should show 3 rows
SELECT
  i.invoice_num,
  c.cust_name,
  s.name AS salesperson,
  ca.manufacturer,
  ca.model,
  ca.year
FROM invoices i
JOIN customers    c  ON i.cust_id  = c.cust_id
JOIN salespersons s  ON i.staff_id = s.staff_id
JOIN cars         ca ON i.car_id   = ca.id
ORDER BY i.invoice_num

USE ironhack_lab;

SELECT
  i.invoice_num,
  COALESCE(c.cust_name, '(no customer)')          AS cust_name,
  COALESCE(s.name, '(no salesperson)')            AS salesperson,
  COALESCE(ca.manufacturer, '(no car)')           AS manufacturer,
  COALESCE(ca.model, '(no car)')                  AS model,
  COALESCE(CAST(ca.year AS CHAR), '(no car)')     AS year
FROM invoices i
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id
LEFT JOIN cars         ca ON i.car_id  = ca.id
ORDER BY i.invoice_num;
SELECT
  i.invoice_num,
  COALESCE(c.cust_name, '(no customer)')          AS cust_name,
  COALESCE(s.name, '(no salesperson)')            AS salesperson,
  COALESCE(ca.manufacturer, '(no car)')           AS manufacturer,
  COALESCE(ca.model, '(no car)')                  AS model,
  COALESCE(CAST(ca.year AS CHAR), '(no car)')     AS year
FROM invoices i
LEFT JOIN customers    c  ON i.cust_id = c.cust_id
LEFT JOIN salespersons s  ON i.staff_id = s.staff_id
LEFT JOIN cars         ca ON i.car_id  = ca.id
ORDER BY i.invoice_num;

