-- creating the database
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- creating the table in the database
DROP TABLE IF EXISTS cars; 
CREATE TABLE cars (
  id INTEGER PRIMARY KEY, -- Benzersiz tanımlayıcı
  vin VARCHAR(255), -- Araç Şasi Numarası
  manufacturer VARCHAR(255), -- Araç Üreticisi
  model VARCHAR(255), -- Araç Modeli
  year INTEGER, -- Üretim Yılı
  color VARCHAR(255) -- Araç Rengi
);

DROP TABLE IF EXISTS customers; 
CREATE TABLE customers ( 
  id INTEGER PRIMARY KEY, -- Benzersiz tanımlayıcı
  cust_id INTEGER,
  cust_name VARCHAR(255), -- Müşteri Adı
  cust_phone VARCHAR(255), -- Telefon Numarası
  cust_email VARCHAR(255), -- E-posta
  cust_address VARCHAR(1024), -- Adres
  cust_city VARCHAR(255), -- Şehir
  cust_state VARCHAR(255), -- Eyalet
  cust_country VARCHAR(255), -- Ülke
  cust_zipcode INTEGER -- Posta Kodu
);

DROP TABLE IF EXISTS salespersons; 
CREATE TABLE salespersons ( 
  id INTEGER PRIMARY KEY, -- Benzersiz tanımlayıcı
  staff_id INTEGER, -- Satış Elemanı Kimliği
  name VARCHAR(255), -- Satış Elemanı Adı
  store VARCHAR(255) -- Mağaza Adı	
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  id INTEGER PRIMARY KEY, -- Benzersiz tanımlayıcı
  invoice_number INTEGER, -- Fatura Numarası
  date DATE, -- Fatura Tarihi
  car_id INTEGER, -- Fatura hangi araca ait
  customer_id INTEGER, -- Fatura hangi müşteriye ait
  salesperson_id INTEGER, -- Fatura hangi satış elemanına ait
  FOREIGN KEY (car_id) REFERENCES cars (id), -- Foreign key ile cars tablosuna bağlanır
  FOREIGN KEY (customer_id) REFERENCES customers (id), -- Foreign key ile customers tablosuna bağlanır
  FOREIGN KEY (salesperson_id) REFERENCES salespersons (id) -- Foreign key ile salespersons tablosuna bağlanır
);
