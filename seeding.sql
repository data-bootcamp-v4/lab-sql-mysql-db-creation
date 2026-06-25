USE lab_mysql;


INSERT INTO `salespersons` (`staff_id`, `name`, `store`)
VALUES
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris'),
    ('00005', 'Paige Turner', 'Mimia'),
    ('00006', 'Bob Frapples', 'Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'São Paulo');

INSERT INTO `cars` (`vin`, `manufacturer`, `model`, `year`, `color`)
VALUES
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO `customers` (`name`, `email`, `phone`, `address`, `city`, `state`, `country`, `zip_code`)
VALUES
    ('Pablo Picasso', 'ppicasso@gmail.com', '+34 636 17 63 82', 'Paseo de la Castellana 20', 'Madrid', 'Madrid', 'Spain', '28046'),
    ('Abraham Lincoln', '-', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('Napoléon Bonaparte', '-', '+33 1 79 75 40 00', 'Rue de l''Université 7', 'Paris', 'Île-de-France', 'France', '75007');



INSERT INTO `invoices` (`date`, `invoice_n`, `customer_id`, `car_id`, `salesperson_id`)
VALUES
    (STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 852399038, 1, 1, 3),
    (STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 731166526, 3, 3, 5),
    (STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 271135104, 2, 2, 7);