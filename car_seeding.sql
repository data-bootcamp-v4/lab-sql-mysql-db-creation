USE car_dealership;

INSERT INTO cars (car_id, vin, manufacturer, model, car_year, color)
VALUES (1, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(2, "1A2B3C4D5E6F7G8H9I", "Toyota", "Corolla", 2020, "Red"),
(3, "J5K6L7M8N9O0P1Q2R", "Ford", "Fusion", 2018, "Silver"),
(4, "S3T4U5V6W7X8Y9Z0A", "Honda", "Civic", 2021, "White"),
(5, "B1C2D3E4F5G6H7I8J", "Chevrolet", "Camaro", 2017, "Black"),
(6, "K9L8M7N6O5P4Q3R2S", "Hyundai", "Sonata", 2022, "Gray"),
(7, "T1U2V3W4X5Y6Z7A8B", "BMW", "X5", 2019, "Silver"),
(8, "C9D8E7F6G5H4I3J2K", "Mercedes-Benz", "E-Class", 2023, "Black"),
(9, "L1M2N3O4P5Q6R7S8T", "Audi", "A4", 2021, "Blue"),
(10, "U9V8W7X6Y5Z4A3B2C", "Tesla", "Model 3", 2022, "Red");

SELECT *
FROM cars;

INSERT INTO customers (id_customer, cust_name, cust_email, phone, address, city, state, country, zip_code)
VALUES (00001, "Pepe Dominguez", "pepedom@hotmail.es", "+34-664-587-214" , "Calle Popurri n2", "Jerez", "Cádiz", "Spain", "11408"),
(00002, "Maria Sanchez", "mariasan@gmail.com", "+34-622-345-678" , "Avenida Primavera 123", "Sevilla", "Sevilla", "Spain", "41001"),
(00003, "John Smith", "jsmith@example.com", "+1-123-456-7890" , "123 Main Street", "Anytown", "CA", "USA", "12345"),
(00004, "Emma Johnson", "emma.j@example.com", "+44-20-1234-5678" , "45 Elm Street", "London", NULL, "UK", "W1T 1HD"),
(00005, "Jean Dupont", "jean.dupont@example.fr", "+33-6-12-34-56-78" , "Rue de la Paix 7", "Paris", NULL, "France", "75001"),
(00006, "Luis Garcia", "luisgarcia@example.com", "+34-666-777-888" , "Calle Sol 15", "Madrid", "Madrid", "Spain", "28001"),
(00007, "Anna Müller", "anna.mueller@example.de", "+49-30-1234-5678" , "Hauptstraße 42", "Berlin", NULL, "Germany", "10115"),
(00008, "Marco Rossi", "marco.rossi@example.it", "+39-02-9876-5432" , "Via Roma 10", "Rome", NULL, "Italy", "00185"),
(00009, "Sophie Martin", "sophiemartin@example.com", "+33-1-23-45-67-89" , "Boulevard Saint-Germain 28", "Paris", NULL, "France", "75006"),
(00010, "Chen Wei", "chenwei@example.cn", "+86-10-1234-5678" , "123 Chang'an Avenue", "Beijing", NULL, "China", "100020"); 

SELECT *
FROM customers;

INSERT INTO invoices (invoice_id, invoice_date, car, customer, salesperson)
VALUES (00001, "2023-12-29", "Tiguan", "Pepe Rodriguez", "Juan Pérez"),
(00002, '2023-11-15', 'Corolla', 'Maria Sanchez', 'Pedro González'),
(00003, '2024-01-03', 'Fusion', 'John Smith', 'Emily Johnson'),
(00004, '2023-10-20', 'Civic', 'Emma Johnson', 'Michael Brown'),
(00005, '2023-09-28', 'Camaro', 'Jean Dupont', 'Sophie Martin'),
(00006, '2023-08-12', 'Sonata', 'Luis Garcia', 'Ana López'),
(00007, '2023-07-05', 'X5', 'Anna Müller', 'Thomas Schmidt'),
(00008, '2023-06-19', 'E-Class', 'Marco Rossi', 'Giuseppe Russo'),
(00009, '2023-05-22', 'A4', 'Sophie Martin', 'Pierre Dubois'),
(00010, '2023-04-17', 'Model 3', 'Chen Wei', 'Li Wei');

SELECT *
FROM invoices;

INSERT INTO salesperson (salesman_id, salesman_name, store)
VALUES (00001, "Juan Pérez", "Leganes"),
(00002, "Pedro González", "Getafe"),
(00003, "Emily Johnson", "Alcorcón"),
(00004, "Michael Brown", "Toledo"),
(00005, "Sophie Martin", "Madrid"),
(00006, "Ana López", "Barcelona"),
(00007, "Thomas Schmidt", "Berlin"),
(00008, "Giuseppe Russo", "Rome"),
(00009, "Pierre Dubois", "Paris"),
(00010, "Li Wei", "Beijing");

SELECT *
FROM salesperson;