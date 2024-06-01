USE cars_1;

INSERT INTO cars (id, VIN, manufacturer, model, year, colour)
VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3FHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

LOAD DATA INFILE "C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\customer.csv"
INTO TABLE customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id,customer_ID,customer_name,customer_phone,customer_email,customer_address,customer_city,customer_state,customer_country,customer_zip);

SHOW VARIABLES LIKE "secure_file_priv";

ALTER TABLE invoices
ADD id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE invoices
ADD COLUMN invoice_num VARCHAR(45);

ALTER TABLE invoices
MODIFY COLUMN invoice_date DATE;

INSERT INTO cars_1.invoices (id,invoice_num,invoice_date,car,customer,salesperson)
VALUES (1,852399038,'2018-08-22',1,1,3),
(2,	731166526,	'2018-12-31'	,3,	3	,5),
(3	,271135104	,'2019-01-22',	2,	2	,7);
