USE lab_mysql;

INSERT INTO `Salesperson` (`id`, `staff_id`, `name`, `store`)
VALUES (0, 100, 'Maria', 'Madrid'),
       (2, 101, 'Jose', 'Barcelona'),
       (3, 102, 'Carlos', 'Valencia');
       
   INSERT INTO `Cars` (`id`, `vin`, `manufacturer`, `model`, `year`, `color`)
VALUES (1, 344, 'Toyota', 667, 2010, 'black'),
       (2, 345, 'Ford', 668, 2011, 'white'),
       (3, 346, 'Audi', 669, 2012, 'blue');    
       
     INSERT INTO `Invoices` (`id`, `invoice number`, `date`, `car`, `customer`, `salesperson`)
VALUES (1, 22-08-2018, 1, 344, 'Vicky', 'Maria'),
       (2, 31-12-2018, 2, 345, 'Valeria', 'Jose'),
       (3, 22-01-2019, 3, 346, 'Claudia', 'Carlos');     
       
        INSERT INTO `Customer` (`id`, `cust_id`, `cust_name`, `cust_phone`, `cust_email`, `cust_address`, `cust_city`, `cust_state`, `cust_country`, `cust_zipcode`)
VALUES (1, 555, 'Vicky', 612507211, 'vicky@gmail.com', 'Av Pilar 15', 'Madrid', 'Madrid', 'España', 28009 ),
       (2, 444, 'Valeria', 614567895, 'val@gmail.com', 'Calle Gracia 16', 'Madrid', 'Madrid', 'España', 28028),
       (3, 333, 'Claudia', 623479076, 'claudia@hotmail.com', 'La Pradera 65', 'Madrid', 'Madrid', 'España', 28006);  
       
SELECT * FROM `Salesperson`;
SELECT * FROM `Cars`;
SELECT * FROM `Invoices`;
SELECT * FROM `Customer`;
       
	