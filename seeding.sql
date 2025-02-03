-- Insert data into the `cars` table
INSERT INTO `lab_mysql`.`cars` (`vin`, `manufacturer`, `model`, `year`, `color`) VALUES 
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

-- Insert data into the `customers` table (exclude `cust_id` because it’s AUTO_INCREMENT)
INSERT INTO `lab_mysql`.`customers` (`cust_name`, `cust_phone`, `cust_email`, `cust_address`, `cust_city`, `cust_state`, `cust_country`, `cust_zipcode`) VALUES
('Pablo Picasso', '+34 636 17 63', 'pablo@example.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 70', 'abraham@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40', 'napoleon@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert data into the `salespersons` table (exclude `staff_id` because it’s AUTO_INCREMENT)
INSERT INTO `lab_mysql`.`salespersons` (`name`, `store`) VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');

-- Insert data into the `invoices` table (exclude `invoice_number` because it’s AUTO_INCREMENT)
INSERT INTO `lab_mysql`.`invoices` (`date`, `vin`, `cust_id`, `staff_id`) VALUES
('2018-08-22', '3K096I98581DHSNUP', 1, 3),
('2018-12-31', 'RKXVNNIHLVVZOUB4M', 3, 5),
('2019-01-22', 'ZM8G7BEUQZ97IH46V', 2, 7);

