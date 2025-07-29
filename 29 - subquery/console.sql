# SUBQUERY

-- melakukan subquery di WHERE CLAUSE
SELECT id, name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- melakukan subquery di FROM CLAUSE
SELECT MAX(price) FROM products;

SELECT MAX(price)
FROM (SELECT price
      FROM products
               JOIN categories ON (products.id_category = categories.id)) as cp;  -- hanya mengambil harga barang yang memiliki kategori



