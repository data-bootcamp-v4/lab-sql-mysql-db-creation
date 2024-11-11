INSERT INTO `customers` (`name`, `phone_number`, `email`, `address`, `city`, `state_province`, `country`, `zip_postal_code`)
VALUES
    ('John Doe', '1234567890', 'john.doe@example.com', '123 Elm Street', 'Springfield', 'Illinois', 'USA', '62701'),
    ('Jane Smith', '9876543210', 'jane.smith@example.com', '456 Oak Avenue', 'Greendale', 'California', 'USA', '90210'),
    ('Alex Johnson', '5551234567', 'alex.johnson@example.com', '789 Pine Lane', 'Riverside', 'Florida', 'USA', '33401');
INSERT INTO `salespersons` (`name`, `store`)
VALUES
    ('Emily Brown', 'Downtown Auto Sales'),
    ('Michael Green', 'City Center Cars'),
    ('Sarah White', 'Westside Motors');
INSERT INTO `cars` (`VIN`, `manufacturer`, `model`, `year`, `color`)
VALUES
    (100001, 'Toyota', 'Corolla', 2020, 'Blue'),
    (100002, 'Honda', 'Civic', 2019, 'Black'),
    (100003, 'Ford', 'Mustang', 2021, 'Red'),
    (100004, 'Chevrolet', 'Malibu', 2018, 'White'),
    (100005, 'Tesla', 'Model S', 2022, 'Silver'),
    (100006, 'BMW', 'X5', 2020, 'Gray'),
    (100007, 'Audi', 'A4', 2017, 'Blue'),
    (100008, 'Mercedes-Benz', 'C-Class', 2021, 'Black'),
    (100009, 'Nissan', 'Altima', 2019, 'White'),
    (100010, 'Hyundai', 'Elantra', 2018, 'Red');
INSERT INTO `invoices` (`invoice_number`, `date`, `VIN`, `customer_ID`, `staff_ID`)
VALUES
    (1, '2024-10-01', 100001, 1, 1),  
    (2, '2024-10-05', 100002, 2, 2),  
    (3, '2024-10-10', 100003, 3, 3),   
    (4, '2024-10-15', 100004, 1, 2),   
    (5, '2024-10-20', 100005, 2, 3),   
    (6, '2024-10-25', 100006, 3, 1),  
    (7, '2024-10-30', 100007, 1, 1);  
invoices