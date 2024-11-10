INSERT INTO cars (vin,manufacturer,model,year,color)
VALUES ("K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue"),
       ("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red"),
       ("RKXVNNIHLVVZOUB4M","Ford","Fusion","2018","White");


INSERT INTO customers (cust_id,cust_name,cust_phone,cust_email,cust_address,cust_city,cust_state,cust_country,cust_zipcode)
VALUES ("10001","Pablo Picasso","+34 636","-","Paseo de la Chopera, 14","Madrid","Ma","Spain","28045"),
       ("20001","Abraham Lincoln","+1 305","-","120 SW 8th St","Miami","Fl","USA","33130"),
       ("30001","Napoléon Bonaparte","+33 1 79 75","-","40 Rue du Colisée","Paris","Îl","France","75008");

INSERT INTO salespersons (staff_id,name,store)
VALUES ("00001","Petey Cruiser","Madrid"),
       ("00002","Anna Sthesia","Barcelona"),
       ("00003","Paul Molive","Berlin");

INSERT INTO invoices(date,car,customer,salesperson)
VALUES ("2018-08-22 00:00:00", "1", "1", "3"),
       ("2018-12-31 00:00:00", "3", "3", "5"),
       ("2019-01-22 00:00:00", "2", "2", "7");


