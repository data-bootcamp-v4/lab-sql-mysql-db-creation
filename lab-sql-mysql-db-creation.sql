-- 1)Creating a database folowing the example/guide covered in the Ironhack lessons (Unit 8 Module 3)
CREATE DATABASE IF NOT EXISTS `my_practice`;
USE `my_practice`;

-- 2)Creating a table
CREATE TABLE IF NOT EXISTS employees (
	id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    department VARCHAR(40), 
    salary FLOAT, 
    hire_date DATE
    );
    
-- 3) Inserting data into our newly created database
INSERT INTO employees (id, first_name, last_name, department, salary, hire_date)
VALUES
(1, 'David', 'Mora', 'IT', 3500.00, '2020-03-15'),
(2, 'Ana', 'Lopez', 'HR', 2800.00, '2019-07-01'),
(3, 'Carlos', 'Perez', 'Finance', 4200.00, '2021-11-20');

-- 4) Consulting data from our database
SELECT * FROM employees;

-- 5) Filtering data
SELECT * FROM employees WHERE department = 'IT'; 
SELECT * FROM employees WHERE salary > 3000; 
SELECT first_name, salary FROM employees ORDER BY salary DESC;

-- 6) Filtering data - extra
SELECT first_name, last_name, hire_date FROM employees WHERE department = 'HR';

-- 7) Update & Delete
UPDATE employees
SET salary = 3200
WHERE id = 2;

-- 7.2) Checking changes
SELECT * FROM employees;

-- 8) Deletion
DELETE FROM employees WHERE id = 3;

-- 8.2) Checking
SELECT * FROM employees;

-- 9) Creating Relationships
CREATE TABLE IF NOT EXISTS departments (
dept_id INT PRIMARY KEY, 
dept_name VARCHAR(40) NOT NULL
);

-- 9.2) Inserting departments
INSERT INTO departments (dept_id, dept_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');
-- 9.3) Checking output
SELECT * FROM departments;
-- 9.4) Connecting tables
ALTER TABLE employees
ADD COLUMN dept_id INT;

-- 10) Assigning departments to each employee
UPDATE employees SET dept_id = 1 WHERE id = 1; -- David -> IT
UPDATE employees SET dept_id = 2 WHERE id = 2; -- Ana -> HR 

-- 10.2) Creating Foreign Key
ALTER TABLE employees
ADD FOREIGN KEY (dept_id)
REFERENCES departments (dept_id)
ON DELETE SET NULL;