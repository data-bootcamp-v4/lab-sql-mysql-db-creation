Entities:

- car
	- car_id / primary_key / int / auto_increment
	- VIN (vehicle identity number) / varchar / unique / not_null
	- model_id (car_model.model_id) foreign_key / not null
	- year / year / not null
	- color / varchar
	- list_price / float /not_null

- car_model
	- model_id / primary_key / int / auto_increment
	- manufacturer / varchar / not null
	- model / varchar / not null
	- fuel_type / varchar
	- body_type (coupe, sedan, SUV) / varchar
	- transmission (manual, automata)/ varchar

- customer
	- id / int / primary_key / auto_increment
	- customer_id / varchar / not_null / a specific customer account number
	- first_name / varchar / not_null
	- last_name / varchar / not_null
	- email / varchar / not_null
	- primary_phone / varchar / not_null
	- additional_phone / varchar 

- customer_address
	- address_id / primary_key / int / auto_increment
	- customer_id (customer.customer_id) foreign_key
	- address_type (billing, shipping) / varchar / not_null
	- country / varchar / not null
	- state / varchar
	- city / varchar / not null
	- street_adress (str name + number, etc) / varchar / not_null
	- zip_code / varchar / not_null

- salesperson
	- id / int / primary_key / auto_increment
	- staff_id / varchar / unique primary_key (I assume this comes from an HR database.)
	- first_name / varchar / not_null
	- last_name / varchar / not_null
	- email / varchar / not_null
	- phone_number / varchar / not_null
	- store/branch_id (branch.branch_id) foreign_key

- branch (stores and branches)
	- id / int / primary_key / auto_increment
	- branch_id primary_key, int / auto_increment
	- branch_name / varchar /not_null
	- country / varchar / not null
	- state / varchar
	- city / varchar / not null
	- street_adress (str name + number, etc) / varchar / not_null
	- zip_code / varchar / not_null

- invoice
	- id / int / primary_key / auto_increment
	- invoice_nr unique / varchar / not_null
	- date / date / not_null
	- car_id (car.car_id) foreign_key
	- customer_id (customer.customer_id) foreign_key
	- staff_id (salesperson.staff_id) foreign_key
	- sale_price float / not_null

Relations between the Entities:
- car_model <--> car
	- 1:N
	- foreign_key:
		- car.model_id --> car_model.model_id
	- a model record (car_model) can be assigned to multiple car (model_id)
	- a car can be assigned to only one model

- salesperson <--> branch
	- 1:N
	- foreign_key: 
		- salesperson.branch_id --> branch.branch_id
	- multiple salesperson can work at a single branch
	- each salesperson is assigned to only one primary branch

- customer <--> customer_address
	- 1:N
	- foreign_key:
		- customer_address.customer_id --> customer.customer_id
	- multiple address can assigned to a customer (billing, shipping)
	- a customer_address can assigned only one customer

- customer <--> invoice
	- 1:N
	- foreign_key: 
		- invoice.customer_id --> customer.customer_id
	- a customer can have multiple invoices
	- an invoice can have only one customer

- salesperson <--> invoice
	- 1:N
	- foreign_key:
		- invoice.staff_id --> salesperson.staff_id
	- a salesperson can sell multiple car
	- an invoice can related only one salesperson

- car <--> invoice
	- 1:1
	- foreign_key:
		- invoice.car_id --> car.car_id (with UNIQUE constraint on `invoice.car_id`)
	- a unique car can only sell once, which means only has one invoice


| Table_1  | Relation   | Table_2   | Foreign key   | Business description   |
|---|---|---|---|---|
|car_model   | 1:N   | car   | car.model_id  | There are multiple units of a single model in stock.   |
|branch  | 1:N  | salesperson   | salesperson.branch_id   | Several salespeople work in a shop.  |
|customer | 1:N  | customer_address   | customer_address.customer_id  | A customer can have multiple addresses (billing/shipping).  |
|customer | 1:N  | invoice  | invoice.customer_id  |  A customer may purchase multiple cars over time. |
|salesperson   | 1:N   |invoice   |invoice.staff_id | A salesperson carries out multiple sales/invoices.  |
|car | 1:1   |invoice   |invoice.car_id   | A specific car is sold exactly once.  |





