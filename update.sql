UPDATE Customers 
SET email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso'
and id = 1;
UPDATE Customers 
SET email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln'
and id = 2;
UPDATE Customers 
SET email = 'hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte'
and id = 3;

select * from cars