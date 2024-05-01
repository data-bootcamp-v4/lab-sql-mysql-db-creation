SELECT * FROM lab_mysql.customers;

update customers
set email = "ppicasso@gmail.com"
where customerid = 1;

update customers
set email = "lincoln@us.gov"
where customerid = 2;

update customers
set email = "hello@napoleon.me"
where customerid = 3;