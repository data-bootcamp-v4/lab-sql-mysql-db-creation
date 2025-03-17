use lab_mysql;

select * from customer;

update customer
set email = 'ppicasso@gmail.com'
where customer_name = 'Pablo Picasso';

update customer
set email = 'lincoln@us.gov'
where customer_name = 'Abraham Lincoln';