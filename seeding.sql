INSERT INTO cars (VIN,MANUFACTURER,MODEL,CAR_YEAR,COLOR)
VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
       ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
       ('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
       ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
       ('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
       
INSERT INTO customers (CUSTOMERS_ID,NAME,PHONE_NUMBER,EMAIL,ADDRESS,CITY,STATE,COUNTRY,ZIP)
VALUES ('10001','Pablo Picasso','+34 636 17 63 82','.','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
       ('20001','Abraham Lincoln','+1 305 907 7086','.','120 SW 8th St','Miami','Florida','United States','33130'),
       ('30001','Napoléon Bonaparte','+33 1 79 75 40 00','.','40 Rue du Colisée','Paris','Île-de-France','France','29945');
         
INSERT INTO salespersons (STAFF_ID,NAME,STORE)
VALUES ('00001','Petey Cruiser','Madrid'),
       ('00002','Anna Sthesia','Barcelona'),
       ('00003','Paul Molive','Berlin'),
       ('00004','Gail Forcewind','Paris'),
       ('00005','Paige Turner','Mimia'),
       ('00006','Bob Frapples','Mexico City'),
       ('00007','Walter Melon','Amsterdam'),
       ('00008','Shonda Leer','São Paulo');

INSERT INTO invoices (INVOICE_NUMBER,INVOICE_DATE,VIN,CUSTOMERS_ID,STAFF_ID)
VALUES ('852399038','2018-08-22','ZM8G7BEUQZ97IH46V',10001,'00002'),
       ('731166526','2018-12-31','HKNDGS7CU31E9Z7JW',20001,'00006'),
       ('271135104','2019-01-22','DAM41UDN3CHU2WVF6',30001,'00004');