INSERT INTO Car (car_id, vin, manufacturer, model, year, color)
VALUES  (1,	'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
		(2,	'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
		(3,	'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White');

INSERT INTO Salesperson(salesperson_id, first_name, last_name, phone, email)
VALUES  (1,	'Linh',	'Vuong',	110,	'lv@gmail.com'),
		(2,	'Max',	'Sonntag',	112,	'maxsonntag@gmail.com'),
		(3,	'Janos',	'Sonne',	111,	'Janos@gmail.com');
        
INSERT INTO Customer(customer_id, first_name, last_name, phone, email)
VALUES  (1,	'Linh',	'Vuong',	110,	'lv@gmail.com'),
		(2,	'Max',	'Sonntag',	112,	'maxsonntag@gmail.com'),
		(3,	'Janos',	'Sonne',	111,	'Janos@gmail.com');
        
INSERT INTO Invoice(invoice_id, sale_date, total_amount, Salesperson_salesperson_id, Car_car_id, Customer_customer_id)
VALUES  (1,	22-08-2018,	25000,	2,	1, 2),
		(2,	31-12-2018,	69000,	2,	2, 3),
		(3,	22-01-2019,	42000,	3,	3, 2);