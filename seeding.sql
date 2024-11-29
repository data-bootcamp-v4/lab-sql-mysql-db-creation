INSERT INTO cars VALUES	-- Como meto los datos en el orden que están y meto todos no hace falta poner cars(nombreCol1, nombreCol2, etc)
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019-12-01', 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019-12-01', 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018-01-01', 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018-05-15', 'Silver'),
('DNNIHL3CHU2WVF6', 'Volvo', 'V60', '2019-08-30', 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019-08-30', 'Gray');


INSERT INTO customers VALUES
(10001, 'Pablo Picasso', '+34 636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 3059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 179754000', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);


INSERT INTO stores VALUES
(123, 'Paseo Magdalena', 'Madrid'),
(124, 'Calle Mayor 15', 'Barcelona'),
(125, 'Avenida de América 20', 'Madrid'),
(126, 'Boulevard Saint-Germain 35', 'Paris'),
(127, 'Via del Corso 10', 'Rome'),
(128, 'Oxford Street 200', 'London'),
(129, 'Fifth Avenue 500', 'New York'),
(130, 'Gran Vía 40', 'Madrid'),
(131, 'Königsallee 90', 'Düsseldorf'),
(132, 'Nanjing Road 120', 'Shanghai');


INSERT INTO sales_person VALUES
(1, 'John Doe', 123),
(2, 'Jane Smith', 124),
(3, 'Michael Johnson', 125),
(4, 'Emily Davis', 126),
(5, 'Daniel Wilson', 127),
(6, 'Olivia Brown', 128),
(7, 'James Miller', 129),
(8, 'Sophia Anderson', 130),
(9, 'David Taylor', 131),
(10, 'Isabella Thomas', 132);


INSERT INTO invoices VALUES
(1, '2024-01-15', '3K096I98581DHSNUP', '10001', 1),
(2, '2024-02-20', 'ZM8G7BEUQZ97IH46V', '20001', 2),
(3, '2024-03-10', 'RKXVNNIHLVVZOUB4M', '30001', 3),
(4, '2024-04-05', 'HKNDGS7CU31E9Z7JW', '10001', 4),
(5, '2024-05-12', 'DAM41UDN3CHU2WVF6', '20001', 5),
(6, '2024-06-18', '3K096I98581DHSNUP', '30001', 6),
(7, '2024-07-22', 'ZM8G7BEUQZ97IH46V', '10001', 7),
(8, '2024-08-14', 'RKXVNNIHLVVZOUB4M', '20001', 8),
(9, '2024-09-25', 'HKNDGS7CU31E9Z7JW', '30001', 9),
(10, '2024-10-30', 'DAM41UDN3CHU2WVF6', '10001', 10);

