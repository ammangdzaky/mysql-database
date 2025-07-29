# JENIS JENIS JOIN

-- menambahkan data tang tidak berelasi antara table categories dan products

INSERT INTO categories (id, name)
VALUES ('COO4', 'Manisan'),
       ('COO5', 'Lain-Lain');

INSERT INTO products (id, name, price, quantity)
VALUES ('X001', 'produk tanpa kategori 1', 10000, 10),
       ('X002', 'produk tanpa kategori 2', 10000, 10),
       ('X003', 'produk tanpa kategori 3', 10000, 10);

-- INNER JOIN (default join mysql)
SELECT products.id, products.name, categories.id, categories.name
FROM products
         INNER JOIN categories ON (products.id_category = categories.id);


-- LEFT JOIN
SELECT products.id, products.name, categories.id, categories.name
FROM products
         LEFT JOIN categories ON (products.id_category = categories.id);


-- RIGHT JOIN
SELECT products.id, products.name, categories.id, categories.name
FROM products
         RIGHT JOIN categories ON (products.id_category = categories.id);

-- CROSS JOIN
SELECT products.id, products.name, categories.id, categories.name
FROM products
         CROSS JOIN categories;

-- membuat table perkalian dengan cross join (iseng aja)
CREATE TABLE numbers
(
    id INT not null,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO numbers(id) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

SELECT n1.id, n2.id, (n1.id * n2.id) as 'hasil'
FROM numbers as n1
         CROSS JOIN numbers as n2 ORDER BY n1.id, n2.id;
