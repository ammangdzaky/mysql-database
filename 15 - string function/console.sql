# STRING FUNCTION

-- --> dokumentasi : https://dev.mysql.com/doc/refman/8.4/en/string-functions.html


-- menggunakan string function

SELECT id, name, UPPER(name) as 'upper name' FROM products;

SELECT id, name, LENGTH(name) AS 'panjang nama' FROM products;

SELECT id,
       name AS 'nama normal',
       UPPER(name) AS 'nama upper',
       LOWER(name) AS 'nama lower',
       LENGTH(name) AS 'panjang nama'
FROM products;