CREATE DATABASE users;

USE users;

CREATE TABLE users(
id int (50) PRIMARY KEY,
user_name varchar(100),
email varchar(100)
);


INSERT INTO users (id, user_name, email)
VALUES (1 , 'John Doe', 'johndoe@example.com'),
       (2 , 'Jane Smith', 'janesmith@example.com'),
       (3 , 'Bob Johnson', 'bobjohnson@example.com');