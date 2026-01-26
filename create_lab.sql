DROP DATABASE IF EXISTS create_lab_sql;
CREATE DATABASE create_lab_sql;


USE create_lab_sql;

CREATE TABLE create_lab_sql.Cars (
	VIN INT NOT NULL,
    Manufacturer VARCHAR(30),
    Model ENUM('Opel', 'Citroen', 'Skoda'),
    Years INT,
    Color VARCHAR(30),
    Price FLOAT,
    PRIMARY KEY (VIN)
);
    
CREATE TABLE create_lab_sql.Customers (
	CustomerID INT NOT NULL,
    Name_Surname VARCHAR(50) NOT NULL,
    Phone_Number CHAR(15)NOT NULL,
    Email VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State_or_Province VARCHAR(100),
    Postal_code VARCHAR(20),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE create_lab_sql.Salespersons (
	StaffID INT NOT NULL,
    Name_Surname VARCHAR(100) NOT NULL,
    Store ENUM('Madrid', 'Valencia', 'Barcelona'),
    PRIMARY KEY (StaffID)
);

CREATE TABLE create_lab_sql.Invoices (
	Invoice_number INT AUTO_INCREMENT NOT NULL,
    Date_invoice DATE NOT NULL,
    Car INT NOT NULL,
    CustomerID INT NOT NULL,
    StaffID INT NOT NULL,
    FOREIGN KEY (Car) REFERENCES Cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID),
    PRIMARY KEY (Invoice_number)
    
);

