INSERT INTO CARS(Cars_ID, VIN, Manufacturer, Model, Year, Color)
values (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
	   (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60_Cross_Country', 2019, 'Black');
       
INSERT INTO CUSTOMERS(Customer_ID, Name, Phone_number, Email, Address, City, State, Country, Zip_postal_code)
Values (101, 'Pablo Picasso', +34-636-17-63-82, 'pablo@example.com' , 'Paseo de la Chopera, 14','Madrid', 'Madrid', 'Spain', '28045'),   
       (102,'Abraham Lincoln', +1-305-907-7086, 'abrahim@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       (103, 'Napoléon', +33-1-79-75-40-00, 'napoleon@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008'),
       (104, 'Barbie', +34-636-17-63-81, 'barbie@example.com', 'Paseo de la Chopera, 14','Madrid', 'Madrid', 'Spain', '28045'),
       (105,'Tom', +1-305-907-7085, 'tom@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       (106, 'Jully',  +33-1-79-75-40-01, 'jully@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
       
INSERT INTO SALES_PERSONS(Staff_ID, Name, Store)
Values (201, 'Petey Cruiser', 'Madrid'),       
	   (202, 'Anna Sthesia', 'Barcelona'),
       (203, 'Paul Molive', 'Berlin'),
       (204, 'Walter Melon', 'Amsterdam'),
       (205, 'Paige Turner', 'Mimia'),
       (206, 'Gail Forcewind', 'Paris');
       
INSERT INTO INVOICES(Invoice_ID, Invoice_number, date, Cars_ID, Customer_id, Staff_ID)
Values (301, 852399038, '2018-08-01', 1, 101, 206),
       (302, 731166526, '2018-12-31', 6, 103, 205),
       (303, 271135104, '2019-06-22', 5, 102, 204),
       (304, 369852147, '2019-07-19', 4, 105, 203),
       (305, 741258963, '2020-02-14', 3, 106, 202),
       (306, 852369741, '2020-05-12', 2, 104, 201);
       

