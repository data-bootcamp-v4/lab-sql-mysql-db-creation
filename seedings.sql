USE lab_mysql;

INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES ('123456789AA','ford','model1',2010,'yellow'),
	   ('123456789AB','toyota','model2',1987,'red'),
       ('123456789Ac','nissan','model3',2024,'blue');

INSERT INTO customers (phone_number, email, address,city,province,country,postal_code)
VALUES ('672709098','pepito.grillo@gmail.com','Avenida Santuario 9','madrid','madrid','spain','28039'),
	   ('672709091','pepito.gril@gmail.com','Avenida Santuario 97','valencia','comunidad valenciana','spain','28045'),
       ('672709092','pepito.gri@gmail.com','Avenida Santuario 97C','gerona','cataluña','spain','28035');
       
INSERT INTO salespersons (name_employee, store)
VALUES ('alberto','store1'),
	   ('juan','store2'),
       ('Antonio','store3');
       
INSERT INTO invoices (date_time, car_id, customer_id, salesperson_id)
VALUES (NOW(), 4, 4, 5),
	   (NOW(), 5, 4, 5),
       (NOW(), 6, 5, 6);