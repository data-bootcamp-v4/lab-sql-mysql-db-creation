CREATE DATABASE IF NOT EXISTS lab_mysql1;
USE lab_mysql1;

CREATE TABLE IF NOT EXISTS `Salespersons` (
    `id_staff` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),
    `Store` VARCHAR(255),
    PRIMARY KEY (`id_staff`));
    DESCRIBE Salespersons;

INSERT INTO Salespersons (name, Store)
VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Mimia'),
('Bob Frappes', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');

CREATE TABLE IF NOT EXISTS `Invoices` (
    `invoice_id` INT NOT NULL AUTO_INCREMENT,
    `invoice_number` BIGINT,
    `date` DATE,
    `id_car` BIGINT,
    `id_customer` BIGINT,
    `id_staff` BIGINT,
    PRIMARY KEY (`invoice_id`),
    FOREIGN KEY (`id_car`) REFERENCES `Cars`(`id_car`),
    FOREIGN KEY (`id_customer`) REFERENCES `Customers`(`id_customer`),
    FOREIGN KEY (`id_staff`) REFERENCES `Salespersons`(`id_staff`));

INSERT INTO Invoices (invoice_number, date, id_car, id_customer, id_staff)
VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 5, 5),
(271135104, '2019-01-22', 2, 2, 7);

CREATE TABLE IF NOT EXISTS `Cars` (
    `id_car` BIGINT NOT NULL AUTO_INCREMENT,
    `vin` VARCHAR(255),
    `manufacturer` VARCHAR(255),
    `model` VARCHAR(255),
    `year` DATE,
    `color_cars` VARCHAR(255),
    PRIMARY KEY (`id_car`));

INSERT INTO Cars (vin, manufacturer, model, year, color_cars)
VALUES 
('3214314ABSJE', 'Ford', 'Puma', '2000-05-07', 'Red'),
('32143123DAEE', 'Peugeot', '207', '2007-03-02', 'Grey'),
('23425342EGSE', 'Jaguar', 'X-Type', '2013-01-02', 'Yellow');

CREATE TABLE IF NOT EXISTS `Customers` (
    `id_customer` BIGINT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255),
    `Phone_Number` VARCHAR(255),
    `Email` VARCHAR(255),
    `Address` VARCHAR(255),
    `City` VARCHAR(255),
    `State` VARCHAR(255),
    `Country` VARCHAR(255),
    `Postal_code` VARCHAR(255),
    PRIMARY KEY (`id_customer`));


INSERT INTO Customers (Name, Phone_Number, Email, Address, City, State, Country, Postal_code)
VALUES
('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


DESCRIBE Salespersons;
