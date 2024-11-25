USE lab_mysql;
-- Crea entradas a la tabla cars, en las columnas indicadas.
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
  ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan','2019','Blue'),
  ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019','Red'),
  ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
  ('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4','2018',	'Silver'),
  ('DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	'2019','Gray'),
  ('DAM41UDN3CHU2WVCC',	'Volvo', 'V60 Cross Country', '2019', 'Gray');
  -- Crea entradas a la tabla customers, en las columnas indicadas.
  INSERT INTO customers (customer_id, name, phone_num, email, address, city, state_prov, country, postal_code) VALUES
  ("10001",	"Pablo Picasso", "+34 636 17 63 82","-","Paseo de la Chopera, 14",	"Madrid", "Madrid",	"Spain","28045"),
  ("20001",	"Abraham Lincoln",	"+1 305 907 7086",	"-", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
  ("30001",	"Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");
  -- Crea entradas a la tabla salespersons, en las columnas indicadas.
  INSERT INTO salespersons (staff_id, name, store) VALUES
  ("00001", "Petey Cruiser", "Madrid"),
  ("00002",	"Anna Sthesia",	"Barcelona"),
  ("00003", "Paul Molive",	"Berlin"),
  ("00004",	"Gail Forcewind", "Paris"),
  ("00005",	"Paige Turner",	"Mimia"),
  ("00006",	"Bob Frapples",	"Mexico City"),
  ("00007",	"Walter Melon",	"Amsterdam"),
  ("00008",	"Shonda Leer", "São Paulo");
  -- Crea entradas a la tabla invoices, en las columnas indicadas.
  INSERT INTO invoices (invoice_number, inv_date, vin, customer_id, staff_id) VALUES
  ("852399038",	"22-08-2018", "3K096I98581DHSNUP","10001",	"00003"),
  ("731166526","31-12-2018","RKXVNNIHLVVZOUB4M","30001","00005"),
  ("271135104",	"22-01-2019","ZM8G7BEUQZ97IH46V","20001","00007");
  
  