INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES 
('LK096I98681DHSNUP', 'Ferrari', 'light', 2011, 'red'),
('FgOU41UDN3ZIU2WVF6', 'Bughatti', 'Chiron', 2009, 'purple');

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES
('700001', 'Juan Perez', '663 241 581', '-', '-', 'Cordoba', '-', 'Spain', '14007');

INSERT INTO invoices (invoice_number, date, car_vin, customer_id, staff_id)
VALUES
('126785967', '2019-02-14', 'LK096I98681DHSNUP', '700001', '4');




