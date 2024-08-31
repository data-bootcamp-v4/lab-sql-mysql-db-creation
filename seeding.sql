USE CarDealershipDB;

-- Seeding the Database

-- Cars
INSERT INTO Cars (vin, manufacturer, model, year, color) 
VALUES ('1HGBH41JXMN109186', 'Honda', 'Civic', 2023, 'Blue'),
	   ('1HGCM82633A004352', 'Toyota', 'Corolla', 2022, 'Red'),
	   ('1HGFA16586L081834', 'Ford', 'Mustang', 2024, 'Black'),
       ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2018, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2019, 'Silver'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WYF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
SELECT * FROM Cars;


-- Customers
INSERT INTO Customers (name, surname, phone_number, email, address, city, state, country, zip_code) 
VALUES ('John', 'Doe', '123-456-7890', 'johndoe@example.com', '123 Elm St', 'New York', 'NY', 'USA', '10001'),
	   ('Jane', 'Smith', '987-654-3210', 'janesmith@example.com', '456 Oak St', 'Los Angeles', 'CA', 'USA', '90001'),
       ('Pablo', 'Picasso', '+34636176382', 'picasso@example.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       ('Abraham', 'Lincoln', '+13059077086', 'lincols@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       ('Napoléon', 'Bonaparte', '+33179754000', 'napoleon@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
 
 SELECT * FROM Customers;
 
 
 -- Salespersons
 INSERT INTO Salespersons (name, store) 
 VALUES ('Alice Johnson', 'Downtown Store'),
	    ('Bob Williams', 'Madrid'),
        ('Petey Cruiser', 'Barcelona'),
        ('Anna Sthesia', 'Berlin'),
        ('Paul Molive', 'Paris'),
	    ('Gail Forcewind', 'Mimia'),
        ('Paige Turner', 'Uptown Store'),
        ('Bob Frapples', 'Mexico City'),
        ('Walter Melon', 'Amsterdam'),
        ('Shonda Leer', 'São Paulo');

 SELECT * FROM Salespersons;



-- Invoices
INSERT INTO Invoices (date, car_id, customer_id, salesperson_id, total_amount) 
VALUES ('2024-08-31 10:00:00', 10, 6, 1, 25000.00),
	   ('2024-12-23 11:00:00', 11, 7, 2, 27000.00), 
       ('2024-03-16 11:00:00', 12, 8, 3, 27000.00), 
       ('2024-05-15 11:00:00', 13, 9, 4, 27000.00), 
       ('2024-09-01 11:00:00', 14, 10, 5, 27000.00); 
       
 SELECT * FROM Invoices;