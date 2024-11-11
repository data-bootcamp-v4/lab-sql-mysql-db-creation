INSERT INTO cars (manufacturer, model, year, colour)
VALUES 
    ('Toyota', 'Camry', 2020, 'White'),
    ('Honda', 'Civic', 2019, 'Blue'),
    ('Ford', 'Mustang', 2021, 'Red');

INSERT INTO salesperson (name, store)
VALUES 
    ('Alice Johnson', 'Downtown Store'),
    ('Bob Smith', 'Uptown Store'),
    ('Carol White', 'Suburban Store');

INSERT INTO customers (cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES 
    ('John Doe', 1234567890, 'john.doe@example.com', '123 Maple St', 'Springfield', 'IL', 'USA', '62701'),
    ('Jane Smith', 2345678901, 'jane.smith@example.com', '456 Oak St', 'Greenville', 'CA', 'USA', '95947'),
    ('Bob Johnson', 3456789012, 'bob.johnson@example.com', '789 Pine St', 'Fairview', 'TX', 'USA', '75069');

INSERT INTO invoices (date, car, cust_id, salesperson)
VALUES 
    ('2024-01-15', 1, 1, 1),
    ('2024-02-20', 2, 2, 2),
    ('2024-03-30', 3, 3, 3);
