USE lab_mysql;

INSERT INTO cars (id, vin, manufacturer, model, year_car, color)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', "Tiguan", 2019, "Blue"),
       (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', "Rifter", 2019, "Red"),
       (3, 'RKXVNNIHLVVZOUB4M', 'Ford', "Fusion", 2018, "White");

INSERT INTO customers (id, customer_id, name_customer, phone_number, email, address, city, state_province, country, zip_postalcode)
VALUES (1, '10001', 'Pablo Picasso', "+34636176382", "", "Paseo de la Chopera 14", "Madrid", "Madrid", "Spain", "28045"),
       (2, '20001', 'Abraham Lincoln', "+13059077086", "", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
       (3, '30001', 'Napoléon Bonaparte', "+33179754000", "", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");
       
INSERT INTO salespersons (id, staff_id, name_staff, store)
VALUES (1, '00001', 'Petey Cruiser', "Madrid"),
       (2, '00002', 'Anna Sthesia', "Barcelona"),
       (3, '00003', 'Paul Molive', "Berlin");


INSERT INTO invoices (id, invoice_number, date_invoice, car_id, customer_id, salesperson_id, invoices_price)
VALUES (1, '852399038', '2018-08-22', 1, 1, 3, 40546),
       (2, '731166526', '2018-12-31', 3, 3, 5, 56453),
       (3, '271135104', '2019-01-22', 2, 2, 7, 78429);

SELECT *
FROM salespersons;