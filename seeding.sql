USE lab_mysql;

INSERT INTO `Cars` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`)
VALUES (309698581, 'Volkswagen', 'Tiguan', 2019, 'Blue'),
	   (879746, 'Peugeot', 'Rifter', 2019, 'Red');
       
INSERT INTO `Customers` (`Customer_ID`, `Name`, `Phone_Number`, `Email`, `Address`, `City`, `State_Province`, `Country`, `Postal_Code`)
VALUES (10001, 'Pablo Picasso', +34636176382, '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
	   (20001, 'Abraham Lincoln', +13059077086, '-', '120 SW 8th St', 'Miami', 'Florida', 'USA', 33130);

INSERT INTO `Salespersons` (`Staff_ID`, `Name`, `Store`)
VALUES (2001, 'Mark Rivera', 'Downtown Motors'),
	   (2002, 'Sarah Kim', 'Auto Plaza'),
       (2003, 'John Smith', 'City Cars');

INSERT INTO `Invoices` (`Invoice_Number`, `Car_ID`, `Customer_ID`, `Salesperson_ID`)
VALUES (5001, 1, 1, 1), 
       (5002, 2, 2, 2),  
       (5003, 3, 3, 3);  

       
	
