INSERT INTO customers (customer_id, name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');

ALTER TABLE customers MODIFY phone_number VARCHAR(20);

 
INSERT INTO customers (customer_id, name, phone_number, address, state_province, country, zip_postal)
VALUES 
(5, 'Pablo Picasso', '34636176382', 'Paseo de la Chopera, 14', 'Madrid', 'Spain', '28045'),
(6, 'Abraham Lincoln', '13059077086', '120 SW 8th St', 'Florida', 'United States', '33130'),
(7, 'Napoléon Bonaparte', '33179754000', '40 Rue du Colisée', 'Île-de-France', 'France', '75008');

alter table cars modify brand varchar(45);

insert into cars (name, brand, year, color)
values 
('3K096I98581DHSNUP', 'Volkswagen Tiguan', '2019', 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot Rifter', '2019', 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford Fusion', '2018', 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota RAV4', '2018', 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo V60', '2019', 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo V60 Cross Country', '2019', 'Gray');

ALTER TABLE salespersons MODIFY staff_id INT AUTO_INCREMENT;

insert into salespersons (name, store)
values
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Mimia'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');

