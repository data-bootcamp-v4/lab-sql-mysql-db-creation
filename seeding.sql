-- Use the correct database
USE lab_mysql;


INSERT INTO cars (id, VIN, manufacturer, model,year,color )
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen','Tiguan','2019', 'Blue'),
       (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter','2019', 'Red'),
       (3, 'RKXVNNIHLVVZOUB4M', 'Ford','Fusion','2018', 'White'),
       (4, 'HKNDGS7CU31E9Z7JW', 'Toyota','RAV4','2018', 'Silver'),
       (5, 'DAM41UDN3CHU2WVF6', 'Volvo','V60','2019', 'Gray'),
       (6, 'DAM41UDN3CHU2WVF6', 'Volvo','V60 Cross Country','2019', 'Gray');
       
       INSERT INTO Customers (id, name, phone_number, email, adress, city, state,
       country,postal )
VALUES (1, '10001', 'Pablo Picasso', '+34 636 17 63 82','','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
       (2, '20001', 'Abraham Lincoln','+1 305 907 7086','','120 SW 8th St','Miami','Florida','United States','33130'),
       (3, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00','', '40 Rue du Colisée','Paris','Île-de-France','France','75008');
  
INSERT INTO Salespersons (id, name, store)
VALUES (1, 'Petey Cruiser','Madrid'),
       (2,'Anna Sthesia', 'Barcelona'),
       (3, 'Paul Molive','Berlin'),
       (4,'Gail Forcewind','Paris'),
       (5,'Paige Turner','Mimia'),
       (6,'Bob Frapples','Mexico City');
       
INSERT INTO Invoices (id,invoice_number,date,salesperson_id, custumer_id,car_id)
VALUES (1, '852399038', '22-08-2018','3','10001	', ''),
       (2, '731166526', '31-12-2018', '5','20001', ''),
       (3, '271135104', '22-01-2019','7','30001', '');