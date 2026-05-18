USE lab_myswl;
INSERT INTO users (id, name, email)
VALUES (1, 'Pablo Picasso','ppicasso@gmail.com'),
(2,'Abraham Lincoln'	,'lincoln@us.gov'),
(3, 'Napoléon Bonaparte', 'hello@napoleon.me'),
(4, 'John Doe', 'johndoe@example.com'),
(5, 'Jane Smith', 'janesmith@example.com'),
(6, 'Bob Johnson', 'bobjohnson@example.com');

TRUNCATE TABLE users;
select * from users;
