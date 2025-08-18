USE lab_mysql;

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

-- After updates:
SELECT cust_name, cust_email FROM customers;

-- After delete:
SELECT id, vin, manufacturer, model FROM cars ORDER BY id;
