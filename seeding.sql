USE lab_mysql;

INSERT INTO Customers (Customer_ID, `Name`, Phone_Number, Email, Address, City, State_Province, Country, Zip_Postal_Code)
VALUES (1, 'John Doe', 5551234, 'johndoe@example.com', '123 Maple St', 'Springfield', 'IL', 'USA', 62704),
(2, 'Jane Smith', 5555678, 'janesmith@example.com', '456 Oak St', 'Rivertown', 'CA', 'USA', 90210),
(3, 'Samuel Green', 5559101, 'samgreen@example.com', '789 Pine St', 'Lakeside', 'TX', 'USA', 75001),
(4, 'Emma White', 5551122, 'emmawhite@example.com', '101 Cherry St', 'Mountainview', 'CO', 'USA', 80302),
(5, 'Michael Brown', 5551314, 'michaelbrown@example.com', '202 Cedar St', 'Seaside', 'FL', 'USA', 33101),
(6, 'Olivia Black', 5551516, 'oliviablack@example.com', '303 Elm St', 'River City', 'NY', 'USA', 10001),
(7, 'William Clark', 5551718, 'williamclark@example.com', '404 Walnut St', 'Sunnyvale', 'CA', 'USA', 94086),
(8, 'Sophia Harris', 5551920, 'sophiaharris@example.com', '505 Birch St', 'Newtown', 'PA', 'USA', 19001),
(9, 'James Lee', 5552122, 'jameslee@example.com', '606 Willow St', 'Easton', 'NJ', 'USA', 7001),
(10, 'Ava Martinez', 5552324, 'avamartinez@example.com', '707 Aspen St', 'Westfield', 'MA', 'USA', 1085);

ALTER TABLE Cars MODIFY VIN VARCHAR(17);

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('1HGBH41JXMN109186', 'Honda', 'Civic', 2020, 'Blue'),
('1FMCU0GD4LUA00245', 'Ford', 'Escape', 2022, 'Red'),
('2G1FB1E39F9223185', 'Chevrolet', 'Camaro', 2019, 'Black'),
('3VWDB7AJ8FM146828', 'Volkswagen', 'Jetta', 2021, 'White'),
('5XYKT3A68KG215078', 'Kia', 'Sorento', 2021, 'Silver'),
('1C4RJFAG8FC904738', 'Jeep', 'Cherokee', 2020, 'Green'),
('2T1BURHE1KC124256', 'Toyota', 'Corolla', 2020, 'Gray'),
('1FTFW1E58JFC30614', 'Ford', 'F-150', 2021, 'Orange'),
('3GNAXHEV2LS543923', 'Chevrolet', 'Equinox', 2020, 'Yellow'),
('1N4AL3AP7JC247050', 'Nissan', 'Altima', 2022, 'Brown');



INSERT INTO Invoices (Date, VIN, Customer_ID, Salesperson_ID, Salesperson_Name)
VALUES ('2024-01-15', 10000000000000000, 1, 101, 'Sarah Johnson'),
('2024-02-20', 10000000000000001, 2, 102, 'John Davis'),
('2024-03-10', 10000000000000002, 3, 103, 'Michael Lee'),
('2024-04-05', 10000000000000003, 4, 104, 'Emily Turner'),
('2024-05-12', 10000000000000004, 5, 105, 'David Clark'),
('2024-06-01', 10000000000000005, 6, 106, 'Olivia Brown'),
('2024-07-08', 10000000000000006, 7, 107, 'James Green'),
('2024-08-22', 10000000000000007, 8, 108, 'Sophia White'),
('2024-09-18', 10000000000000008, 9, 109, 'William Harris'),
('2024-10-30', 10000000000000009, 10, 110, 'Ava Martinez');


INSERT INTO Salespersons (Salesperson_ID, Name, Store)
VALUES (101, 'Sarah Johnson', 'Downtown'),
(102, 'John Davis', 'Northside'),
(103, 'Michael Lee', 'East End'),
(104, 'Emily Turner', 'West Hills'),
(105, 'David Clark', 'City Center'),
(106, 'Olivia Brown', 'Uptown'),
(107, 'James Green', 'Lakeside'),
(108, 'Sophia White', 'Rivertown'),
(109, 'William Harris', 'Southport'),
(110, 'Ava Martinez', 'Beachside');

