-- Desafío 1: Diseñar la base de datos
-- Crear cuatro tablas: cars, customers, salespersons y invoices.
USE ih_intro_sql;
-- La información mínima a registrar se describe a continuación:
-- Automóviles: el número de identificación del vehículo (VIN), el fabricante, el modelo, el año y el color de los automóviles en el inventario de su empresa.
-- Clientes : por ejemplo, el ID del cliente, nombre, número de teléfono, correo electrónico, dirección, ciudad, estado/provincia, país y código postal de los clientes.
-- Vendedores , por ejemplo, identificación del personal, nombre y tienda en su empresa.
-- Facturas , por ejemplo, el número de factura, la fecha, el automóvil, el cliente y el vendedor relacionado con cada venta de automóvil.
-- También debe crear una columna de identificación numérica con incremento automático utilizando la AUTO_INCREMENTfunción de MySQL.

-- Tabla Automóviles

CREATE TABLE automoviles (
    vin VARCHAR(17) PRIMARY KEY, -- VIN es único por automóvil
    fabricante VARCHAR(50),
    modelo VARCHAR(50),
    anio YEAR,
    color VARCHAR(30)
);

-- Tabla Clientes
CREATE TABLE clientes (
    id_cliente VARCHAR(10) PRIMARY KEY, -- 
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(255),
    ciudad VARCHAR(50),
    estado_provincia VARCHAR(50),
    pais VARCHAR(50),
    codigo_postal VARCHAR(10)
);

-- Tabla Vendedores
CREATE TABLE vendedores (
    id_personal VARCHAR(10) PRIMARY KEY, -- No es AUTO_INCREMENT
    nombre VARCHAR(100),
    tienda VARCHAR(100)
);

-- Tabla Facturas
CREATE TABLE facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY, -- ID numérico con incremento automático
    fecha DATE,
    vin VARCHAR(17), -- Foreign key a automóviles
    id_cliente VARCHAR(10), -- Foreign key a clientes
    id_personal VARCHAR(10), -- Foreign key a vendedores
    FOREIGN KEY (vin) REFERENCES automoviles(vin),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_personal) REFERENCES vendedores(id_personal)
);

ALTER TABLE automoviles
ADD COLUMN id_cliente VARCHAR(10),
ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

