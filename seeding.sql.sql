USE lab_mysql;

INSERT INTO customers (customer_id, Name, e_mail)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');
       
select * from lab_mysql.cars;

INSERT INTO cars (vin,	manufacturer,	model,	year,	color)
values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
		('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
        ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
        ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
		('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
		('DAM61UDN3CHU2WVF8', 'Volvo', 'V60 Cross Country', '2019', 'Gray');
        
INSERT INTO salespersons ( staff_id, name, store)
values ('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006','Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

insert into invoices(id, invoice_number, Date, car, customer, salesperson)
values('1', '852399038', '2018-08-22', '1', '1', '3'),
		('2', 731166526, '2018-12-31',	3,	3,	5),
		(3,	271135104, '2019-01-22',	2,	2,	79);
        