SHOW VARIABLES LIKE 'secure_file_priv';
INSERT INTO customers (customer_id, name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');
       
SELECT * FROM customers;

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 9.0\Uploads\cars_data' #error message received
INTO TABLE cars
SELECT * FROM cars;
# table population performed with "table data import wizard"