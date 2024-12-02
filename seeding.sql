USE Lab1;

INSERT INTO cars (vin, manufacturer, model, `year`, color) VALUES
('1HGBH41JXMN109186', 'Honda', 'Civic', 2020, 'Blue'),
('2A4GP44R95R855285', 'Chrysler', 'Pacifica', 2019, 'Red'),
('3VWD17AJ4EM123456', 'Volkswagen', 'Jetta', 2021, 'White'),
('5NMS2CADXLH153748', 'Hyundai', 'Santa Fe', 2022, 'Silver'),
('1G1ZT62855F292500', 'Chevrolet', 'Malibu', 2020, 'Black'),
('2C3CDZAG5MH653642', 'Chrysler', '300', 2021, 'Grey'),
('1G1BE5SM4J7139985', 'Chevrolet', 'Cruze', 2018, 'Red'),
('1C4PJMDX1JW237508', 'Jeep', 'Cherokee', 2021, 'Blue'),
('5FNYF6H51LB013212', 'Honda', 'Pilot', 2020, 'Green'),
('3GNCJKSB1KL227415', 'Chevrolet', 'Trax', 2020, 'Yellow'),
('1FA6P8TH4J5126793', 'Ford', 'Mustang', 2019, 'Black'),
('1G1ZG5ST5KF156746', 'Chevrolet', 'Malibu', 2021, 'White'),
('1FMCU0F73JUB92368', 'Ford', 'Escape', 2019, 'Blue'),
('2T3HEBFC6HW611320', 'Toyota', 'RAV4', 2022, 'Silver'),
('3N1AB7AP1HY210292', 'Nissan', 'Sentra', 2020, 'Red'),
('1C4RJFBG4EC357768', 'Jeep', 'Grand Cherokee', 2018, 'Grey'),
('2FMPK4J94JBC55431', 'Ford', 'Edge', 2019, 'White'),
('5XYKT3A64LG651429', 'Kia', 'Sorento', 2020, 'Green'),
('1LN6L9DK3E5688991', 'Lincoln', 'MKZ', 2017, 'Blue'),
('5YJSA1E23FF101183', 'Tesla', 'Model S', 2021, 'Black');


INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_code) VALUES
('Alice Johnson', '123-456-7890', 'alice.johnson@email.com', '123 Elm St', 'New York', 'NY', 'USA', '10001'),
('Bob Smith', '234-567-8901', 'bob.smith@email.com', '456 Oak St', 'Los Angeles', 'CA', 'USA', '90001'),
('Charlie Davis', '345-678-9012', 'charlie.davis@email.com', '789 Pine St', 'Chicago', 'IL', 'USA', '60601'),
('David Brown', '456-789-0123', 'david.brown@email.com', '101 Maple Ave', 'Houston', 'TX', 'USA', '77001'),
('Emily Wilson', '567-890-1234', 'emily.wilson@email.com', '202 Birch Ln', 'Phoenix', 'AZ', 'USA', '85001'),
('Frank Clark', '678-901-2345', 'frank.clark@email.com', '303 Cedar Blvd', 'Philadelphia', 'PA', 'USA', '19101'),
('Grace Moore', '789-012-3456', 'grace.moore@email.com', '404 Pine St', 'San Antonio', 'TX', 'USA', '78201'),
('Hannah Lee', '890-123-4567', 'hannah.lee@email.com', '505 Elm St', 'San Diego', 'CA', 'USA', '92101'),
('Isaac Allen', '901-234-5678', 'isaac.allen@email.com', '606 Oak St', 'Dallas', 'TX', 'USA', '75201'),
('Jack Harris', '012-345-6789', 'jack.harris@email.com', '707 Maple St', 'San Jose', 'CA', 'USA', '95101'),
('Kathy Young', '123-456-7890', 'kathy.young@email.com', '808 Birch Ln', 'Austin', 'TX', 'USA', '73301'),
('Louis King', '234-567-8901', 'louis.king@email.com', '909 Pine Blvd', 'Fort Worth', 'TX', 'USA', '76101'),
('Megan Scott', '345-678-9012', 'megan.scott@email.com', '123 Cedar Dr', 'Columbus', 'OH', 'USA', '43201'),
('Nathan Mitchell', '456-789-0123', 'nathan.mitchell@email.com', '234 Oak Ave', 'Indianapolis', 'IN', 'USA', '46201'),
('Olivia Robinson', '567-890-1234', 'olivia.robinson@email.com', '345 Birch St', 'Charlotte', 'NC', 'USA', '28201'),
('Paul Carter', '678-901-2345', 'paul.carter@email.com', '456 Maple Ave', 'Detroit', 'MI', 'USA', '48201'),
('Quincy Perez', '789-012-3456', 'quincy.perez@email.com', '567 Cedar Ln', 'Jacksonville', 'FL', 'USA', '32201'),
('Riley White', '890-123-4567', 'riley.white@email.com', '678 Pine Blvd', 'San Francisco', 'CA', 'USA', '94101'),
('Sarah Martinez', '901-234-5678', 'sarah.martinez@email.com', '789 Oak Dr', 'Denver', 'CO', 'USA', '80201'),
('Tom Evans', '012-345-6789', 'tom.evans@email.com', '890 Birch St', 'Seattle', 'WA', 'USA', '98101');


INSERT INTO salespersons (name, store) VALUES
('Alice Green', 'Store A'),
('Bob White', 'Store B'),
('Charlie Black', 'Store C'),
('David Brown', 'Store D'),
('Emily Blue', 'Store E'),
('Frank Red', 'Store F'),
('Grace Yellow', 'Store G'),
('Hannah Pink', 'Store H'),
('Isaac Grey', 'Store I'),
('Jack Purple', 'Store J'),
('Kathy Orange', 'Store K'),
('Louis Violet', 'Store L'),
('Megan Blue', 'Store M'),
('Nathan Green', 'Store N'),
('Olivia Red', 'Store O'),
('Paul Yellow', 'Store P'),
('Quincy Brown', 'Store Q'),
('Riley Black', 'Store R'),
('Sarah Orange', 'Store S'),
('Tom Purple', 'Store T');


INSERT INTO invoices (invoice_number, `date`, car_id, customer_id, salesperson_id) VALUES
('INV0001', '2023-01-01', 1, 1, 1),
('INV0002', '2023-02-01', 2, 2, 2),
('INV0003', '2023-03-01', 3, 3, 3),
('INV0004', '2023-04-01', 4, 4, 4),
('INV0005', '2023-05-01', 5, 5, 5),
('INV0006', '2023-06-01', 6, 6, 6),
('INV0007', '2023-07-01', 7, 7, 7),
('INV0008', '2023-08-01', 8, 8, 8),
('INV0009', '2023-09-01', 9, 9, 9),
('INV0010', '2023-10-01', 10, 10, 10),
('INV0011', '2023-11-01', 11, 11, 11),
('INV0012', '2023-12-01', 12, 12, 12),
('INV0013', '2024-01-01', 13, 13, 13),
('INV0014', '2024-02-01', 14, 14, 14),
('INV0015', '2024-03-01', 15, 15, 15),
('INV0016', '2024-04-01', 16, 16, 16),
('INV0017', '2024-05-01', 17, 17, 17),
('INV0018', '2024-06-01', 15,7,10);



