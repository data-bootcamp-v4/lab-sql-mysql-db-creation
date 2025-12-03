USE `lab_mysql_database_creation`;

START TRANSACTION;

COMMIT;
-- I forgot to create the attribut 'name'. So we create a column
ALTER TABLE customers
ADD COLUMN name VARCHAR(255) AFTER customer_id;

INSERT INTO customers (customer_id, name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');

-- we replace the number of characters from 1 to 2
ALTER TABLE country
MODIFY COLUMN iso_code CHAR(2) NOT NULL;
 
DESCRIBE country; 
 
 
INSERT INTO country (country_id, name, iso_code, Currency)
VALUES
  (1, 'France', 'FR', 'EUR'),
  (2, 'United States', 'US', 'USD'),
  (3, 'Japan', 'JP', 'JPY');
  
  
ALTER TABLE customers
MODIFY COLUMN phone_number varchar(20);
  
INSERT INTO customers (customer_id, name, address, postal_code, phone_number, email, city, state, country_id, car_id)
VALUES
  (1001, 'Jeanne Dupont', '10 Rue de la Paix', '75002', '+33-1-23-45-67-89', 'jeanne.dupont@example.com', 'Paris', 'Île-de-France', 1, NULL),
  (1002, 'John Doe', '500 5th Ave', '10018', '+1-212-555-1234', 'john.doe@example.com', 'New York', 'NY', 2, NULL),
  (1003, 'Suzuki Taro', '1-1 Chiyoda', '100-0001', '+81-3-1234-5678', 'suzuki.taro@example.com', 'Tokyo', 'Tokyo', 3, NULL);
  

INSERT INTO Store (store_id, name, adress)
VALUES
  (301, 'Paris Auto', '12 Rue Lafayette'),
  (302, 'NYC Motors', '600 Broadway'),
  (303, 'Tokyo Cars', '2-2 Marunouchi');
  
SELECT * FROM cars;

INSERT INTO cars
VALUES
  (201, 'VF1ABC12345678901', 'Red', 2022, 'Clio', 'Renault'),
  (202, '1HGCM82633A004352', 'Black', 2021, 'Civic', 'Honda'),
  (203, 'JHMFA16586S000123', 'White', 2023, 'Prius', 'Toyota');
  
SHOW CREATE TABLE salespersons;

-- to correct the error message saying that the table doesn't exist even if it exist.  We now have too tables with the same name 
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    staff_id BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
    name VARCHAR(255),
    address VARCHAR(255),
    store_id BIGINT
);


INSERT INTO salespersons (staff_id, name, address, store_id)
VALUES
  (501, 'Alice Martin', '12 Rue Lafayette', 301),
  (502, 'Bob Smith', '600 Broadway', 302),
  (503, 'Kenji Tanaka', '2-2 Marunouchi', 303);  
  
  
INSERT INTO invoices (invoice_number, date, total_amount, customer_id, car_id)
VALUES
  (9001, '2023-11-01 10:00:00', 18500.00, 1001, 201),
  (9002, '2023-11-05 14:30:00', 22000.00, 1002, 202),
  (9003, '2023-11-10 09:15:00', 27000.00, 1003, 203);

-- we rename the column salesstore to salescars
RENAME TABLE SalesStore TO SalesCars;
  
INSERT INTO SalesCars (id, name, staff_id, car_id)
VALUES
  (401, 'Paris Auto', 501, 201),   -- Alice Martin sells Renault Clio
  (402, 'NYC Motors', 502, 202),   -- Bob Smith sells Honda Civic
  (403, 'Tokyo Cars', 503, 203);   -- Kenji Tanaka sells Toyota Prius
  
INSERT INTO CustomerCar (id, date, customer_id, car_id)
VALUES
  (601, '2023-11-01 10:00:00', 1001, 201),
  (602, '2023-11-05 14:30:00', 1002, 202),
  (603, '2023-11-10 09:15:00', 1003, 203);