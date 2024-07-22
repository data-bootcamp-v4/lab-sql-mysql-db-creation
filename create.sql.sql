-- Active: 1721292127253@@127.0.0.1@3306@lab_mysql
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    Car_ID INT, AUTO_INCREMENT
    VIN VARCHAR(50), 
    Manufacturer VARCHAR (50), 
    Model VARCHAR(30), 
    Year_car INT, 
    Color VARCHAR(20));
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    Cust_ID INT, AUTO_INCREMENT
    Name VARCHAR(30), 
    Phone VARCHAR(30), 
    Email VARCHAR(50), 
    Adress_cust VARCHAR(50), 
    City VARCHAR(20), 
    State_province VARCHAR(20), 
    ip_code VARCHAR(20));
DROP TABLE IF EXISTS Sales_person;
CREATE TABLE Sales_person (
    Staff_id INT, AUTO_INCREMENT
    Name VARCHAR(20), 
    Store VARCHAR(20));
DROP TABLE IF EXISTS Invoice;
CREATE TABLE Invoice (
    Inv_number INT, 
    date_ DATE, 
    Car_id INT, 
    Customer_id INT, 
    Staff_id INT);