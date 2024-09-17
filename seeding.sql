USE lab_mysql

INSERT INTO cars (id_car, manufacturer, model)
VALUES (1, '123M', 'camioneta'),
       (2, '456N', 'convertible'),
       (3, '789P', 'deportivo');
       
INSERT INTO customers (id_customer, name_customer, phone_number, email)
VALUES (10, 'juan', '101010',"juan@pro.com"),
       (20, 'roberto', '202020',"roberto@mel.com"),
       (30, 'elias', '303030',"elias@col.com");
     
       
INSERT INTO sales_person (id_staff, name_stores, store)
VALUES (1000, 'gala', 'per'),
       (2000, 'noem', 'bra'),
       (3000, 'pomi', 'col');       

INSERT INTO invoices (number_invoice, date_invoice, id_car, id_customer, id_staff)
VALUES (100, '2024-09-10', 1, 10, 1000),
       (200, '2024-05-01', 2, 20, 2000),
       (300, '2024-06-03', 3, 30, 3000);
       
       
