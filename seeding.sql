
use users;
	CREATE TABLE `user_info`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL);
INSERT INTO user_info (id, name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');
       
select*from users.user_info;