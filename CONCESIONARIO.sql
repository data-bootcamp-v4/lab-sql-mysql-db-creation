CREATE DATABASE concesionario_coches;
USE concesionario_coches;


CREATE TABLE coche (
    id_coches VARCHAR(20) PRIMARY KEY,
    fabricante VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    color VARCHAR(20)
);

DROP TABLE IF EXISTS clientes; 

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,         
    nombre VARCHAR(100) NOT NULL,                      
    telefono VARCHAR(20),                              
    correo_electronico VARCHAR(100),           
    direccion VARCHAR(150),                            
    ciudad VARCHAR(50),                                
    estado_provincia VARCHAR(50),                      
    pais VARCHAR(50),                                  
    codigo_postal VARCHAR(10)                          
);



CREATE TABLE vendedores (
    id_personal INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    tienda VARCHAR(50),
    PRIMARY KEY (id_personal)
);

DROP TABLE IF EXISTS factura; 

CREATE TABLE factura (
    num_factura VARCHAR(15) PRIMARY KEY,
    fecha DATE,
    id_cliente INT,
    id_coche VARCHAR(20),
    id_personal INT NOT NULL,  
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_coche) REFERENCES coche(id_coches),
    FOREIGN KEY (id_personal) REFERENCES vendedores(id_personal)
);

