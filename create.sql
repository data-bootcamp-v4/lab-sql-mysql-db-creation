CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Desactivar el chequeo de FKs para evitar problemas al re-ejecutar
SET FOREIGN_KEY_CHECKS = 0; 

-- ** 1. cars **
DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
    `car_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
    `manufacturer` VARCHAR(255) NOT NULL,
    `VIN` VARCHAR(255) NOT NULL UNIQUE,
    `model` VARCHAR(255) NOT NULL,
    `year` INTEGER NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`car_id`)
);

-- ** 2. customers **
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
    `customer_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
    `name` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state_province` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip_postal_code` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`customer_id`)
);

-- ** 3. sales_persons **
DROP TABLE IF EXISTS `sales_persons`;
CREATE TABLE IF NOT EXISTS `sales_persons` (
    `sales_person_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`sales_person_id`)
);

-- ** 4. invoices (FKs definidas aquí) **
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
    `invoice_number_pk` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `invoice_date` DATE NOT NULL,
    `sale_price` DECIMAL(10, 2) NOT NULL, -- Uso DECIMAL(10, 2) para el precio
    
    -- Estas son las columnas que actúan como FKs
    `car_id_fk` BIGINT NOT NULL, 
    `customer_id_fk` BIGINT NOT NULL,
    `sales_person_id_fk` BIGINT NOT NULL,
    
    PRIMARY KEY(`invoice_number_pk`),
    
    -- Definiciones de Claves Foráneas:
    -- La FK en esta tabla (invoices) apunta a la PK de la tabla externa.
    FOREIGN KEY (`car_id_fk`) REFERENCES `cars`(`car_id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (`customer_id_fk`) REFERENCES `customers`(`customer_id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (`sales_person_id_fk`) REFERENCES `sales_persons`(`sales_person_id`) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Reactivar el chequeo de FKs
SET FOREIGN_KEY_CHECKS = 1;