# Database Design

## cars

id PRIMARY KEY  
vin  
manufacturer  
model  
year  
color  

## customers

id PRIMARY KEY  
cust_id  
cust_name  
cust_phone  
cust_email  
cust_address  
cust_city  
cust_state  
cust_country  
cust_zipcode  

## salespersons

id PRIMARY KEY  
staff_id  
name  
store  

## invoices

id PRIMARY KEY  
invoice_number  
date  
car FOREIGN KEY references cars(id)  
customer FOREIGN KEY references customers(id)  
salesperson FOREIGN KEY references salespersons(id)  

## Relationships

cars(id) connects to invoices(car)  
customers(id) connects to invoices(customer)  
salespersons(id) connects to invoices(salesperson)  

The invoices table connects each sale to one car, one customer, and one salesperson.