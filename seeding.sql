USE lab_mysql;

INSERT INTO cars (VIN, manufacturer, model, color,year)
VALUES ('123456789AA','ford','model1','yellow',2010),
	   ('123456789AB','toyota','model2','red',1987),
       ('123456789Ac','nissan','model3','blue',2024);

INSERT INTO customers (customer_id, phone_number, email, address,city,province,country,postal_code)
VALUES ('51112345H',672709098,'pepito.grillo@gmail.com','Avenida Santuario 9','madrid','madrid','spain',28039),
	   ('51112345A',672709091,'pepito.gril@gmail.com','Avenida Santuario 97','valencia','comunidad valenciana','spain',28045),
       ('51112345Q',672709092,'pepito.gri@gmail.com','Avenida Santuario 97C','gerona','cataluña','spain',28035);
       
INSERT INTO salespersons (name_employee, store)
VALUES ('alberto','store1'),
	   ('juan','store2'),
       ('Antonio','store3');
       
INSERT INTO invoices (date_time, car, customer, salesperson)
VALUES (NOW(), '123456789AA', '51112345A', 1),
	   (NOW(), '123456789AB', '51112345H', 2),
       (NOW(), '123456789Ac', '51112345Q', 2);
       
DELETE FROM invoices 
WHERE invoice_number IN (1,2,3);