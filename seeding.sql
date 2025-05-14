INSERT INTO clientes (id_cliente, nombre, telefono, email, direccion, ciudad, estado_provincia, pais, codigo_postal)
VALUES 
('C001', 'Ana Martínez', '600123456', 'ana@example.com', 'Calle Falsa 123', 'Valencia', 'Valencia', 'España', '46001'),
('C002', 'Luis Pérez', '611987654', 'luis@example.com', 'Av. del Puerto 45', 'Valencia', 'Valencia', 'España', '46022'),
('C003', 'Marta Gómez', '622111222', 'marta@example.com', 'C/ Mayor 7', 'Madrid', 'Madrid', 'España', '28001');

INSERT INTO automoviles (vin, fabricante, modelo, anio, color, id_cliente)
VALUES
('1HGCM82633A004352', 'Honda', 'Civic', 2020, 'Rojo', 'C001'),
('1HGCM82633A004353', 'Toyota', 'Corolla', 2021, 'Negro', 'C002'),
('1HGCM82633A004354', 'Ford', 'Focus', 2019, 'Azul', 'C001');

INSERT INTO vendedores (id_personal, nombre, tienda)
VALUES
('V001', 'Carlos Ruiz', 'Tienda Norte'),
('V002', 'Elena Torres', 'Tienda Centro');

INSERT INTO facturas (fecha, vin, id_cliente, id_personal)
VALUES
('2024-01-15', '1HGCM82633A004352', 'C001', 'V001'),
('2024-02-10', '1HGCM82633A004353', 'C002', 'V002'),
('2024-03-05', '1HGCM82633A004354', 'C001', 'V001');
