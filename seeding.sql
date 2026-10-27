-- =====================================================
-- Challenge 3 - Seeding the Database (lab_mysql)
-- =====================================================

USE lab_mysql;

-- -----------------------------------------------------
-- 1. CAR_MODEL (Uploading the model catalog)
-- -----------------------------------------------------
INSERT INTO `car_model` (`model_id`, `manufacturer`, `model`, `fuel_type`, `body_type`, `transmission`) VALUES
(1, 'Volkswagen', 'Tiguan', 'Diesel', 'SUV', 'Automatic'),
(2, 'Peugeot', 'Rifter', 'Gasoline', 'MPV', 'Manual'),
(3, 'Ford', 'Fusion', 'Hybrid', 'Sedan', 'Automatic'),
(4, 'Toyota', 'RAV4', 'Hybrid', 'SUV', 'Automatic'),
(5, 'Volvo', 'V60', 'Gasoline', 'Wagon', 'Automatic'),
(6, 'Volvo', 'V60 Cross Country', 'Gasoline', 'Wagon', 'Automatic');

-- -----------------------------------------------------
-- 2. CAR (Recording physical vehicles)
-- Note: Based on the sample data in the task description, the VINs for car 5 and car 6 are identical!
-- -----------------------------------------------------

INSERT INTO `car` (`car_id`, `VIN`, `model_id`, `year`, `color`, `list_price`) VALUES
(1, '3K096I98581DHSNUP', 1, 2019, 'Blue', 32000.00),
(2, 'ZM8G7BEUQZ97IH46V', 2, 2019, 'Red', 24500.00),
(3, 'RKXVNNIHLVVZOUB4M', 3, 2018, 'White', 21000.00),
(4, 'HKNDGS7CU31E9Z7JW', 4, 2018, 'Silver', 29000.00),
(5, 'DAM41UDN3CHU2WVF6', 5, 2019, 'Gray', 38000.00),
(6, 'DAM41UDN3CHU2WVF6', 6, 2019, 'Gray', 41000.00);

-- -----------------------------------------------------
-- 3. CUSTOMER (Customer Master Data)
-- -----------------------------------------------------

INSERT INTO `customer` (`id`, `customer_id`, `first_name`, `last_name`, `email`, `primary_phone`, `additional_phone`) VALUES
(1, '10001', 'Pablo', 'Picasso', NULL, '+34 636 17 63 82', NULL),
(2, '20001', 'Abraham', 'Lincoln', NULL, '+1 305 907 7086', NULL),
(3, '30001', 'Napoléon', 'Bonaparte', NULL, '+33 1 79 75 40 00', NULL);

-- -----------------------------------------------------
-- 4. CUSTOMER_ADDRESS (Recording customer addresses)
-- -----------------------------------------------------
INSERT INTO `customer_address` (`address_id`, `customer_id`, `address_type`, `country`, `state`, `city`, `street_address`, `zip_code`) VALUES
(1, '10001', 'Primary', 'Spain', 'Madrid', 'Madrid', 'Paseo de la Chopera, 14', '28045'),
(2, '20001', 'Primary', 'United States', 'Florida', 'Miami', '120 SW 8th St', '33130'),
(3, '30001', 'Primary', 'France', 'Île-de-France', 'Paris', '40 Rue du Colisée', '75008');

-- -----------------------------------------------------
-- 5. BRANCH (Branches / Stores)
-- -----------------------------------------------------
INSERT INTO `branch` (`id`, `branch_id`, `branch_name`, `country`, `state`, `city`, `street_address`, `zip_code`) VALUES
(1, 'BR-MAD', 'Madrid Branch', 'Spain', 'Madrid', 'Madrid', 'Gran Vía 42', '28013'),
(2, 'BR-BCN', 'Barcelona Branch', 'Spain', 'Catalonia', 'Barcelona', 'Avinguda Diagonal 123', '08008'),
(3, 'BR-BER', 'Berlin Branch', 'Germany', 'Berlin', 'Berlin', 'Kurfürstendamm 50', '10707'),
(4, 'BR-PAR', 'Paris Branch', 'France', 'Île-de-France', 'Paris', 'Boulevard Haussmann 15', '75009'),
(5, 'BR-MIA', 'Miami Branch', 'United States', 'Florida', 'Miami', 'Ocean Drive 400', '33139'),
(6, 'BR-MEX', 'Mexico City Branch', 'Mexico', 'CDMX', 'Mexico City', 'Paseo de la Reforma 200', '06600'),
(7, 'BR-AMS', 'Amsterdam Branch', 'Netherlands', 'North Holland', 'Amsterdam', 'Keizersgracht 300', '1016 EZ'),
(8, 'BR-SAO', 'São Paulo Branch', 'Brazil', 'São Paulo', 'São Paulo', 'Av. Paulista 1000', '01310-100');

-- -----------------------------------------------------
-- 6. SALESPERSON (Uploading salespeople)
-- -----------------------------------------------------
INSERT INTO `salesperson` (`id`, `staff_id`, `first_name`, `last_name`, `email`, `phone_number`, `branch_id`) VALUES
(1, '00001', 'Petey', 'Cruiser', 'petey.cruiser@dealership.com', '+34 912 345 678', 'BR-MAD'),
(2, '00002', 'Anna', 'Sthesia', 'anna.sthesia@dealership.com', '+34 931 234 567', 'BR-BCN'),
(3, '00003', 'Paul', 'Molive', 'paul.molive@dealership.com', '+49 30 123456', 'BR-BER'),
(4, '00004', 'Gail', 'Forcewind', 'gail.forcewind@dealership.com', '+33 1 42 68 55 00', 'BR-PAR'),
(5, '00005', 'Paige', 'Turner', 'paige.turner@dealership.com', '+1 305 555 0199', 'BR-MIA'),
(6, '00006', 'Bob', 'Frapples', 'bob.frapples@dealership.com', '+52 55 5123 4567', 'BR-MEX'),
(7, '00007', 'Walter', 'Melon', 'walter.melon@dealership.com', '+31 20 123 4567', 'BR-AMS'),
(8, '00008', 'Shonda', 'Leer', 'shonda.leer@dealership.com', '+55 11 91234 5678', 'BR-SAO');

-- -----------------------------------------------------
-- 7. INVOICE (Invoices and transactions)
-- -----------------------------------------------------
INSERT INTO `invoice` (`id`, `invoice_nr`, `date`, `car_id`, `customer_id`, `staff_id`, `sale_price`) VALUES
(1, '852399038', '2018-08-22', 1, '20001', '00003', 31500.00),
(2, '731166526', '2018-12-31', 3, '10001', '00005', 20500.00),
(3, '271135104', '2019-01-22', 2, '30001', '00007', 24000.00);