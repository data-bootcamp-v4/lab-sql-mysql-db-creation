1. Cars:
   - car_id (Primary Key)
   - VIN
   - manufacturer
   - model
   - year
   - color

2. Customers:
   - customer_id (Primary Key)
   - name
   - phone
   - email
   - address
   - city
   - state
   - country
   - zipcode

3. Salespersons:
   - staff_id (Primary Key)
   - name
   - store

4. Invoices:
   - invoice_number (Primary Key)
   - date
   - car_id (Foreign Key)
   - customer_id (Foreign Key)
   - salesperson_id (Foreign Key)
