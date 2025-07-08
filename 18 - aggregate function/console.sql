# AGGREGATE FUNCTION

-- --> DOCS :   https://dev.mysql.com/doc/refman/8.4/en/aggregate-functions.html


-- menggunakan aggregate function

SELECT COUNT(id) AS 'jumlah keseluruhan produk',
       AVG(price) AS 'rata rata harga',
       MAX(price) AS 'harga termahal',
       MIN(price) AS 'harga termurah',
       SUM(quantity) AS 'total stock'
FROM products;
