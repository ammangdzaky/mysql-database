# TRANSACTION

/*
 perintah dan keterangan:
 start transaction      -> memulai proses transaksi (orises selanjutnya akan sianggap transaksi sampai commit atau rollback)
 commit                 -> menyimpan permanen seluruh proses transaksi
 rollback               -> membatalkan secara permanen selluruh proses transaksi

 CTT : transaction hanya berlaku untuk perintah DML (data manipulation language) seperti insert, update, delete, dsb
 */


-- COMMIT
START TRANSACTION;

INSERT INTO guestbooks(email, title, content)
VALUES ('contoh1@gmail.com', 'contoh', 'contoh'),
       ('contoh2@gmail.com', 'contoh', 'contoh');

SELECT * FROM guestbooks;

COMMIT ;


-- ROLLBACK
START TRANSACTION ;

DELETE FROM guestbooks;

SELECT * FROM guestbooks;

ROLLBACK ;