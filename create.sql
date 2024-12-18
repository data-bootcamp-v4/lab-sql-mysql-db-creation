
CREATE TABLE Cars (model VARCHAR(20), VIN CHAR(6), year_model DATE, color VARCHAR(10));

SHOW TABLES;
DESCRIBE Cars;
CREATE TABLE Sales_People (Staff_ID CHAR(10), Peron_Name VARCHAR(20), Store_Location VARCHAR(20));
SHOW TABLES;
CREATE TABLE Customers (ID CHAR (10), Customer_Name VARCHAR(20), Phone_number CHAR(10), Email VARCHAR(20), Address VARCHAR(20), City VARCHAR (20));
CREATE TABLE Invoices (ID CHAR (10), Customer_Name VARCHAR(20), Sales_Person VARCHAR(20), Date_of_Year DATE, Car VARCHAR(20));
SHOW TABLES;