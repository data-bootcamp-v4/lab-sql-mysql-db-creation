INSERT INTO customers (id, cust_id, cust_name, cust_phone, cust_email,cust_address, cust_city, cust_state, cust_country, cust_zipcode )
VALUES (1, 1001, 'John Doe', "+34636176382", 'john@example.com', "Paseo 14", "Madrid", "Madrid", "Spain", "28045"),
       (2, 2001, 'Jane Smith', "+13059077086", 'janesmith@example.com', "120SW 8th St", "Miami", "Florida", "USA", "33130"),
       (3, 3001, 'Bob Johnson', "+13059077000",'bobjohnson@example.com', "40 Rue du Colisee", "Paris", "Île-de-France", "France", "75008");
       
INSERT INTO cars (id, VIN, manufacturer, model, year, color )
VALUES (1, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "blue"),
       (2, "ZM8G7BEUQZ97IH46V", "Ford", "Fusion", 2018, "red"),
       (3, "RKXVNNIHLVVZOUB4M", "Volvo", "V60", 2020, "black");
       
INSERT INTO salespersons (id, staff_id, name, store)
VALUES (1, 00001, "Peter Cruiser", "Madrid"),
       (2, 00002, "Walter Melon", "Amsterdam"),
       (3,00003, "Paul Molive", "Miami"),
		(4,00004, "Gail Forcewind", "Paris");

INSERT INTO invoices (id, invoice_number, date, car_id, customer_id, staff_id)
VALUES (1, 852399038,20180101, 1, 1, 1),
       (2, 731166526,20190202, 3, 3, 4),
       (3, 271135104,20200303, 2, 2, 3);
