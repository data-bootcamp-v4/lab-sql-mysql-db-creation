CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS stores;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS models;
DROP TABLE IF EXISTS manufacturers;
DROP TABLE IF EXISTS colors;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS state;
DROP TABLE IF EXISTS country;

CREATE TABLE country(
	country_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(20)
);

CREATE TABLE state(
	state_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(20),
    country_id BIGINT UNSIGNED,
    
    FOREIGN KEY (country_id)
        REFERENCES country(country_id)
);

CREATE TABLE city(
	city_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(20),
    state_id BIGINT UNSIGNED,
    
    FOREIGN KEY (state_id)
        REFERENCES state(state_id)
);

CREATE TABLE colors(
	color_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE manufacturers(
	manufacturer_id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    manufacturer VARCHAR(50)
);

CREATE TABLE models(
	model_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    manufacturer_id BIGINT UNSIGNED NOT NULL,
    model VARCHAR(50),
    
    FOREIGN KEY (manufacturer_id)
        REFERENCES manufacturers(manufacturer_id)
);

CREATE TABLE customers(
	customer_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cust_id BIGINT UNSIGNED NOT NULL UNIQUE,
    customer_name VARCHAR(20),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city_id BIGINT UNSIGNED,
    postal_code VARCHAR(20),
    
    FOREIGN KEY (city_id)
    REFERENCES city(city_id)
);

CREATE TABLE stores(
	store_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(20),
    store_address VARCHAR(255),
    city_id BIGINT UNSIGNED,
    
    FOREIGN KEY (city_id)
    REFERENCES city(city_id)
);

CREATE TABLE salespersons(
	salesperson_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    salesperson_name VARCHAR(20),
    store_id BIGINT UNSIGNED,
    
    FOREIGN KEY (store_id)
    REFERENCES stores(store_id)
);

CREATE TABLE cars(
	car_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    vin VARCHAR(17) NOT NULL UNIQUE,
    
    model_id BIGINT UNSIGNED NOT NULL,
    color_id BIGINT UNSIGNED NOT NULL,
    
	production_year YEAR,
    
    INDEX idx_model(model_id),

    FOREIGN KEY (model_id)
        REFERENCES models(model_id),

    FOREIGN KEY (color_id)
        REFERENCES colors(color_id)
);

CREATE TABLE invoices(
	invoice_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL UNIQUE,
    
    car_id BIGINT UNSIGNED NOT NULL UNIQUE,
    customer_id BIGINT UNSIGNED NOT NULL,
    salesperson_id BIGINT UNSIGNED NOT NULL,
    
    invoice_date DATE NOT NULL,
    
    FOREIGN KEY (car_id)
        REFERENCES cars(car_id),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    FOREIGN KEY (salesperson_id)
        REFERENCES salespersons(salesperson_id)
);

SHOW TABLES;
