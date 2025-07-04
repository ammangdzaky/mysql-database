# PRIMARY KEY

-- menambahkan primary key ketika membuat tabel
CREATE TABLE products (
    id varchar(10) NOT NULL,
    name varchar(100) NOT NULL,
    description text,
    price int unsigned NOT NULL,
    quantity int unsigned NOT NULL DEFAULT '0',
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE=InnoDB ;


-- menambahkan primary key ke tabel
ALTER TABLE products
ADD PRIMARY KEY (id);