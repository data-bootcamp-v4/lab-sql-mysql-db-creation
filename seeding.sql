INSERT INTO customers (CustomerID, FirstName, LastName, Phone, Email, Address, City, State, Country, Zip)
VALUES
	(1, "Tommy", "Rosario", "0442667438", "-", "Dohnagestell 9", "Berlin", "Berlin", "Germany", "133510"),
    (2, "Irene", "Wright", "0674536217", "-", "Mauritskade 57", "Amsterdam", "Amsterdam", "Netherlands", "062114"),
    (3, "Miquel", "Barroso", "0535783721", "-", "Calle de Silva, 1", "Madrid", "Madrid", "Spain", "056731");
    
INSERT INTO salesperson (StaffID, FirstName, LastName, Store)
VALUES
	(1, "Arne", "Pols", "Amsterdam"),
    (2, "Marcos", "Gouveia", "Madrid"),
    (3, "Masumi", "Kubota", "Tokyo"),
    (4, "Ralf", "Siegel", "Berlin"),
    (5, "Martien", "Donders", "Amsterdam");
    
INSERT INTO cars (CarID, Manufacturer, Model, Color, Year)
VALUES
	("3C63DRNL1CG332299", "Nissan", "Qashqai", "White", 2018),
    ("1GNDU03E94D265387", "Ford", "Edge", "Blue", 2012),
    ("1FMCU0HX6DUB27154", "Hyundai", "Tucson", "Red", 2016),
    ("19XFB2F50EE045165", "Maserati", "Ghibli", "Black", 2015),
    ("3GKEC16TX1G221000", "Chevrolet", "Corvette", "Grey", 1969),
    ("2MEFM75W42X688317", "Subaru", "Impreza", "Blue", 1999),
	("3GKEC16TX1G221001", "Chevrolet", "Corvette Z06", "Grey", 1969);
    
INSERT INTO invoice (InvoiceID, InvDate, CarID, CustomerID, StaffID)
VALUES
	("2010001", "2016-04-12", "1FMCU0HX6DUB27154", 003, 010463),
    ("4056257", "2018-03-22", "19XFB2F50EE045165", 002, 000351),
    ("5767216", "2022-07-18", "2MEFM75W42X688317", 001, 003523);