update customers
set email = CASE
	when client_name = 'Pablo Picasso' then email = 'ppicasso@gmail.com'
    when client_name = 'Abraham Lincoln' then email = 'lincoln@us.gov'
    when client_name = 'Napoleón Bonaparte' then email = 'hola@napoleon.me'
end
where client_name in ('Pablo Picasso', 'Abraham Lincoln', 'Napoleón Bonaparte');