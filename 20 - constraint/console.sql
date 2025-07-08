# CONSTRAINT

-- UNIQUE CONSTRAINT (data harus unik/tidak duplikat)

CREATE TABLE costumers(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL ,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email)
) ENGINE = InnoDB;

INSERT INTO costumers(email, first_name, last_name)
VALUES ('abd01@gmail.com', 'joko', 'sulaiman');

INSERT INTO costumers(email, first_name, last_name)
VALUES ('abd01@gmail.com', 'anwar', 'dudung');  -- error

INSERT INTO costumers(email, first_name, last_name)
VALUES ('anwar01@gmail.com', 'anwar', 'dudung');

-- menambah / menghapus unique constraint
ALTER TABLE costumers
ADD CONSTRAINT UNIQUE KEY email_unique(email);

ALTER TABLE costumers
DROP CONSTRAINT  email_unique;


-- CHECK CONSTRAINT (constraint yang bisa ditambahkan kondisi pengecekan)

ALTER TABLE products
ADD CONSTRAINT price_check CHECK ( price >= 5000 );

INSERT INTO products(id, name, price)
VALUES ('001', 'check', 4000);  -- ini bakal ditolak

UPDATE products
SET price = 4000
WHERE id = 'P001'; -- ini juga bakal ditolak

ALTER TABLE products
DROP CONSTRAINT price_check;
