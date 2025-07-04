# LIMIT CLAUSE

SELECT id, name, category, price FROM products
WHERE price > 15000
ORDER BY id;



-- membatasi hasil query
SELECT id, name, category, price FROM products
WHERE price > 15000
ORDER BY id
LIMIT 3;  -- ini sebenarnya :   LIMIT 0, 2


-- skip hasil query
SELECT id, name, category, price FROM products
WHERE price > 15000
ORDER BY id
LIMIT 3, 3;  -- artinya skip 3 data, kemudian limit 3 data
