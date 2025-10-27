USE lab_mysql;
INSERT INTO cars (manufacturer, model, car_year, color)
VALUES ('Hyundai', 'I30', 2010, 'Azul'),
('Volkswagen', 'Passat',2015,'Blanco'),
('Toyota', 'Corolla', 2022, 'Gris'),
('Ford', 'Focus', 2021, 'Negro'),
('Mazda', 'Model 3', 2023, 'Rojo');
SET SQL_SAFE_UPDATES = 0;
INSERT INTO customers (customer_name, customer_phone, customer_email, customer_province, customer_country, customer_postal_code)
VALUES ('Pedro', '683749199', 'pedro@gmail.com', 'Lugo', 'Spain', '43088'),
('Ana', '681926344', 'ana@gmail.com', 'Alava', 'Spain', '28044'),
('Lorena', '681534418', 'lorena@gmail.com', 'Zaragoza', 'Spain', '10377'),
('Alvaro', '677338811', 'alvaro@gmail.com', 'Albacete', 'Spain', '19378'),
('Juan', '610027390', 'juan@gmail.com', 'Madrid', 'Spain', '37015'),
('María', '601026308', 'maria@gmail.com', 'Barcelona', 'Spain', '77082');
INSERT INTO salespersons (staff_name, staff_store)
VALUES ('Antonio','Madrid'),
('Patricia','Barcelona'),
('Raul', 'Madrid'),
('Ignacio','Barcelona');
INSERT INTO invoices (invoice_date, invoice_car, invoice_customer, invoice_salesperson)
VALUES 
('2021-10-28', 1, 3, 2),
('2022-07-07', 2, 1, 3),
('2022-12-15', 5, 6, 1),
('2023-01-30', 4, 5, 1),
('2022-04-03', 3, 2, 2),
('2024-08-17', 5, 1, 4),
('2025-09-19', 5, 4, 2),
('2024-11-29', 1, 3, 3);
   
