INSERT INTO cars (model, VIN, year_model, color)
VALUES ("Ford", 581685, "2024-08-08", "Black"),
		("Honda", 846852, "2018-12-01", "Gray"),
        ("VW", 415389, "2020-11-02", "Purple"),
        ("Chevy", 418569, "2003-07-03", "Blue");
        
Select *
From cars;

INSERT INTO customers (ID, Customer_Name, Phone_number, Email, Address, City)
VALUES (55581685, "Pablo", 585964, "j.pgmail.com", "30 West", "Boston"),
		(48846852, "Greg", 158645, "Gray@gmail.com", "50 East", "Chicago"),
        (51415389, "Lisa", 748621, "Purple@yahoocom", "85 South", "LA"),
        (12586222, "Fred", 516854, "stan@gmail.com", "1 West", "Paris");
        
Select *
From customers;

    
    INSERT INTO invoices (ID, Customer_Name, Sales_Person, Date_of_Year, Car)
VALUES (55554685, "Pablo", "Dick", "2022-01-05", "Chevy"),
		(48846952, "Greg", "Harry", "2023-04-18", "VW"),
        (51415341, "Lisa", "Billy", "2020-05-09", "Ford"),
        (12586274, "Fred", "Jess", "2022-06-08", "Honda");
    
Select *
From invoices;


    INSERT INTO sales_people (Staff_ID, Name, Store_Location)
VALUES (5554685, "Jen", "London"),
		(4446952, "Rocio", "Berlin"),
        (6415341, "Pilar", "Madrid"),
        (1886274, "Jon", "Milan");
    
    
Select *
From sales_people;