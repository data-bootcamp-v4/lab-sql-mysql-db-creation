CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30) NOT NULL
    );
    
    INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
('1HGCM82633A123456', 'Honda', 'Civic', 2020, 'Blue'),
('2T1BURHE5JC987654', 'Toyota', 'Corolla', 2022, 'White'),
('3FA6P0H74JR456789', 'Ford', 'Fusion', 2019, 'Black');

SELECT * FROM cars;