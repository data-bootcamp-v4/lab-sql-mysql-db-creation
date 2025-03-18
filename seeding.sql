-- Insertar datos en la tabla 'cars'
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray'),
('1HGCR2F3XFA000001', 'Honda', 'Civic', 2020, 'Black'),
('5YJSA1DN5CFP00001', 'Tesla', 'Model S', 2020, 'White'),
('JTDKB20U993000001', 'Toyota', 'Prius', 2021, 'Blue'),
('2C3CDXBG9DH000001', 'Dodge', 'Challenger', 2021, 'Red');

-- Insertar datos en la tabla 'customers'
INSERT INTO customers (name, surname, phone, email, address, city, state, province, zipcode, birth, gender) VALUES
('John', 'Doe', '123-456-7890', 'john.doe@example.com', '123 Elm St', 'Springfield', 'IL', 'Illinois', '62704', '1980-01-15', 'M'),
('Jane', 'Smith', '234-567-8901', 'jane.smith@example.com', '456 Oak St', 'Shelbyville', 'IL', 'Illinois', '62706', '1985-05-20', 'F'),
('Alice', 'Johnson', '345-678-9012', 'alice.johnson@example.com', '789 Pine St', 'Capital City', 'IL', 'Illinois', '62701', '1990-09-25', 'F'),
('Bob', 'Brown', '456-789-0123', 'bob.brown@example.com', '101 Maple St', 'Ogdenville', 'IL', 'Illinois', '62709', '1975-03-30', 'M'),
('Charlie', 'Davis', '567-890-1234', 'charlie.davis@example.com', '202 Birch St', 'North Haverbrook', 'IL', 'Illinois', '62712', '1988-07-10', 'M'),
('Eve', 'Martinez', '678-901-2345', 'eve.martinez@example.com', '303 Cedar St', 'Springfield', 'IL', 'Illinois', '62704', '1995-11-05', 'F'),
('Frank', 'Garcia', '789-012-3456', 'frank.garcia@example.com', '404 Walnut St', 'Shelbyville', 'IL', 'Illinois', '62706', '1982-12-20', 'M'),
('Grace', 'Rodriguez', '890-123-4567', 'grace.rodriguez@example.com', '505 Chestnut St', 'Capital City', 'IL', 'Illinois', '62701', '1992-02-15', 'F'),
('Hank', 'Wilson', '901-234-5678', 'hank.wilson@example.com', '606 Spruce St', 'Ogdenville', 'IL', 'Illinois', '62709', '1978-06-25', 'M'),
('Ivy', 'Anderson', '012-345-6789', 'ivy.anderson@example.com', '707 Fir St', 'North Haverbrook', 'IL', 'Illinois', '62712', '1987-08-30', 'F');

-- Insertar datos en la tabla 'salespersons'
INSERT INTO salespersons (name, store) VALUES
('Mike', 'Madrid'),
('Sara', 'Barcelona'),
('Carlos', 'Valencia'),
('Laura', 'Sevilla'),
('David', 'Zaragoza'),
('Ana', 'Málaga'),
('Jorge', 'Murcia'),
('Lucia', 'Palma'),
('Pablo', 'Bilbao'),
('Marta', 'Alicante');

-- Insertar datos en la tabla 'invoices'
INSERT INTO invoices (number, date, car, customer, salesperson) VALUES
('INV001', '2023-01-10', 1, 1, 1),
('INV002', '2023-02-15', 2, 2, 2),
('INV003', '2023-03-20', 3, 3, 3),
('INV004', '2023-04-25', 4, 4, 4),
('INV005', '2023-05-30', 5, 5, 5),
('INV006', '2023-06-05', 6, 6, 6),
('INV007', '2023-07-10', 7, 7, 7),
('INV008', '2023-08-15', 8, 8, 8),
('INV009', '2023-09-20', 9, 9, 9),
('INV010', '2023-10-25', 10, 10, 10);