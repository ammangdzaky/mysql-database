# JOIN

-- melakukan join table

SELECT * FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

SELECT products.id, products.name, wishlist.id, wishlist.description FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

SELECT p.id AS 'id product',
       p.name AS menu,
       w.id AS 'id wishList',
       w.description AS deskripsi
FROM products AS p
JOIN wishlist AS w ON (p.id = w.id_product);


-- membuat relasi ke table costumers
ALTER TABLE wishlist
ADD COLUMN id_costumers INT;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishList_costumers
FOREIGN KEY (id_costumers) REFERENCES costumers(id);

UPDATE wishlist
SET id_costumers = IF(id <= 10, 1, 3);


-- melakukan JOIN MULTIPLE TABLE

SELECT products.id,
       products.name,
       wishlist.description,
       costumers.first_name,
       costumers.email
FROM wishlist
JOIN products ON (products.id = wishList.id_product)
JOIN costumers ON (costumers.id = wishList.id_costumers);
# WHERE wishlist.description = 'Dibeli';
