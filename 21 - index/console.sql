# INDEX

/*
 ctt:
 - indexing membuat proses pencarian data lebih cepat, tetapi proses manipulasi data (update, delete) menjdadi lebih lambat
 - primary dan unique key otomatis implementasi indexing
 */


-- membuat table dengan index
CREATE TABLE sellers(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL ,
    email VARCHAR(100) NOT NULL ,
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email),
    INDEX name_index (name)
) ENGINE = InnoDB;


-- menambah / menghapus index

ALTER TABLE sellers
ADD INDEX name_index (name);

ALTER TABLE sellers
DROP INDEX name_index;
