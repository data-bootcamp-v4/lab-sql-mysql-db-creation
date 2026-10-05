use lab_mysql;
update customers set cust_email = "ppicasso@gmail.com"
where id = 1;
update customers set cust_email = "lincoln@us.gov"
where id = 2;
update customers set cust_email = "hello@napoleon.me"
where id = 3;
select * from customers;