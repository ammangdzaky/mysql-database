# GROUPING

-- menggunakan group by

SELECT COUNT(id), category FROM products;  -- error

SELECT COUNT(id), category FROM products GROUP BY category;

SELECT category,
       COUNT(id) AS 'total produk',
       AVG(price) AS 'rata-rata harga',
       MAX(price) AS 'harga termahal',
       MIN(price) AS 'harga termurah',
       SUM(quantity) AS 'total stok'
FROM products
GROUP BY category;


-- menggunakan HAVING clause  (seperti WHERE)

SELECT category, COUNT(id) AS total
FROM products
GROUP BY category
HAVING total > 5;  -- artinya hanya menampilkan kategori yang jumlahnya lebih besar dari 6
