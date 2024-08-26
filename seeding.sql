INSERT INTO cars (vehicle_identification_number_VIN, manufacturer, model, `year`, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan',2019,'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',2019,'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',2018,'White');
       
INSERT INTO customers (customer_ID, `name`, phone_number, email, address, city, state_province, country, zip_code)
VALUES (10001, 'Pablo Picasso', '+34 636 17 63 82','-','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain','28045'),
       (20001, 'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St', 'Miami', 'Florida', 'United States','33130'),
       (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00','-','40 Rue du Colisée', 'Paris', 'Île-de-France', 'France','75008');
       
INSERT INTO salespersons (staff_ID, `name`, store)
VALUES (00001, 'Petey Cruiser', 'Madrid'),
       (00002, 'Anna Sthesia','Barcelona'),
       (00003, 'Paul Molive', 'Berlin'),
       (00004, 'Gail Forcewind', 'Paris');

INSERT INTO invoices (invoice_number, `date`, car_VIN, customer, salesperson_staff_ID)
VALUES (852399038, '2018-08-22', '3K096I98581DHSNUP','10001','00001'),
       (731166526, '2018-12-31','ZM8G7BEUQZ97IH46V','20001','00003'),
       (271135104, '2019-01-22', 'RKXVNNIHLVVZOUB4M','30001','00004');
       
       