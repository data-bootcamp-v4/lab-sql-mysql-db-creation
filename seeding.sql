use lab_mysql;

alter table cars
add column vin varchar(45);

insert into cars (vin, manugacturer, model, `year`, color)
values ('K096I98581DHSNUP',	'Volkswagen', 'Tiguan', 2019, 'Blue'),
	   ('ZM8G7BEUQZ97IH46V', 'Peugeot',	'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
	   ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 ross Country', 2019, 'Gray');
       
select * from cars;

-- id	cust_id	cust_name	cust_phone	cust_email	cust_address	cust_city	cust_state	cust_country	cust_zipcode

use lab_mysql;

alter table customer
add phone_number varchar(45);

insert into customer (customer_id, customer_name, phone_number, email, address, city, state_province, country, postal_code)
values (10001, 'Pablo Picasso', 0034636176382, '-', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', 28045),
	   (20001, 'Abraham Lincoln', 0013059077086, '-','120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);
 
 insert into salesperson (staff_id, salesperson, store)
 values (1,'Petey Cruiser','Madrid'),
        (2,'Anna Sthesia','Barcelona'),
        (3,'Paul Molive','Berlin'),
        (4,'Gail Forcewind','Paris'),
		(5,'Paige Turner','Mimia'),
        (6,'Bob Frapples','Mexico City'),
        (7,'Walter Melon','Amsterdam'),
        (8,'Shonda Leer','São Paulo');