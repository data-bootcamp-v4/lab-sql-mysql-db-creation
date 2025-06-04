SET SQL_SAFE_UPDATES = 0;
DELETE FROM customers;
INSERT INTO customers (cust_id, cust_name,cust_phone,cust_email,cust_address,cust_city,cust_state,cust_count,cust_zipcode)
VALUES ('10001', 'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),
       ('20001', 'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130'),
       ('30001', 'Napoléon Bonaparte','+33 1 79 75 40 00','-','	40 Rue du Colisée','Paris','Île-de-France','France','75008');
SELECT * FROM customers;

INSERT FROM 