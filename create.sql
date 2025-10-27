CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS coches;

CREATE TABLE IF NOT EXISTS coches(
		identificacion INT NOT NULL AUTO_INCREMENT,
        id_coche_VIN VARCHAR(50) NOT NULL,
        fabricante VARCHAR (30),
        modelo VARCHAR (30),
        año INT,
        color VARCHAR (30),     
        PRIMARY KEY(identificacion)
);


DROP TABLE IF EXISTS clientes;

CREATE TABLE IF NOT EXISTS clientes(
	identificacion INT NOT NULL AUTO_INCREMENT,
    id_cliente INT,
    nombre VARCHAR (100),
    telefono VARCHAR (20),
    email VARCHAR (50),
    direccion VARCHAR (100),
    ciudad VARCHAR (30),
    estado VARCHAR (30),
    pais VARCHAR (20),
    codigo_postal VARCHAR (10),
    PRIMARY KEY(identificacion)
);    
    
	
DROP TABLE IF EXISTS vendedores;

CREATE TABLE IF NOT EXISTS vendedores(
	identificacion INT NOT NULL AUTO_INCREMENT,
    id_personal INT,
    nombre VARCHAR (100),
    almacen VARCHAR (50),
    PRIMARY KEY(identificacion)
);    

DROP TABLE IF EXISTS facturas;

CREATE TABLE IF NOT EXISTS facturas(
	identificacion INT NOT NULL AUTO_INCREMENT,
    numero_factura INT,
    fecha DATE,
    coche INT NOT NULL,
    cliente INT NOT NULL,
    vendedor INT NOT NULL,
        PRIMARY KEY(identificacion),
		FOREIGN KEY(coche) REFERENCES coches(identificacion),
        FOREIGN KEY(cliente) REFERENCES clientes(identificacion),
        FOREIGN KEY(vendedor) REFERENCES vendedores(identificacion)
);  

SELECT *
FROM clientes

	