INSERT INTO cars (vin, model, year, manufacturer, color)
VALUES ("3K096I98581DHSNUP",	"Volkswagen",	2019, "Tiguan",	"Blue"),
 ("ZM8G7BEUQZ97IH46V",	"Peugeot",	2019, "Rifter", "Red"),
 ("RKXVNNIHLVVZOUB4M",	"Ford",	2018, "Fusion",	"White"),
 ("HKNDGS7CU31E9Z7JW",	"Toyota",	2018, "RAV4", "Silver"),
 ("DAM41UDN3CHU2WVF6",	"Volvo", 2019, "V60",	"Gray"),
 ("DAM41UDN3CHU2WVF6",	"Volvo", 2019, "V60 Cross Country",	"Gray");
 
 INSERT INTO customers (customer_id, cust_name, phone_no, email, address, city, state, country, zipcode)
 VALUES (10004, "Pablo Picasso",	+34636176382,	"Eddclectic1000@gmail.com ",	"Paseo de la Chopera 14",	"Madrid",	"Madrid",	"Spain",	280),
(20001,	"Abraham Lincoln",	+13059077086,	"yrhfdh",	"120 SW 8th St",	"Miami",	"Florida",	"United States",	331),
(30001,	"Napoléon Bonaparte",	+33179754000,	" hjfhdhdh",	"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France",	750);

INSERT INTO salespersons(staff_id, staff_name, store, staff_rank)
VALUES (001,	"Petey Cruiser",	"Madrid", 2),
       (002,	"Anna Sthesia",	"Barcelona", 1),
       (003,	"Paul Molive",	"Berlin", 1),
       (004,	"Gail Forcewind",	"Paris", 2),
       (005,	"Paige Turner",	"Mimia", 3),
       (006,	"Bob Frapples",	"Mexico City", 2),
        (007,	"Walter Melon",	"Amsterdam", 1),
        (008,	"Shonda Leer",	"São Paulo", 2);
        
  INSERT INTO invoices(invoice_no, customer, date, salesperson, car)
  VALUES ("852399038",	1, "2018-08-22", 1,	3),
    ("731166526",	3, "2018-12-31", 3,	5),
    ("271135104",	2, "2019-01-22", 2,	6);