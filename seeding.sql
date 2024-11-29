USE lab_mysql;

INSERT INTO customers (cust_id,cust_name,cust_address,cust_city,cust_zipcode,cust_state_province,cust_country)
VALUES (0, 'Pablo Picasso','8 rue des Lilas','Montbonot','78643','France','France'),
	   (2, 'Pabla Picasso','12 rue des Anemones','Metz','57000','France','France');
       
INSERT INTO cars (car_vin,car_year,car_color)
VALUES ('ZM8G7BEUQZ97IH46V','2020','blue'),
	   ('DAM41UDN3CHU2WVF6','2023','red');

INSERT INTO salepersons (staff_id,staff_name,staff_start_date)
VALUES ('JMLEPLOTE','Jean-Marie Leplote',20180208),
       ('PMOLIVE','Pierre Molive',20211212);
       
INSERT INTO invoices (salesperson_id,inv_date,car_id,customer_id)
VALUES ('JMLEPLOTE',20240708,45632,'ZM8G7BEUQZ97IH46V',O),
	   ('JMLEPLOTE',20240106,18750,'DAM41UDN3CHU2WVF6',2);