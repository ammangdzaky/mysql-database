# FLOW CONTROL FUNCTION

-- --> DOCS : https://dev.mysql.com/doc/refman/8.4/en/flow-control-functions.html


-- menggunakan control flow CASE
SELECT id,
       name,
       CASE category   -- membandingkan apakah category sesuai dengan when (mirip switch case)
            WHEN 'Makanan' THEN 'ENAK'
            WHEN 'Minuman' THEN 'SEGAR'
            ELSE 'AFAAN TUH?'
        END AS category
FROM products;


-- menggunakan control flow IF
SELECT id,
       name,
       price,
       IF(price <= 15000, 'murah', 'mahal') AS 'mahal atau murah?'
FROM products;

SELECT id,
       name,
       price,
       IF(price <= 15000, 'murah',
       (IF(price <= 20000, 'Mahal', 'MAHAL BANGAAT'))
       ) AS 'myrah atau mahal?'
FROM products;


-- menggunakan control flow IFNULL
SELECT id, name, description , IFNULL(description, 'kosong')
FROM products;