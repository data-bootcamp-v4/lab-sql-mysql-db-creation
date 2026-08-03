CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP DATABASE IF EXISTS car_dealership;
CREATE DATABASE car_dealership;
USE car_dealership;
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Customers (
    Customer_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    Name        VARCHAR(255) NOT NULL,
    Email       VARCHAR(255),
    Phone       VARCHAR(255),
    Address     VARCHAR(255),
    Zip_post    VARCHAR(255)
);

CREATE TABLE Cars (
    Car_ID       BIGINT AUTO_INCREMENT PRIMARY KEY,
    VIN          VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    Model        VARCHAR(255) NOT NULL,
    Year         SMALLINT NOT NULL,
    Color        VARCHAR(50),
    Price        DECIMAL(10,2) NOT NULL,
    Status       ENUM('Available','Sold','Reserved') NOT NULL
);

CREATE TABLE Salespersons (
    Salesperson_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    Name           VARCHAR(255) NOT NULL,
    Staff_ID       BIGINT NOT NULL,
    Store_ID       BIGINT
);

CREATE TABLE Invoices (
    Invoice_ID      BIGINT AUTO_INCREMENT PRIMARY KEY,
    Invoice_Number  VARCHAR(255) NOT NULL,
    Date            DATETIME NOT NULL,
    Customer_ID     BIGINT NOT NULL,
    Car_ID          BIGINT NOT NULL,
    Salesperson_ID  BIGINT NOT NULL,
    Final_Price     DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_invoices_customer
        FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),

    CONSTRAINT fk_invoices_car
        FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID),

    CONSTRAINT fk_invoices_salesperson
        FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID)
);



