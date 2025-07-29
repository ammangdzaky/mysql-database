# LOCKING

/*
 - LOCKING OTOMATIS
 - LOCKING MANUAL
 */

-- LOCKING OTOMATIS MENGGUNAKAN TRANSACTION
START TRANSACTION;

UPDATE guestbooks
SET content = 'diubah oleh user 1'
WHERE id = 8;

COMMIT;

-- LOCKING MANUAL (tambahkan FOR UPDATE)
START TRANSACTION;

SELECT * FROM products WHERE id = 'P001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P001';

COMMIT ;


-- DEADLOCK (kondisi ketika saling menunggu sehingga akan deadlocl)

-- user 1
START TRANSACTION;
SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;
SELECT * FROM products WHERE id = 'P002' FOR UPDATE ;

-- user 2
START TRANSACTION ;
SELECT * FROM products WHERE id = 'P002' FOR UPDATE ;
SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;


-- LOCKING TABLE
-- ctt : ada dua jenis locking table, READ dan WRITE

LOCK TABLES products READ;

UPDATE products
SET quantity = 100
WHERE id = 'P001';

UNLOCK TABLES ;


-- LOCKING INSTANCE (perintah yg membuat DDL (data defentition language) seperti CREATE, akan diminta menunggu sampai proses locking seelsai)
LOCK INSTANCE FOR BACKUP;

UNLOCK INSTANCE;
