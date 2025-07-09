# TABLE RELATIONSHIP

-- keyword  :   foreign key


-- membuat tabel dengan foreign key

CREATE TABLE wishList(
    id INT NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(10) NOT NULL ,
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishList_products FOREIGN KEY (id_product) REFERENCES products (id)
)ENGINE = InnoDB;

SHOW CREATE TABLE wishList;
SHOW CREATE TABLE products;

-- menambah / menghapus foreign key

ALTER TABLE wishList
ADD CONSTRAINT fk_wishList_products
FOREIGN KEY (id_product) REFERENCES products(id);

ALTER TABLE wishList
DROP CONSTRAINT fk_wishList_products;


-- menambah dan menghapus data
INSERT INTO wishList(id_product, description)
VALUES ('P001', 'Dibeli');

INSERT INTO wishList(id_product, description)
VALUES ('Pxxx', 'Dibeli');  -- ditolak karena di product tidak ada id Pxxx

DELETE FROM products
WHERE id = 'P001';      -- ini juga di tolak karena ada tabel yang reference ke id P001 (RESTRICT)

UPDATE products
SET id = 'PPP'
WHERE id = 'P001'; -- ini juga ditolak (RESTRICT)


-- behavior pada foreign key
/*
 RESTRICT   :   ON DELETE(ditolak)      ON UPDATE(ditolak)      -> default
 CASCADE    :   ON DELETE(data akan dihapus)    ON UPDATE(data akan ikut diubah)
 NO ACTION  :   ON DELETE(data dibiarkan)       ON UPDATE(data dibiarkan)
 SET NULL   :   diubah jadi null                diubah jadi null
 */

-- mengubah behavior menghapus relasi
ALTER TABLE wishList
ADD CONSTRAINT fk_wishList_products
FOREIGN KEY (id_product) REFERENCES products (id)
ON DELETE CASCADE ON UPDATE CASCADE ;

INSERT INTO products(id, name, price)
VALUES ('Pxxx', 'Contoh', '10000');

INSERT INTO wishList(id_product, description)
VALUES ('Pxxx', 'ini contoh aja');

UPDATE products
SET id  = 'Pcontoh'
WHERE id = 'Pxxx';

DELETE FROM products
WHERE id = 'Pcontoh';












