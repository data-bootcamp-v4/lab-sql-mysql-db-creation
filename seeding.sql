CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


INSERT INTO `Cars` (`id`, `VIN`, `year`, `model`, `manufacturer`, `color`)
VALUES
(1, '3K096I98581DHSNUP', 2019, 'Tiguan', 'Volkswagen', 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 2019, 'Rifter', 'Peugeot', 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 2018, 'Fusion', 'Ford', 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 2018, 'RAV4', 'Toyota', 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 2019, 'V60', 'Volvo', 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 2019, 'V60 Cross Country', 'Volvo', 'Gray');


INSERT INTO `Customers` (`id`, `name`, `customer_ID`, `email`, `address`, `country`, `city`, `state/province`, `zip/postal code`, `phone_number`)
VALUES
(1, 'Pablo Picasso', 10001, NULL, 'Paseo de la Chopera, 14', 'Spain', 'Madrid', 'Madrid', '28045', '+34 636 17 63 82'),
(2, 'Abraham Lincoln', 20001, NULL, '120 SW 8th St', 'United States', 'Miami', 'Florida', '33130', '+1 305 907 7086'),
(3, 'Napoléon Bonaparte', 30001, NULL, '40 Rue du Colisée', 'France', 'Paris', 'Île-de-France', '75008', '+33 1 79 75 40 00');


INSERT INTO `Salesperson` (`id`, `name`, `staff_ID`, `store`)
VALUES
(1, 'Petey Cruiser', 1, 'Madrid'),
(2, 'Anna Sthesia', 2, 'Barcelona'),
(3, 'Paul Molive', 3, 'Berlin'),
(4, 'Gail Forcewind', 4, 'Paris'),
(5, 'Paige Turner', 5, 'Mimia'),
(6, 'Bob Frapples', 6, 'Mexico City'),
(7, 'Walter Melon', 7, 'Amsterdam'),
(8, 'Shonda Leer', 8, 'São Paulo');


INSERT INTO `Invoices` (`id`, `invoice_number`, `customer_ID`, `salesperson_ID`, `car_ID`, `date`)
VALUES
(1, 852399038, 1, 3, 1, '2018-08-22'),
(2, 731166526, 3, 5, 3, '2018-12-31'),
(3, 271135104, 2, 7, 2, '2019-01-22');
       
       