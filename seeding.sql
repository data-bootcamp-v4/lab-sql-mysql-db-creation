INSERT INTO cars (VIN, manufacturer, modal,year ,colour)
VALUES ('AB17899', 'Volkswagen', 2020,2020,'Black'),
       ('FG67809', 'Hyundai',2023,2023, 'Steel grey'),
       ('KL89067', 'Porche', 2025,2025 ,'White');
       
INSERT INTO cars (vin, manufacturer, modal, year, colour) VALUES
( '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
( 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
( 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
( 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

Insert into customers (customerID ,name ,phoneNumber ,email, address ,city , state_province ,country , zipPostalCode)
values ('YY9988','Joe Smith','172345690','hello@xyz.com','','','','','17890' ),
       ('YY9078','Joe Beson','678899990','he@xyz.com','','','','','17077' ),
	   ('CC0781','Pil Bon','433899990','be@xyz.com','new city, street 14','Fran','NRW','Germany','17077' ); 
INSERT INTO customers (customerID ,name ,phoneNumber ,email, address ,city , state_province ,country , zipPostalCode)
 VALUES
( '10001', 'Pablo Picasso', '4636176382', 'c@g.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
( '20001', 'Abraham Lincoln', '3059077086', 'c@g.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
( '30001', 'Napoléon Bonaparte', '33179754000', 'kk@g.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

Insert into invoices (invoiceID, date ,car,customerID ,salesPersonID )
values (233456,'2022-10-02','AB17899','YY9988', 12),
        (20234,'2023-10-02','FG67809','YY9078', 15),
        (1109289,'2024-11-12','KL89067','CC0781', 15); 
        
   Insert into invoices (invoiceID, date ,car,customerID ,salesPersonID )
values ('852399038'	,'2018-02-12','1','1','3'),
        ('731166526','2018-12-31','3',	'3', 5);

        
 Insert into  salespersons (  staffID ,name , storeName )
 values (12,'Alex','Germany'),
        (15,'Alice','Germany'),
        (16,'Mok','Germany');
	

Insert into  salespersons (  staffID ,name , storeName )
 values 
(00002, 'Anna Sthesia', 'Barcelona'),
( 00003, 'Paul Molive', 'Berlin'),
( 00004, 'Gail Forcewind', 'Paris'),
( 00005, 'Paige Turner', 'Miami'),
( 00006, 'Bob Frapples', 'Mexico City');
        