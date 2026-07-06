USE lab_mysql;
INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES ('Volkswagen', 'Hatchback', 2010 , 'black'),
       ('Tesla', 'Coupe', 2005, 'red'),
       ('Renault', 'Van', 1999, 'grey');
       
INSERT INTO customers (customer_id, customer_name, phone_number, email, address, city, ZIP)
VALUES ('Jessica Miles', 15736980113, 'jessica.miles@email.com' , 'Kastanienallee 25', 'Berlin', 10435),
       ('Jakob Schindler', 15760244926, 'jakob.schindler@email.com', 'Kollwitzstr. 35', 'Berlin', 10405),
       ('Hans Van der Dijs', 15720164882, 'hans.v.Dijs@email.com', 'Turmstr. 20', 'Berlin', 10559);
       
   INSERT INTO sales_persons (staff_id, sales_person_name, store)
VALUES ('Lisa Kiefer', 'Volkswagen Automobile Berlin Franklinstr. 5, 10587 Berlin'),
       ('Elena Gutterberg', 'Tesla Center Berlin Reinickendorf Roedernallee 1-7, 13407 Berlin'),
       ('Tobias Eriksson', 'Renault Berlin Tempelhof Germaniastr 145-149, 12099 Berlin');
       
       INSERT INTO invoices (invoice_number, date, car, customer, sales_person)
VALUES (1-03-2022),
       (25-09-2025),
       (16-07-2024);
       
       