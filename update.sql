UPDATE customers 
SET email = "ppicasso@gmail.com"
WHERE name = "Pablo Picasso";

VALUES ("Pablo Picasso", "ppicasso@gmail.com"),
		("Abraham Lincoln", "lincoln@us.gov"),
        ("Napoléon Bonaparte", "hello@napoleon.me");

ON DUPLICATE KEY UPDATE
email = VALUES(email),
name = VALUES(name);
    
