INSERT INTO customers (CustomerID,`Name`, Phone, Email, Address, City, State, Country, `Postal Code`) VALUES
(1, 'Marco Rossi', '+39 02 1234567', 'marco.rossi@email.it', 'Via Roma 12', 'Milano', 'MI', 'Italy', '20121'),
(2, 'Laura Bianchi', '+39 06 9876543', 'laura.bianchi@email.it', 'Via Milano 45', 'Roma', 'RM', 'Italy', '00187'),
(3, 'Luca Ferrari', '+39 051 555123', 'luca.ferrari@email.it', 'Via Indipendenza 8', 'Bologna', 'BO', 'Italy', '40121'),
(4, 'Giulia Russo', '+39 081 444555', 'giulia.russo@email.it', 'Corso Umberto I 120', 'Napoli', 'NA', 'Italy', '80138'),
(5, 'Matteo Esposito', '+39 011 333221', 'matteo.esposito@email.it', 'Via Po 33', 'Torino', 'TO', 'Italy', '10124'),
(6, 'Sofia Moretti', '+39 055 777889', 'sofia.moretti@email.it', 'Via Calzaiuoli 15', 'Firenze', 'FI', 'Italy', '50122'),
(7, 'Alessandro Conti', '+39 041 999000', 'alessandro.conti@email.it', 'Calle Larga San Marco 404', 'Venezia', 'VE', 'Italy', '30124'),
(8, 'Francesca De Luca', '+39 091 112233', 'francesca.deluca@email.it', 'Via Libertà 88', 'Palermo', 'PA', 'Italy', '90143'),
(9, 'Davide Bruno', '+39 010 443322', 'davide.bruno@email.it', 'Via XX Settembre 5', 'Genova', 'GE', 'Italy', '16121'),
(10, 'Elena Rizzo', '+39 070 667788', 'elena.rizzo@email.it', 'Via Roma 200', 'Cagliari', 'CA', 'Italy', '09123');

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES
(1001, 'Fiat', 'Panda', 2020, 'Rosso'),
(1002, 'Alfa Romeo', 'Giulia', 2022, 'Nero'),
(1003, 'Volkswagen', 'Golf', 2019, 'Grigio'),
(1004, 'Toyota', 'Yaris', 2021, 'Bianco'),
(1005, 'Ford', 'Fiesta', 2018, 'Blu'),
(1006, 'Renault', 'Clio', 2020, 'Giallo'),
(1007, 'BMW', 'Serie 1', 2023, 'Nero'),
(1008, 'Audi', 'A3', 2021, 'Grigio'),
(1009, 'Peugeot', '208', 2022, 'Verde'),
(1010, 'Mercedes-Benz', 'Classe A', 2020, 'Bianco');

INSERT INTO salesperson (`Staff ID`, `Name`, `Store`) VALUES
(101, 'Giovanni Verdi', 'Milano Centro'),
(102, 'Chiara Galli', 'Roma Nord'),
(103, 'Andrea Romano', 'Bologna Fiera'),
(104, 'Marta Costa', 'Napoli Chiaia'),
(105, 'Stefano Fontana', 'Torino Spina'),
(106, 'Sara Barbieri', 'Firenze Sud'),
(107, 'Paolo Lombardi', 'Venezia Mestre'),
(108, 'Federica Serra', 'Palermo Porto'),
(109, 'Simone Marino', 'Genova Centro'),
(110, 'Alice Greco', 'Cagliari Marina');

INSERT INTO Invoices (`Invoice N`, Date, VIN, CustomerID, `Staff ID`) VALUES
(8501, '2023-01-15', 1001, 1, 101),
(8502, '2023-02-20', 1002, 2, 102),
(8503, '2023-03-05', 1003, 3, 103),
(8504, '2023-04-12', 1004, 4, 104),
(8505, '2023-05-18', 1005, 5, 105),
(8506, '2023-06-22', 1006, 6, 106),
(8507, '2023-07-30', 1007, 7, 107),
(8508, '2023-08-11', 1008, 8, 108),
(8509, '2023-09-25', 1009, 9, 109),
(8510, '2023-10-02', 1010, 10, 110);