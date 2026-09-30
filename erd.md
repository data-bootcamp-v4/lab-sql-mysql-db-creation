# Diagrama E-R: concesionario de coches (`lab_mysql`)

GitHub dibuja este diagrama automáticamente a partir del bloque `mermaid`.

```mermaid
erDiagram
    CUSTOMERS ||--o{ INVOICES : "compra"
    SALESPERSONS ||--o{ INVOICES : "vende"
    CARS ||--o| INVOICES : "se factura en"

    CARS {
        int id PK "AUTO_INCREMENT"
        varchar vin UK "17 caracteres"
        varchar manufacturer
        varchar model
        smallint year
        varchar color
    }
    CUSTOMERS {
        int id PK "AUTO_INCREMENT"
        int cust_id UK
        varchar cust_name
        varchar cust_phone
        varchar cust_email "opcional"
        varchar cust_address
        varchar cust_city
        varchar cust_state
        varchar cust_country
        varchar cust_zipcode
    }
    SALESPERSONS {
        int id PK "AUTO_INCREMENT"
        varchar staff_id UK
        varchar name
        varchar store
    }
    INVOICES {
        int id PK "AUTO_INCREMENT"
        bigint invoice_number UK
        date invoice_date
        int car_id FK,UK
        int customer_id FK
        int salesperson_id FK
    }
```

## Entidades y relaciones

| Relación | Tipo | Por qué |
|---|---|---|
| Cliente → facturas | uno a muchos (1:N) | un cliente puede comprar varios coches; cada factura es de un único cliente |
| Vendedor → facturas | uno a muchos (1:N) | un vendedor hace muchas ventas; cada factura la firma un único vendedor |
| Coche → factura | uno a uno (1:0..1) | un coche concreto (un VIN) solo se vende una vez; puede estar en stock sin factura. Por eso `invoices.car_id` es clave foránea **y** `UNIQUE` |

## Decisiones de diseño

- **Cada tabla tiene su `id` con `AUTO_INCREMENT`**, distinto del identificador de negocio (`cust_id`, `staff_id`, `vin`, `invoice_number`), como pide el enunciado. El `id` es la clave primaria técnica; el de negocio es `UNIQUE` para que no se repita.
- **`invoices` es la tabla central**: guarda las claves foráneas de las otras tres. Así no hace falta repetir los datos del cliente o del coche en cada factura.
- **`staff_id` y los códigos postales son texto (`VARCHAR`)**, no números: `00001` perdería los ceros a la izquierda si fuera `INT`, y hay códigos postales con letras en otros países.
- **`cust_phone` es texto**: lleva espacios y el prefijo `+`.
- **Obligatorios (`NOT NULL`)**: los datos sin los que el registro no tiene sentido (VIN, marca, modelo, nombre del cliente, fecha de factura...). El email del cliente es opcional porque en los datos de ejemplo no está.
