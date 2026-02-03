USE lab_msql;

INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
('1HGCM82633A004352', 'Toyota', 'Corolla', 2020, 'Prata'),
('2HGCM82633A004353', 'Honda', 'Civic', 2021, 'Preto'),
('3HGCM82633A004354', 'Ford', 'Focus', 2019, 'Branco');

INSERT INTO customers (customer_code, name, phone, email, address, city, state, country, postal_code)
VALUES
('C001', 'João Silva', '11999999999', 'joao@email.com', 'Rua A, 123', 'São Paulo', 'SP', 'Brasil', '01000-000'),
('C002', 'Maria Oliveira', '21988888888', 'maria@email.com', 'Rua B, 456', 'Rio de Janeiro', 'RJ', 'Brasil', '20000-000'),
('C003', 'Carlos Santos', '31977777777', 'carlos@email.com', 'Rua C, 789', 'Belo Horizonte', 'MG', 'Brasil', '30000-000');


INSERT INTO salespersons (employee_code, name, store)
VALUES
('E001', 'Ana Costa', 'downtown store'),
('E002', 'Pedro Lima', 'north store'),
('E003', 'Fernanda Alves', 'south store');

INSERT INTO invoices (invoice_date, car_id, customer_id, salesperson_id)
VALUES
('2024-01-10', 1, 1, 1),
('2024-01-15', 2, 2, 2),
('2024-01-20', 3, 3, 3);

SELECT *
FROM customers;
