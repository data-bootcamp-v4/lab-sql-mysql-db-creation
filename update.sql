SET SQL_SAFE_UPDATES = 0;

update customers
set cust_email = 'ppicasso@gmail.com'
where cust_name = 'Pablo Picasso';

update customers
set cust_email = 'lincoln@us.gov'
where cust_name = 'Abraham Lincoln';

update customers
set cust_email = 'hello@napoleon.me'
where cust_name = 'Napoléon Bonaparte';

select * from customers;