CREATE DATABASE IF NOT EXISTS lab_mysql1;
USE lab_mysql1;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin VARCHAR(50) PRIMARY KEY,
    color VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year int);
    
    DROP TABLE IF EXISTS customers;
    CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone_number VARCHAR(100),
    customer_address VARCHAR(100), 
    city VARCHAR(100),
    state_province VARCHAR(100),
    country VARCHAR(100),
    zip_postal_code INT,
    email VARCHAR(100) DEFAULT "not provided"
);
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons(
	Salespersons_id INT PRIMARY KEY,
    Salespersons_name VARCHAR(100),
    phone_number VARCHAR(100),
    store_division VARCHAR(100),
    email VARCHAR(100) DEFAULT "not provided"
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices(
	Invoice_number INT PRIMARY KEY,
    Salespersons_id INT,
    customer_id INT ,
    date VARCHAR(100),
    vin VARCHAR(50),
    CONSTRAINT fk_Salesperson FOREIGN KEY (Salespersons_id)
        REFERENCES Salespersons(Salespersons_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
	CONSTRAINT fk_vin FOREIGN KEY (vin)
        REFERENCES cars(vin));
        
INSERT INTO cars (vin, color, manufacturer,model,year)
VALUES ('3K096I98581DHSNUP',"Blue","Volkswagen","Tiguan",2019),
('ZM8G7BEUQZ97IH46V','Red','Peugeot','Rifter',2019),
('RKXVNNIHLVVZOUB4M','White','Ford','Fusion',2018),
('HKNDGS7CU31E9Z7JW','Silver','Toyota','RAV4',2018),
('DAM41UDN3CHU2WVF6','Gray','Volvo','V60',2019),
('DAM41UDN3CHU2WVF7','Gray','Volvo','V60 Cross Country',2019);

INSERT INTO customers (customer_id, customer_name, phone_number,customer_address,city,state_province,country,zip_postal_code,email)
VALUES (10001,"Pablo Picasso","+34 636 17 63 82","Paseo de la Chopera, 14","Madrid","Madrid","Spain",28045,Null),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130', NULL),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008', NULL);

INSERT INTO Salespersons(Salespersons_id,Salespersons_name,phone_number,store_division,email)
VALUES (00001,"Petey Cruiser",null,"Madrid",Null),
(00002,"Anna Sthesia",NULL,"Barcelona",NULL),
(00003,"Paul Molive",NULL,"Berlin",NULL),
(00004,"Gail Forcewind",NULL,"Paris",NULL),
(00005,"Paige Turner",NULL,"Mimia",NULL),
(00006,"Bob Frapples",NULL,"Mexico City",NULL),
(00007,"Walter Melon",NULL,"Amsterdam",NULL),
(00008,"Shonda Leer",NULL,"São Paulo",NULL);

INSERT INTO Invoices(Invoice_number,Salespersons_id,customer_id,date,vin)
VALUES (852399038,00003,10001,"22-08-2018","3K096I98581DHSNUP"),
(731166526,00005,20001,"31-12-2018","ZM8G7BEUQZ97IH46V"),
(271135104,00007,30001,"22-01-2019","DAM41UDN3CHU2WVF7");

SELECT * FROM Invoices;
