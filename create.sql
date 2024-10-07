DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customers_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_ID VARCHAR(30),
    cust_name VARCHAR(30),
    cust_phone VARCHAR(50),
    cust_email VARCHAR(50),
    cust_address VARCHAR(50),
    cust_city VARCHAR(45),
    cust_state VARCHAR(45),
    cust_country VARCHAR(45),
    cust_postcode VARCHAR(45)
);
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    salespersons_id INT AUTO_INCREMENT PRIMARY KEY,
    sales_ID VARCHAR(50),
    sales_name VARCHAR(45),
    sales_store VARCHAR(45)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    invoices_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    invoice_date DATETIME,

    customer INT,  -- 外键列
    sales_person INT,  -- 外键列
    CONSTRAINT fk_Customers FOREIGN KEY (customer) REFERENCES Customers(customers_id),
    CONSTRAINT fk_Salespersons FOREIGN KEY (sales_person) REFERENCES Salespersons(salespersons_id)
);

DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    cars_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    manufacturer VARCHAR(30),
    model VARCHAR(15),
    produce_year INT,
    color VARCHAR(20),
    invoice_id INT, -- 外键列
    CONSTRAINT fk_Invoices FOREIGN KEY (invoice_id) REFERENCES Invoices(invoices_id)
);

