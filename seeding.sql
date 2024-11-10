

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


INSERT INTO mydb.cars (VIN, manufacturer, salesperson, invoices)
VALUES 
    (12345, 'Toyota', 'Alice Johnson', 30000.50),
    (67890, 'Honda', 'Bob Smith', 25000.00),
    (11223, 'Ford', 'Charlie Brown', 22000.75),
    (44556, 'BMW', 'Dana White', 45000.00);


INSERT INTO mydb.Customers (customer_ID, name, phone, email, address, city, state_province, country, zip_postal)
VALUES 
    (1, 'John Doe', '123-456-7890', 'johndoe@example.com', '123 Elm St', 'Springfield', 'IL', 'USA', '62701'),
    (2, 'Jane Smith', '987-654-3210', 'janesmith@example.com', '456 Oak Ave', 'Chicago', 'IL', 'USA', '60616'),
    (3, 'Robert Brown', '555-555-5555', 'robertbrown@example.com', '789 Pine Rd', 'Seattle', 'WA', 'USA', '98101');


INSERT INTO mydb.Salesperson (staff_ID, name, store)
VALUES 
    (1, 'Alice Johnson', 'Super Cars LLC'),
    (2, 'Bob Smith', 'City Motors'),
    (3, 'Charlie Brown', 'Auto World');


INSERT INTO mydb.Invoices (invoice_number, date, VIN, customer_ID, staff_ID)
VALUES 
    (1001, '2024-10-01 09:30:00', 12345, 1, 1),
    (1002, '2024-10-05 14:00:00', 67890, 2, 2),
    (1003, '2024-10-10 10:45:00', 11223, 3, 3),
    (1004, '2024-10-12 11:00:00', 44556, 1, 1);

-- Re-enable the foreign key and unique checks
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
