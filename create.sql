create table cars (
id INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR (20), 
manufacturer varchar(20), 
model varchar(20), 
`year` int, 
color varchar (10)
);
create table customers (
id INT AUTO_INCREMENT PRIMARY KEY,
Customer_ID varchar(20),
`name` varchar(20),
phone varchar(15),
email varchar(30),
address varchar (40),
ZIP_code varchar (10),
City varchar (20),
State varchar (20),
Country varchar (20)
);
create table salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
Staff_ID varchar(20),
`Name` varchar(20),
Store varchar(20)
);
create table Invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
Invoice_no varchar(20),
`date` date,
Customer int,
Car int,
salesperson int,
foreign key (Customer)
	references customers (id),
foreign key (Car)
	references cars (id),
foreign key (salesperson)
	references salespersons (id)
);