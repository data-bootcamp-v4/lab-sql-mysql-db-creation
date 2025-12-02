
INSERT INTO Cars (vin, manufacturer, model, year, color)
VALUES
('1HGCM82633A123456', 'Honda', 'Civic', 2018, 'Black'),
('2T1BURHE5JC987654', 'Toyota', 'Corolla', 2020, 'White'),
('3FA6P0H74LR246810', 'Ford', 'Tourneo Courier', 2017, 'Grey'),
('WBA3A5C50DF123789', 'BMW', '320i', 2017, 'Gray'),
('5YJ3E1EA7JF135791', 'Tesla', 'Model 3', 2021, 'Red');


INSERT INTO Customers 
(cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
('Marc Puig', '600123456', 'marc.puig@email.com', 'Carrer de Provenca 45', 'Barcelona', 'Catalonia', 'Spain', '08008'),
('Laia Torres', '600234567', 'laia.torres@email.com', 'Avinguda Diagonal 220', 'Barcelona', 'Catalonia', 'Spain', '08018'),
('Jordi Martinez', '600345678', 'jordi.martinez@email.com', 'Carrer de Sants 112', 'Barcelona', 'Catalonia', 'Spain', '08014'),
('Clara Sanchez', '600456789', 'clara.sanchez@email.com', 'Carrer Gran de Gracia 88', 'Barcelona', 'Catalonia', 'Spain', '08012'),
('David Soler', '600567890', 'david.soler@email.com', 'Passeig de Gracia 102', 'Barcelona', 'Catalonia', 'Spain', '08008');



INSERT INTO Salespersons (name, store)
VALUES
('Anna Riera', 'Barcelona Auto Center'),
('Pau Ferrer', 'Diagonal Motors'),
('Marta Vidal', 'Gracia Cars'),
('Sergi Domenech', 'Eixample Auto'),
('Helena Sospedra', 'Sants Vehicles');



INSERT INTO Invoices (invoice_number, date, car, customer, salesperson)
VALUES
(1001, '2024-01-15', 1, 1, 2),
(1002, '2024-02-10', 2, 2, 1),
(1003, '2024-03-05', 3, 3, 4),
(1004, '2024-04-12', 4, 4, 3),
(1005, '2024-05-20', 5, 5, 5);
