-- The purpose of database seeding is to provide some initial data for an empty database to start software development based on that data.
-- Here are some instructions to seed your database:
-- Open MySQL Workbench and connect the database to where you want to seed the data.
-- Create a new file named seeding.sql.
-- Use the INSERT INTO statement to insert data into your database. 


USE lab_mysql;
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO Customers (CustomerID, Name, Phone, Email, Address, City, StateProvince, Country, ZipPostalCode)
VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", NULL, "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
(20001, "Abraham Lincoln", "+1 305 907 7086", NULL, "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", NULL, "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO Salespersons (StaffID, Name, Store)
VALUES
(1, "Petey Cruiser", "Madrid"),
(2, "Anna Sthesia", "Barcelona"),
(3, "Paul Molive", "Berlin"),
(4, "Gail Forcewind", "Paris"),
(5, "Paige Turner", "Miami"),
(6, "Bob Frapples", "Mexico City"),
(7, "Walter Melon", "Amsterdam"),
(8, "Shonda Leer", "São Paulo");

INSERT INTO Invoices (InvoiceNumber, Date, CarID, CustomerID, SalespersonID)
VALUES
(852399038, "2018-08-22", 1, 1, 3),
(731166526, "2018-12-31", 3, 3, 5),
(271135104, "2019-01-22", 2, 2, 7);


-- Congratulations on reaching the bonus challenge! In this challenge, you will update and delete database records.
-- To begin, you have been provided with the email addresses of three customers in the form 

UPDATE Cars
SET Color = "Black"
WHERE VIN = "3K096I98581DHSNUP";

DELETE FROM Customers
WHERE CustomerID = 30001;


