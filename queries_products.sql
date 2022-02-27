-- query 1 --
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, false);

-- query 2 --
INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, true);

-- query 3 --
INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, false);

-- query 4 --
SELECT * FROM products;

-- query 5 --
SELECT name FROM products;

-- query 6 --
SELECT name, price FROM products;

-- query 7 --
INSERT INTO products (name, price, can_be_returned)
VALUES ('bed', 507.85, false);

-- query 8 --
SELECT name FROM products
WHERE can_be_returned;

-- query 9 --
SELECT name FROM products
WHERE price < 44.00;

-- query 10 --
SELECT name FROM products
WHERE price BETWEEN 22.50 AND 99.99;

-- query 11 --
UPDATE products SET price = price - 20;

-- query 12 --
DELETE FROM products WHERE price < 25;

-- query 13 --
UPDATE products SET price = price + 20;

-- query 14 --
UPDATE products SET can_be_returned = true;
