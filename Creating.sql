
-- Challenge 1 - Design the Database

CREATE DATABASE CarDealership;

CREATE TABLE cars (
    VIN VARCHAR(20) PRIMARY KEY,     -- Vehicle Identification Number
    manufacturer VARCHAR(50),        -- Manufacturer of the car
    model VARCHAR(50),               -- Model of the car
    year INT,                        -- Year of manufacture
    color VARCHAR(20)                -- Color of the car
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,   -- Auto-incrementing Customer ID
    name VARCHAR(100),                            -- Customer's name
    phone_number VARCHAR(20),                     -- Phone number
    email VARCHAR(100),                           -- Email address
    address VARCHAR(255),                         -- Address
    city VARCHAR(100),                            -- City
    state_province VARCHAR(100),                  -- State or Province
    country VARCHAR(100),                         -- Country
    zip_postal_code VARCHAR(20)                   -- Zip or Postal Code
);

CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,      -- Auto-incrementing Staff ID
    name VARCHAR(100),                            -- Salesperson's name
    store VARCHAR(100)                            -- Store name
);


CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,   -- Auto-incrementing Invoice Number
    date DATE,                                       -- Sale date
    VIN VARCHAR(20),                                 -- Foreign Key referencing Cars
    customer_id INT,                                 -- Foreign Key referencing Customers
    staff_id INT,                                    -- Foreign Key referencing Salespersons
    FOREIGN KEY (VIN) REFERENCES cars(VIN),          -- Establish foreign key constraint for VIN
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),  -- Establish foreign key constraint for customer_id
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)  -- Establish foreign key constraint for staff_id
);



