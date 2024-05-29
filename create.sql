use lab_mysql;


create table customers (customer_id VARCHAR(20) primary key, name CHAR(35), phone_number varchar(25), email varchar(50), address char(50), city char(50), state char(50), country char(50), postal_code varchar(15));

create table cars (id varchar(5) primary key, vehicle_information varchar(50), manufacturer varchar(30), year varchar(4),model varchar(50), colors_of_the_cars char(15));

create table salespersons (staff_id varchar(10) primary key, name char(50), store varchar(30));

create table invoices (invoice_number varchar(50) primary key, date datetime, car varchar(50), customer char(50), salesperson_related varchar(10));

INSERT INTO cars (id, Vehicle_information, manufacturer, year, model, colors_of_the_cars)
VALUES (1, "3K096I98581DHSNUP", "Volkswagen", 2019, "Tiguan", "blue"),
       (2, "ZM8G7BEUQZ97IH46V", "Peugeot", 2019, "rifter", "red"),
       (3, "RKXVNNIHLVVZOUB4M", "Ford", 2019, "Fusion", "white"),
       (4, "HKNDGS7CU31E9Z7JW", "Toyota", 2018, "Rav4", "silver"),
       (5, "DAM41UDN3CHU2WVF6", "Volvo", 2019, "v60", "gray"),
       (6, "DAM41UDN3CHU2WVF6", "Volvo", 2019, "v60 cross country", "gray");

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state, country, postal_code)
VALUES ("10001", "Pablo Picasso", "+34 636 17 63 82", " ", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
       ("20001", "Abraham Lincoln", "+1 305 907 7086", " ", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
       ("30001", "Napoléon Bonaparte", "+33 1 79 75 40 00", " ", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);
       
INSERT INTO invoices (staff_id, date, car, customer, salesperson_related)
VALUES ("852399038", "2018-08-22", 1, 1, 3),
       ("731166526", "2018-12-31", 3, 3, 5),
       ("271135104", "2019-01-22", 2, 2, 7);

INSERT INTO salespersons (staff_id, name, store)
VALUES (00001, "Petey Cruiser", "Madrid"),
       (00002, "Anna Sthesia", "Barcelona"),
       (00003, "Paul Molive", "Berlin"),
       (00004, "Gail Forcewind", "Paris"),
       (00005, "Paige Turner", "Mimia"),
       (00006, "Bob Frapples", "Mexico City"),
       (00007, "Walter Melon", "Amsterdam"),
       (00008, "Shonda Leer", "São Paulo");