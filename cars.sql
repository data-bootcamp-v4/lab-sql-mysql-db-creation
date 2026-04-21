## Extra: Add "reference" --> stablish a relationship between both tables

DROP TABLE IF EXISTS students;
DROP DATABASE IF EXISTS ironhack;

CREATE DATABASE IF NOT EXISTS ironhack;
USE ironhack;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE students(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    course_id INT, 
    email VARCHAR(100) DEFAULT "not provided"
);

SELECT * FROM courses;

INSERT INTO courses(course_id, course_name)
VALUES (1, "Data"), 
		(2, "WebDev"),
        (3, "UX/UI");
        
INSERT INTO students (student_id, student_name, age, course_id, email)
VALUES 
    (2, "Suarez", 26, 1, "suarez_scp@ironhack.com"),
    (3, "Messi", 38, 3, "messi@ironhack.com"),
    (4, "Robben", 38, 3, DEFAULT),
    (5, "Cristiano", 41, 3, "cr7@cr7.cr7");

    
SELECT * FROM students;

# Schema

ALTER TABLE students DROP FOREIGN KEY fk_course;


ALTER TABLE students
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES courses(course_id);

# Schema

# Let's test the constraint
INSERT INTO students (student_id, student_name, age, course_id, email)
VALUES (8, "Suarez", 26, 3, "suarez_scp@ironhack.com");

SELECT * FROM courses WHERE course_id = 5;

CREATE DATABASE IF NOT EXISTS Stardealer;
USE Stardealer;

CREATE TABLE cars (
    vin INT PRIMARY KEY,
    color VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year int);
    
SELECT * FROM cars;
    
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
    
SELECT * FROM customers;

CREATE TABLE Salespersons(
	Salespersons_id INT PRIMARY KEY,
    Salespersons_name VARCHAR(100),
    phone_number VARCHAR(100),
    store_division VARCHAR(100),
    email VARCHAR(100) DEFAULT "not provided"
);

SELECT * FROM Salespersons;

CREATE TABLE Invoices(
	Invoice_number INT PRIMARY KEY,
    Salespersons_id INT,
    customer_id INT ,
    date VARCHAR(100),
    vin INT,
    CONSTRAINT fk_Salesperson FOREIGN KEY (Salespersons_id)
        REFERENCES Salespersons(Salespersons_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
	CONSTRAINT fk_vin FOREIGN KEY (vin)
        REFERENCES cars(vin)
        );

