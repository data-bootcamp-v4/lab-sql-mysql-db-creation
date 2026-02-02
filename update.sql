USE lab_mysql;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = (
  SELECT customer_id
  FROM (
    SELECT customer_id
    FROM customers
    WHERE name = 'Pablo Picasso'
    LIMIT 1
  ) AS t
);

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_id = (
  SELECT customer_id
  FROM (
    SELECT customer_id
    FROM customers
    WHERE name = 'Abraham Lincoln'
    LIMIT 1
  ) AS t
);

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_id = (
  SELECT customer_id
  FROM (
    SELECT customer_id
    FROM customers
    WHERE name = 'Napoléon Bonaparte'
    LIMIT 1
  ) AS t
);