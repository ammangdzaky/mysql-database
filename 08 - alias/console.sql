# ALIAS

-- alias untuk kolom

-- before alias
SELECT id, name, category, price, quantity FROM products;

-- after alias
SELECT id AS 'Kode',   # sebenarnya yg tertulis itu :  products.id AS 'Kode'
       name AS 'Nama',
       category AS 'Kategori',
       price AS 'Harga',
       quantity AS 'Stok'
FROM products;


-- alias untuk tabel
SELECT p.id AS Kode,
       p.name AS Nama,
       p.category AS Kategori,
       p.price AS Harga,
       p.quantity AS 'Stok Barang'
FROM products AS p;



