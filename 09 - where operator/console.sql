# WHERE OPERATOR

SELECT * FROM products;

INSERT INTO products (id, name, category, price, quantity)
VALUES ('P009', 'Bakso Bakar', 'Lain-Lain', 15000, 200),
       ('P010', 'Keripik Kentang', 'Lain-Lain', 13000, 90),
       ('P011', 'Es Teh Manis', 'Minuman', 10000, 150),
       ('P012', 'Es Cendol', 'Minuman', 15000, 100),
       ('P013', 'Basreng Doa Ibu', 'Lain-Lain', 30000, 50),
       ('P014', 'Es Buah', 'Minuman', 15000, 200),
       ('P015', 'Pisang Ijo', 'Minuman', 20000, 100);

-- operator todak sama dengan
SELECT id,name,category,price,quantity FROM products
WHERE category != 'Minuman';

-- operator >,<, >=, <=
SELECT id,name,category,price,quantity FROM products WHERE price > 15000;
SELECT id,name,category,price,quantity FROM products WHERE price >= 15000;
SELECT id,name,category,price,quantity FROM products WHERE price < 15000;
SELECT id,name,category,price,quantity FROM products WHERE price <= 15000;


-- operator AND dan OR  -> bisa dilakukan multiple kemudian digabung dengan menggunakan ()
SELECT id,name,category,price,quantity FROM products WHERE price > 15000 AND category = 'Lain-Lain';
SELECT id,name,category,price,quantity FROM products WHERE price < 15000 or category = 'Lain-Lain';
SELECT id,name,category,price,quantity FROM products WHERE (price < 15000 or category = 'Lain-Lain') AND quantity > 100;


-- operator LIKE
/*
 LIKE 'b%'  ->  string dengan awalan b
 LIKE '%b'  ->  string dengan akhiran b
 LIKE '%dzaky%' -> string berisi dzaky
 NOT LIKE   -> tidak LIKE
 */
SELECT id,name FROM products where name LIKE '%BAKSO%';
SELECT id,name FROM products where name LIKE 'bakso%';

UPDATE products
SET category = 'Makanan'
WHERE name LIKE 'mie%';

SELECT * FROM products;


-- operator NULL
SELECT id,name,description FROM products WHERE description IS NULL ;
SELECT id,name,description FROM products WHERE description IS NOT NULL ;


-- operator BETWEEN
SELECT id,name,category,price,quantity FROM products WHERE price >= 15000 AND price <= 20000;  -- cara manual
SELECT id,name,category,price,quantity FROM products WHERE price BETWEEN 15000 AND 20000;
SELECT id,name,category,price,quantity FROM products WHERE price NOT BETWEEN 15000 AND 20000;


-- operator IN
SELECT id,name,category,price,quantity FROM products WHERE category IN ('Lain-Lain', 'Minuman');
SELECT id,name,category,price,quantity FROM products WHERE price IN (15000, 20000);
SELECT id,name,category,price,quantity FROM products WHERE category NOT IN ('Lain-Lain', 'Minuman');








