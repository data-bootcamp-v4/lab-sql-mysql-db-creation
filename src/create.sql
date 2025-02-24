-- ==================================================
-- 1. Crear la base de datos y seleccionarla
-- ==================================================
CREATE DATABASE IF NOT EXISTS car_dealership_company;
USE car_dealership_company;

-- ==================================================
-- 2. Eliminar tablas si ya existen (opcional)
--    Esto evita errores si el script se ejecuta varias veces
-- ==================================================
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- ==================================================
-- 3. Crear tabla 'cars'
--    - id: PK auto-increment
--    - vin: VIN único por coche
--    - manufacturer, model, year, color
-- ==================================================
CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(50) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year INT NOT NULL,
  color VARCHAR(50),
  UNIQUE (vin)
) ENGINE=InnoDB;

-- ==================================================
-- 4. Crear tabla 'customers'
--    - id: PK auto-increment
--    - cust_id: ID específico de negocio
--    - otros campos: nombre, teléfono, etc.
-- ==================================================
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT NOT NULL,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(50),
  cust_email VARCHAR(100),
  cust_address VARCHAR(255),
  cust_city VARCHAR(100),
  cust_state VARCHAR(100),
  cust_country VARCHAR(100),
  cust_zipcode VARCHAR(20)
) ENGINE=InnoDB;

-- ==================================================
-- 5. Crear tabla 'salespersons'
--    - id: PK auto-increment
--    - staff_id: ID del empleado
--    - name, store
-- ==================================================
CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(100)
) ENGINE=InnoDB;

-- ==================================================
-- 6. Crear tabla 'invoices'
--    - id: PK auto-increment
--    - invoice_number, date
--    - car_id, customer_id y salesperson_id (FK)
-- ==================================================
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number BIGINT NOT NULL,
  date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  salesperson_id INT NOT NULL,
  CONSTRAINT fk_invoices_car 
    FOREIGN KEY (car_id) REFERENCES cars(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT fk_invoices_customer 
    FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT fk_invoices_salesperson 
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- ======================
-- Script finalizado
-- ======================
