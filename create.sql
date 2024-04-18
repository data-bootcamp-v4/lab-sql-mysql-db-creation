CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;





-- -----------------------------------------------------
-- Table mydb.customers
-- -----------------------------------------------------
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  email VARCHAR(45) NULL,
  address VARCHAR(45) NOT NULL,
  city VARCHAR(45) NOT NULL,
  state_province VARCHAR(45) NOT NULL,
  country VARCHAR(45) NOT NULL,
  zip VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.salespersons
-- -----------------------------------------------------
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  store VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.invoices
-- -----------------------------------------------------
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  num INT NOT NULL,
  date DATETIME NULL,
  car VARCHAR(45) NOT NULL,
  customers_id INT NOT NULL,
  salespersons_id INT NOT NULL,
  PRIMARY KEY (num, customers_id, salespersons_id),
  INDEX fk_invoices_customers1_idx (customers_id ASC) VISIBLE,
  INDEX fk_invoices_salespersons1_idx (salespersons_id ASC) VISIBLE,
  UNIQUE INDEX num_UNIQUE (num ASC) VISIBLE,
  CONSTRAINT fk_invoices_customers1
    FOREIGN KEY (customers_id)
    REFERENCES mydb.customers (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_invoices_salespersons1
    FOREIGN KEY (salespersons_id)
    REFERENCES mydb.salespersons (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.cars
-- -----------------------------------------------------
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  VIN VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(45) NOT NULL,
  model VARCHAR(45) NOT NULL,
  year YEAR(4) NULL,
  color VARCHAR(45) NULL,
  customers_id INT NOT NULL,
  salespersons_id INT NOT NULL,
  invoices_num INT NOT NULL,
  invoices_customers_id INT NOT NULL,
  invoices_salespersons_id INT NOT NULL,
  PRIMARY KEY (VIN),
  INDEX fk_cars_customers1_idx (customers_id ASC) VISIBLE,
  INDEX fk_cars_salespersons1_idx (salespersons_id ASC) VISIBLE,
  INDEX fk_cars_invoices1_idx (invoices_num ASC, invoices_customers_id ASC, invoices_salespersons_id ASC) VISIBLE,
  UNIQUE INDEX VIN_UNIQUE (VIN ASC) VISIBLE,
  CONSTRAINT fk_cars_customers1
    FOREIGN KEY (customers_id)
    REFERENCES customers (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_cars_salespersons1
    FOREIGN KEY (salespersons_id)
    REFERENCES salespersons (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_cars_invoices1
    FOREIGN KEY (invoices_num , invoices_customers_id , invoices_salespersons_id)
    REFERENCES invoices (num , customers_id , salespersons_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.salespersons_has_customers
-- -----------------------------------------------------
DROP TABLE IF EXISTS salespersons_has_customers;
CREATE TABLE salespersons_has_customers (
  salespersons_id INT NOT NULL,
  customers_id INT NOT NULL,
  PRIMARY KEY (salespersons_id, customers_id),
  INDEX fk_salespersons_has_customers_customers1_idx (customers_id ASC) VISIBLE,
  INDEX fk_salespersons_has_customers_salespersons1_idx (salespersons_id ASC) VISIBLE,
  CONSTRAINT fk_salespersons_has_customers_salespersons1
    FOREIGN KEY (salespersons_id)
    REFERENCES salespersons (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_salespersons_has_customers_customers1
    FOREIGN KEY (customers_id)
    REFERENCES customers (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red")