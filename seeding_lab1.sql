USE lab1_database;

SELECT
    CONSTRAINT_NAME,
    TABLE_NAME,
    COLUMN_NAME
FROM
    lab1_database.KEY_COLUMN_USAGE
WHERE
    REFERENCED_TABLE_NAME = 'Cars'
    AND REFERENCED_COLUMN_NAME = 'vin';
    
ALTER TABLE Invoices DROP FOREIGN KEY invoices_ibfk_1;
ALTER TABLE Cars DROP INDEX vin;

INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    ('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO Customers (customer_id_number, name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES 
    ('10001', 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('20001', 'Abraham Lincoln', '+13059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('30001', 'Napoléon Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '');
    
INSERT INTO Salespersons (staff_id_number, name, store)
VALUES 
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris'),
    ('00005', 'Paige Turner', 'Miami'),
    ('00006', 'Bob Frapples', 'Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'São Paulo');
    
INSERT INTO Invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES 
    ('852399038', '2018-08-22', 1, 1, 3),
    ('731166526', '2018-12-31', 3, 3, 5),
    ('271135104', '2019-01-22', 2, 2, 7);
    
