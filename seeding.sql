

USE lab_mysql;

INSERT INTO country (country_id, country_name) VALUES
(1, 'Germany'),
(2, 'Colombia'),
(3, 'USA'),
(4, 'France'),
(5, 'Brazil'),
(6, 'Japan');

INSERT INTO salesperson (staff_id, name, country_id) VALUES
(1, 'Klaus Weber',      1),
(2, 'Ana Restrepo',     2),
(3, 'Jake Morrison',    3),
(4, 'Camille Dupont',   4),
(5, 'Lucas Oliveira',   5),
(6, 'Yuki Tanaka',      6);

INSERT INTO region (region_id, state_province, country_id) VALUES
(1, 'Bavaria',              1),
(2, 'Cundinamarca',         2),
(3, 'California',           3),
(4, 'Île-de-France',        4),
(5, 'São Paulo',            5),
(6, 'Tokyo Metropolis',     6);

INSERT INTO city (city_id, city_name, region_id) VALUES
(1, 'Munich',      1),
(2, 'Bogotá',      2),
(3, 'San Francisco',3),
(4, 'Paris',       4),
(5, 'São Paulo',   5),
(6, 'Tokyo',       6);

INSERT INTO address (add_id, address, zip_postal_code, city_id) VALUES
(1, 'Maximilianstrasse 12',   80539, 1),
(2, 'Calle 100 No. 15-20',    110111,2),
(3, 'Market St 450',          94105, 3),
(4, 'Rue de Rivoli 34',       75001, 4),
(5, 'Av. Paulista 1000',       1310100,5),
(6, 'Shibuya Crossing Blvd 8',1500001,6);

INSERT INTO customers (customer_id, cust_name, phone_num, email, country_id) VALUES
(1, 'Maria Schulz',     '+49891234567',   'm.schulz@email.de',   1),
(2, 'Carlos Mendez',    '+573001234567',  'cmendez@mail.co',     2),
(3, 'Sarah Kim',        '+14155550123',   'sarahkim@email.com',  3),
(4, 'Pierre Martin',    '+33123456789',   'p.martin@courriel.fr',4),
(5, 'Fernanda Costa',  '+5511987654321', 'fcosta@email.br',    5),
(6, 'Hiro Yamamoto',    '+819012345678',  'hyamamoto@mail.jp',  6);

INSERT INTO invoices (invoice_id, staff_id, customer_id, sale, VIN, date) VALUES
(1, 1, 1, 42000, 'WBA3A5G59ENP26020', '2024-01-15'),
(2, 2, 2, 55000, '1HGBH41JXMN109186', '2024-02-10'),
(3, 3, 3, 78000, '2T1BURHE0JC043821', '2024-03-22'),
(4, 4, 4, 34000, '3VWFE21C04M000001', '2024-04-05'),
(5, 5, 5, 61000, '4T1BF1FK0HU123456', '2024-05-18'),
(6, 6, 6, 89000, '5YJSA1CN5DFP12345', '2024-06-30');

INSERT INTO cars (VIN, manufacturer, model, year, color, invoice_id) VALUES
('WBA3A5G59ENP26020', 'BMW',        '3 Series', 2023, 'Black',  1),
('1HGBH41JXMN109186', 'Honda',      'Civic',    2022, 'White',  2),
('2T1BURHE0JC043821', 'Toyota',     'Corolla',  2024, 'Blue',   3),
('3VWFE21C04M000001', 'Volkswagen', 'Golf',     2021, 'Red',    4),
('4T1BF1FK0HU123456', 'Toyota',     'Camry',    2023, 'Silver', 5),
('5YJSA1CN5DFP12345', 'Tesla',      'Model S',  2024, 'White',  6);