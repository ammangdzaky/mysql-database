# ORDER BY CLAUSE


-- mengurutkan data
SELECT * FROM products ORDER BY category;  -- urutannya asc sesuai posisi enum
SELECT * FROM products ORDER BY name;    -- defaultnya jika tidak disebutkan, maka dia diururtkan ASC

SELECT id,name,price, quantity FROM products ORDER BY quantity ASC , price DESC ;

SELECT id,name,category FROM products
WHERE category = 'Makanan'
ORDER BY id DESC ;

