USE lab_mysql;


INSERT INTO  car_table(VIN, manufacturer)

VALUES ("AB42XK", "Toyota"), 
		("JT781PQ", "Ford"),
		("MZ09RL", "BMW");

SELECT * FROM car_table;

INSERT INTO customers_table (customer_id, name, phone_number, email)
VALUES (1001, 'John Smith', '+1-555-123-4567', 'john.smith@email.com'),
		(1002, 'Maria Silva', '+351-912-345-678', 'maria.silva@email.com'),
		(1003, 'Lucas Martin', '+33-6-12-34-56-78', 'lucas.martin@email.com');
	
SELECT * FROM customers_table;

INSERT INTO salespersons_table (staff_id, name, store_name)
VALUES (501, 'Sofia Martins', 'City Car Sales'),
		(502, 'Daniel Brown', 'Auto Plaza'),
		(503, 'Olivia Garcia', 'Elite Vehicles');

SELECT * FROM salespersons_table;

INSERT INTO invoices_table (VIN, invoice_number, date, customer_id, staff_id)
VALUES ('AB42XK', 9001, '2025-01-15', 1001, 501),
		('JT781PQ', 9002, '2025-02-03', 1002, 502),
		('MZ09RL', 9003, '2025-03-21', 1003, 503);
        
SELECT * FROM invoices_table;

ALTER TABLE invoices_table
ADD CONSTRAINT fk_car_table
FOREIGN KEY (VIN)
REFERENCES car_table(VIN);

ALTER TABLE invoices_table
ADD CONSTRAINT fk_customers_table
FOREIGN KEY (customer_id)
REFERENCES customers_table(customer_id);

ALTER TABLE invoices_table
ADD CONSTRAINT fk_salespersons_table
FOREIGN KEY (staff_id)
REFERENCES salespersons_table(staff_id);

