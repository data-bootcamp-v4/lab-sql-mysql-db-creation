
INSERT INTO cars (vehicleid, VIN, manufacturer, model, year, color)
VALUES (1, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Red"),
       (2, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Blue"),
       (3, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2019, "White");
describe customers;
INSERT INTO customers (customerid, customer_number, customername, phone_number, address, city, state, country, zip_code)
VALUES (1, 10001, "Pablo Picasso", "+34 636 17 63 82", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
       (2, 20001, "Abraham Lincoln", "+1 305 907 7086", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
       (3, 30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

describe salespersons;
INSERT INTO salespersons (staffid, staffnumber, staffname, store)
VALUES (1, 00001, "Petey Cruiser", "Madrid"),
       (2, 00002, "Anna Sthesia", "Barcelona"),
       (3, 00003, "Paul Molive", "Berlin");
       
describe invoices;
INSERT INTO invoices (invoiceid, invoicenumber, invdate, car,customer,salesperson)
VALUES (1, 852399038, "2018-08-22", "1", "1", "3"),
       (2, 731166526, "2018-08-22", "3", "3", "5"),
       (3, 731166526, "2018-08-22", "2", "2", "7");