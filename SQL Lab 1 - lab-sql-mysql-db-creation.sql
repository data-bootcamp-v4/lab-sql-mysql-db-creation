## Challenge 1 - Design the Database

## Design an **Entity-Relationship (E-R) diagram** for your database.

## The database should have at least four tables: `cars`, `customers`, `salespersons` and `invoices`.

DROP DATABASE IF EXISTS dealership;

CREATE database IF NOT exists dealership;

use dealership;

# drop table dealership.cars if exists; 
create table if not exists customers (customer_ID int primary key,
										    name varchar(50),
											phone_number varchar(50),
                                            email varchar (100),
                                            address varchar (70),
                                            city varchar (30),
                                            state_province varchar (30),
                                            country varchar (30),
                                            zipcode varchar (30));


create table if not exists cars (vin char(50) primary key,
										    manufacturer varchar(50),
											model varchar(30),
                                            year int,
                                            color varchar (30) default 'black');

                                            
create table if not exists salespersons (staff_ID int primary key,
										    name varchar(50),
											Store varchar(10));

create table if not exists invoices (invoice_number int primary key,
										    Inv_date date,
											vin int,
                                            customer_ID int,
                                            staff_ID int);
      
insert into cars(vin, manufacturer, model, year, color)
values ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
        ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
        ('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
		('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
		('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
        ('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

insert into Customers(customer_ID, name, phone_number, email, address, city, state_province, country, zipcode)
values(10001,'Pablo Picasso','+34 636 17 63 82','','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
	  (20001,'Abraham Lincoln','+1 305 907 7086','','120 SW 8th St','Miami','Florida','United States','33130'),
	   (30001,'Napoléon Bonaparte','+33 1 79 75 40 00','','40 Rue du Colisée','Paris','Île-de-France','France','75008');
	

insert into salespersons(staff_ID, name, Store)
values (00001,'Petey Cruiser','Madrid'),
		(00002,'Anna Sthesia','Barcelona'),
		(00003,'Paul Molive','Berlin'),
        (00004,'Gail Forcewind','Paris'),
		(00005,'Paige Turner','Mimia'),
		(00006,'Bob Frapples','Mexico City'),
		(00007,'Walter Melon','Amsterdam'),
		(00008,'Shonda Leer','São Paulo');


insert into invoices(invoice_number, Inv_date, vin,customer_ID,staff_ID)
values (852399038,22-08-2018,'HKNDGS7CU31E9Z7JW',10001,00001),
		(731166526,31-12-2018,'DAM41UDN3CHU2WVF6',20001,00004),
		(271135104,22-01-2019,'ZM8G7BEUQZ97IH46V',30001,00007);

use dealership;
select * from dealership.invoices
