CREATE TABLE `cars` (
  `vehicule_identification_number` integer PRIMARY KEY,
  `manufacturer` varchar(255),
  `model` varchar(255),
  `year` timestamp,
  `color` varchar(255)
);

CREATE TABLE `customers` (
  `customer_id` integer PRIMARY KEY,
  `name` varchar(255),
  `phone_number` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `city` varchar(255),
  `state_province` varchar(255),
  `country` varchar(255),
  `zip_postal` varchar(255)
);

CREATE TABLE `salespersons` (
  `staff_id` integer PRIMARY KEY,
  `name` varchar(255),
  `store` varchar(255)
);

CREATE TABLE `invoices` (
  `invoice_number` integer PRIMARY KEY,
  `date` timestamp,
  `car` integer,
  `customer` integer,
  `salesperson` integer
);

ALTER TABLE `invoices` ADD FOREIGN KEY (`salesperson`) REFERENCES `salespersons` (`staff_id`);

ALTER TABLE `invoices` ADD FOREIGN KEY (`car`) REFERENCES `cars` (`vehicule_identification_number`);

ALTER TABLE `invoices` ADD FOREIGN KEY (`customer`) REFERENCES `customers` (`customer_id`);
