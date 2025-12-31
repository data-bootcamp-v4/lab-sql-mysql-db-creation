INSERT INTO car (VIN, manufacturer, model, year, color)
VALUES 
    ('1HGCM82633A004352', 'Toyota', 'Camry', 2020, 'Blue'),
    ('1HGCM82633A004353', 'Honda', 'Civic', 2019, 'Red'),
    ('1HGCM82633A004354', 'Ford', 'Mustang', 2021, 'Black');
INSERT INTO customer (name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES 
    ('Alice Johnson', '123-456-7890', 'alice@example.com', '123 Elm St', 'Metropolis', 'CA', 'USA', '90210'),
    ('Bob Smith', '987-654-3210', 'bob@example.com', '456 Oak St', 'Smallville', 'TX', 'USA', '75901'),
    ('Charlie Brown', '456-789-0123', 'charlie@example.com', '789 Pine St', 'Gotham', 'NY', 'USA', '10001');
INSERT INTO salesperson (name, store)
VALUES 
    ('Emily Davis', 'Downtown Branch'),
    ('Michael Lee', 'Uptown Branch'),
    ('Sarah Connor', 'Suburb Branch');
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES 
    ('INV001', '2022-10-01', 1, 1, 1),
    ('INV002', '2022-10-02', 2, 2, 2),
    ('INV003', '2022-10-03', 3, 3, 3);
COMMIT;