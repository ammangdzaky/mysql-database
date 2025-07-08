# NUMERIC FUNCTION

-- menggunakan arimhetic operator

SELECT 10 + 10 as hasil;

SELECT 10 / 3 AS hasil;

SELECT 10 DIV 3 as hasil;

SELECT 9 % 2 AS hasil;

SELECT 9 MOD 2 AS hasil;

SELECT -10 AS hasil;


SELECT id, name, price AS 'normal price', price DIV 1000 AS 'price in k'
FROM products;


SELECT id, name,
       CASE
           WHEN category MOD 2 = 0 THEN 'barang genap'
           ELSE 'barang ganjil'
       END AS kategori
FROM products
ORDER BY kategori DESC ;


-- math function
SELECT PI();
SELECT POWER(8, 2);  # pangkat
SELECT COS(45);
SELECT SIN(45);
SELECT TAN(45);