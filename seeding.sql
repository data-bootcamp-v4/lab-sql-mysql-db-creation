SE lab_mysql;

    
INSERT INTO auto (vin, maufacturer, model, year, color)
VALUES (110, 'Audi', 'A6', 2025, 'negro'),
		(111, 'BMW', 'X5', 2025, 'gris'),
        (112, 'Mercedes Benz', 'C Class', 2025, 'gris');
        
INSERT INTO clientes
(name, telephone, email, address, city, state, country, zip_code)
VALUES
('Lautaro', '+34653056124', 'lcs@gmail.com', 'Plaza de Verín, 6', 'Madrid', 'Madrid', 'Spain', '28029'),
('Anais', '+33766578910', 'aom@gmail.com', 'Rue Liberte, 74', 'Lyon', 'Auvergne', 'France', '69001'),
('Silvia', '+5492984491339', 'silsil@gmail.com', 'Onas 1115', 'Villa Regina', 'Río Negro', 'Argentina', '8336');

        

INSERT INTO vendedores (name, store)
VALUES
('Carlos', 'Madrid Centro'),
('Lucía', 'Barcelona'),
('Martín', 'Valencia');


SELECT id, name FROM clientes;
SELECT vin FROM auto;
SELECT id_staff, name FROM vendedores;

INSERT INTO facturas (date, auto_vin, cliente_id, vendedor_id)
VALUES (NOW(), 110, 1, 1);

INSERT INTO facturas (date, auto_vin, cliente_id, vendedor_id)
VALUES (NOW(), 111, 2, 2);

INSERT INTO facturas (date, auto_vin, cliente_id, vendedor_id)
VALUES (NOW(), 112, 3, 3);
