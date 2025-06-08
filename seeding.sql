INSERT INTO invoices (invoice_number, date, car, customer_ID, staff_ID)
VALUES (1, 20250606 , 'toyota' , 123,3),
       (2, 20250512 ,'toyota',231, 3),
       (3, 20250527 ,'toyota',312, 1);
       
INSERT INTO cars (vehicle_identification, manufacturer, model, product_year, color)
VALUES (1234, 'ford', 'ka','20250101','blue'),
       (2341, 'ford', 'fiesta','20200101','pink'),
       (3412, 'toyota', 'corolla','20250101','black');
       
INSERT INTO Customers (customer_ID, name, phone_number, email, address, city, state, country, zipcode)
VALUES (123 , 'John Doe', 111111, 'johndoe@example.com','x street','amsterdam','','nl','100AZ'),
       (231, 'Jane Smith', 222222, 'janesmith@example.com','y street','amsterdam','noord holland','netherland','1414ER'),
       (312, 'Bob Johnson', 333333, 'bobjohnson@example.com','z street','utrecht',' ','nl','200AM');

INSERT INTO salespersons (staff_ID, name, store)
VALUES (1, 'John Doer', 'roterdam'),
       (2, 'Jane Smit', 'amsterdam'),
       (3, 'Bob Joson', 'roterdam');