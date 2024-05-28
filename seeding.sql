-- Insert data into the Cars table
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('1HGCM82633A004352', 'Honda', 'Accord', 2020, 'Black'),
       ('1HGCM82633A004353', 'Toyota', 'Camry', 2021, 'White'),
       ('1HGCM82633A004354', 'Ford', 'Mustang', 2019, 'Red');

-- Insert data into the Customers table
INSERT INTO Customers (Name, PhoneNumber, Email, Address, City, StateProvince, Country, ZipPostalCode)
VALUES ('John Doe', '555-1234', 'johndoe@example.com', '123 Main St', 'Anytown', 'Anystate', 'USA', '12345'),
       ('Jane Smith', '555-5678', 'janesmith@example.com', '456 Oak St', 'Othertown', 'Otherstate', 'USA', '67890'),
       ('Bob Johnson', '555-8765', 'bobjohnson@example.com', '789 Pine St', 'Sometown', 'Somestate', 'USA', '11223');

-- Insert data into the Salespersons table
INSERT INTO Salespersons (Name, Store)
VALUES ('Alice Brown', 'Downtown Store'),
       ('Charlie Green', 'Uptown Store');

-- Insert data into the Invoices table
INSERT INTO Invoices (Date, CarID, CustomerID, StaffID)
VALUES ('2023-05-01', 1, 1, 1),
       ('2023-05-02', 2, 2, 2),
       ('2023-05-03', 3, 3, 1);
SELECT * FROM Cars;
SELECT * FROM Customers;
SELECT * FROM Salespersons;
TRUNCATE TABLE Invoices;

INSERT INTO Invoices (Date, CarID, CustomerID, StaffID)
VALUES ('2023-05-01', 1, 1, 1),
       ('2023-05-02', 2, 2, 2),
       ('2023-05-03', 3, 3, 1);

SELECT * FROM Invoices; 
