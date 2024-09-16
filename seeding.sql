-- Insertar valores en tabla coches
Insert into coche ( id,VIN, fabricante, modelo, año, color)
Values ( 1,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'azul'),
	   ( 2,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Rojo'),
       ( 3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'Blanco'),
       ( 4,'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Plata'),
       ( 5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gris'),
       ( 6, 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', '2019', 'Gris');
       

   Insert into cliente (id, Id_cliente, nombre, telefono, email, direccion, ciudad, estado_provincia, pais, codigo_postal)
   values (1,'10001', 'Pablo Picasso', '+34636176382', '','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España','28045' ),
          (2, '20001','Abraham Lincoln', '+13059077086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
          (3, '30001', 'Napoléon Bonaparte', '+33179754000','', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'Francia','75008');
          
    Insert into vendedor (id, id_vendedor, nombre, tienda)
    values (1, '00001',	'Petey Cruiser', 'Madrid'),
		   (2, '00002', 'Anna Sthesia', 'Barcelona'),
           (3, '00003',	'Paul Molive', 'Berlin'),
           (4, '00004',	'Gail Forcewind', 'Paris'),
           (5, '00005',	'Paige Turner',	'Miami'),
           (6, '00006',	'Bob Frapples',	'Mexico City'),
           (7, '00007',	'Walter Melon',	'Amsterdam'),
           (8, 	'00008', 'Shonda Leer',	'São Paulo');
           
  Insert into factura (id, numero_factura, fecha, VIN, id_cliente,id_vendedor)
  values (1,'852399038', '2018-08-22','3K096I98581DHSNUP', 1, 00003 ),
         (2, '731166526', '2018-12-31',	'RKXVNNIHLVVZOUB4M', 3, 00005),
         (3, '271135104','2019-01-22',	'ZM8G7BEUQZ97IH46V', 2, 00007);
           