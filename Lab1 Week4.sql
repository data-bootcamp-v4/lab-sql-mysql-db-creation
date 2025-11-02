CREATE DATABASE IF NOT EXISTS car_dealership
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_0900_ai_ci;
USE car_dealership;

-- =========================
-- Table: cars
-- =========================
CREATE TABLE cars (
  car_id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  vin           VARCHAR(17) NOT NULL,            -- VIN is 17 chars standard
  manufacturer  VARCHAR(50) NOT NULL,
  model         VARCHAR(50) NOT NULL,
  model_year    YEAR NOT NULL,
  color         VARCHAR(30) NOT NULL,

  CONSTRAINT uq_cars_vin UNIQUE (vin),
  CONSTRAINT ck_cars_year CHECK (model_year BETWEEN 1990 AND 2100)
) ENGINE=InnoDB;

CREATE INDEX idx_cars_mfg_model_year ON cars (manufacturer, model, model_year);

-- =========================
-- Table: customers
-- =========================
CREATE TABLE customers (
  customer_id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  customer_code   VARCHAR(20) NOT NULL,          -- business-facing ID
  first_name      VARCHAR(50) NOT NULL,
  last_name       VARCHAR(50) NOT NULL,
  phone           VARCHAR(30),
  email           VARCHAR(100),
  address         VARCHAR(120),
  city            VARCHAR(60),
  state_province  VARCHAR(60),
  country         VARCHAR(60) NOT NULL,
  postal_code     VARCHAR(20),

  CONSTRAINT uq_customers_code UNIQUE (customer_code),
  CONSTRAINT uq_customers_email UNIQUE (email)
) ENGINE=InnoDB;

CREATE INDEX idx_customers_name ON customers (last_name, first_name);

-- =========================
-- Table: salespersons
-- =========================
CREATE TABLE salespersons (
  salesperson_id  INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  staff_code      VARCHAR(20) NOT NULL,          -- business-facing staff ID
  first_name      VARCHAR(50) NOT NULL,
  last_name       VARCHAR(50) NOT NULL,
  store           VARCHAR(80) NOT NULL,

  CONSTRAINT uq_salespersons_staff_code UNIQUE (staff_code)
) ENGINE=InnoDB;

CREATE INDEX idx_salespersons_name ON salespersons (last_name, first_name);
CREATE INDEX idx_salespersons_store ON salespersons (store);

-- =========================
-- Table: invoices
-- =========================
CREATE TABLE invoices (
  invoice_id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  invoice_number  VARCHAR(30) NOT NULL,
  invoice_date    DATE NOT NULL,

  car_id          INT UNSIGNED NOT NULL,
  customer_id     INT UNSIGNED NOT NULL,
  salesperson_id  INT UNSIGNED NOT NULL,

  price           DECIMAL(10,2) NOT NULL,
  tax_amount      DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  discount_amount DECIMAL(10,2) NOT NULL DEFAULT 0.00,

  grand_total     DECIMAL(12,2) AS (price + tax_amount - discount_amount) STORED,

  CONSTRAINT uq_invoices_number UNIQUE (invoice_number),
  CONSTRAINT uq_invoices_car UNIQUE (car_id),   -- each car can be sold once

  CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id) REFERENCES cars (car_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT fk_invoices_customer
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT fk_invoices_salesperson
    FOREIGN KEY (salesperson_id) REFERENCES salespersons (salesperson_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT ck_invoices_nonneg CHECK (price >= 0 AND tax_amount >= 0 AND discount_amount >= 0)
) ENGINE=InnoDB;

CREATE INDEX idx_invoices_date ON invoices (invoice_date);
CREATE INDEX idx_invoices_customer ON invoices (customer_id);
CREATE INDEX idx_invoices_salesperson ON invoices (salesperson_id);

-- Cars (inventory)
INSERT INTO cars (vin, manufacturer, model, model_year, color) VALUES
('1HGCM82633A004352','Honda','Civic',2022,'Blue'),
('3FAHP0HA7AR123456','Ford','Focus',2021,'White'),
('WVWZZZ1JZXW000001','Volkswagen','Golf',2023,'Red'),
('JTDKN3DU0A0123456','Toyota','Prius',2020,'Silver'),
('5YJ3E1EA7KF317000','Tesla','Model 3',2024,'Black');

-- Customers
INSERT INTO customers (customer_code, first_name, last_name, phone, email, address, city, state_province, country, postal_code) VALUES
('CUST-001','Alice','Müller','+49-160-111111','alice.mueller@example.com','Berger Str. 12','Frankfurt','HE','Germany','60316'),
('CUST-002','Budi','Santoso','+62-812-222222','budi.s@example.id','Jl. Sudirman 1','Jakarta','DKI','Indonesia','10220'),
('CUST-003','Carlos','García','+34-600-333333','carlos.garcia@example.es','Calle Mayor 5','Madrid','MD','Spain','28013');

-- Salespersons
INSERT INTO salespersons (staff_code, first_name, last_name, store) VALUES
('STAFF-FFM-01','Irene','Xu','Frankfurt City'),
('STAFF-FFM-02','Timo','Spitzer','Frankfurt City');

-- Invoices (sell two cars)
-- Find IDs if needed; here we assume fresh DB so car_id 1..5, customers 1..3, salespersons 1..2
INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, salesperson_id, price, tax_amount, discount_amount) VALUES
('INV-2025-0001','2025-10-15', 1, 1, 1, 21000.00, 3990.00, 500.00),    -- Honda Civic
('INV-2025-0002','2025-10-20', 5, 3, 2, 42000.00, 7980.00, 0.00);       -- Tesla Model 3



