# ONE TO ONE RELATIONSHIP

/*
 cara membuat table one to one:
 - kita membuat foreign key, lalu set kolom tersebut menggunakan UNIQUE KEY. Hal ini dapat mencegah
 terjadi duplikat data di kolom (karena di one to one, satu data hanya ke satu data yang lain)
 */

-- membuat table wallet
CREATE TABLE wallet(
    id INT NOT NULL AUTO_INCREMENT,
    id_costumer INT NOT NULL ,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY fk_id_costumers_unique (id_costumer),
    CONSTRAINT fk_wallet_costumers FOREIGN KEY (id_costumer) REFERENCES costumers (id)
) ENGINE  = InnoDB;

INSERT INTO wallet (id_costumer, balance) VALUES (1, 100000), (3, 200000);

SELECT costumers.email, wallet.balance FROM wallet
JOIN costumers ON (wallet.id_costumer = costumers.id);