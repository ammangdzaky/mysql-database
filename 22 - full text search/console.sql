# FULL TEXT-SEARCH

SHOW CREATE TABLE products;

-- membuat table dengan full text search
CREATE TABLE products (
    id varchar(10) NOT NULL,
    name varchar(100) NOT NULL,
    category enum('Makanan','Minuman','Camilan') DEFAULT NULL,
    description text,
    price int unsigned NOT NULL,
    quantity int unsigned NOT NULL DEFAULT '0',
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT price_check CHECK ((price >= 5000)),
    FULLTEXT products_search (name, description)
) ENGINE=InnoDB;


-- menambah / menghapus full text search

ALTER TABLE products
ADD FULLTEXT products_search (name, description);

ALTER TABLE products
DROP INDEX products_search;


-- mencari dengan natural language mode

SELECT * FROM products WHERE name LIKE '%ayam%' OR description LIKE '%ayam%'; -- --> cara jadul

SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('ayam' IN NATURAL LANGUAGE MODE );


-- mencari dengan boolean mode
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('+ayam -bakso' IN BOOLEAN MODE ); -- artinya saya mau ada kata ayam tetapi tidak ada kata bakso


-- mencari dengan query expansion mode
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('bakso' WITH QUERY EXPANSION);
