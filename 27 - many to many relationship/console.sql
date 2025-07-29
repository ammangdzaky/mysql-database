# MANY TO MANY RELATIONSHIP

/*
 - solusi yang digunakan jika terjadi relasi many to many adalah menambahkan 1 tabel ditengahnya
 - tabel ini berfungsi sebagai jembatan untuk menggabungkan relasi many to many
 - isi table ini akan ada id dari table pertma dan table kedua
 */


-- membuat table order
CREATE TABLE orders
(
    id         INT      NOT NULL AUTO_INCREMENT,
    total      INT      NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE = InnoDB;


-- membuat table order detail (jembatan dari table order dan product / many to many)
CREATE TABLE orders_detail
(
    id_product VARCHAR(10) NOT NULL,
    id_order   INT         NOT NULL,
    price      INT         NOT NULL,
    quantity   INT         NOT NULL,
    PRIMARY KEY (id_product, id_order)
) ENGINE = InnoDB;

-- membuat foreign key
ALTER TABLE orders_detail
    ADD CONSTRAINT fk_order_detail_products
        FOREIGN KEY (id_product) REFERENCES products (id);

ALTER TABLE orders_detail
    ADD CONSTRAINT fk_order_detail_orders
        FOREIGN KEY (id_order) REFERENCES orders (id);

-- menambha data di table orders
INSERT INTO orders(total)
VALUES (50000),
       (50000),
       (50000);

-- menambahkan data di table order_detail
INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P001', 1, 25000, 1),
       ('P002', 1, 25000, 1),
       ('P001', 2, 25000, 2),
       ('P004', 3, 20000, 1),
       ('P001', 3, 20000, 1),
       ('P012', 3, 5000, 1);



SELECT orders.id, products.id, products.name, orders_detail.quantity, orders_detail.price
FROM orders_detail
         JOIN products ON (orders_detail.id_product = products.id)
         JOIN orders ON (orders_detail.id_order = orders.id);

