# UPDATE DATA

-- menambah kolom category
ALTER TABLE products
ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain-Lain')
AFTER name;


-- mengubah satu kolom
UPDATE products
SET category = 'Makanan'
WHERE id = 'P001';


-- mengubah beberapa kolom
UPDATE products
SET category = 'Makanan',
    description = 'Mie Ayam Original + Ceker'
WHERE id = 'P003';


-- mengubah dengan value di kolom
UPDATE products
SET price = price + 5000
WHERE id = 'P002';
