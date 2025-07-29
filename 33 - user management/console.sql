# USER MANAGEMENT

/*
 ROOT USER

 - secara default, mysql membuat root sebagai user seper administrator
 - namun best practice nya, saat kita menjalankan MySQL dengan aplikasi yang kita buat, sangat disarankan
 tidak menggunakan user root
 - lebih baik kita buat user khusu untuk tiap aplikasi, bahkan kita bisa batasi sah akses user tersebut, seperti hanya bisa
 melakukan SELECT, dan tidak boleh melakukan INSERT, UPDATE, atau DELETE
 */


-- mmebuat / menghapus user
CREATE USER 'dzaky'@'localhost'; -- dzaky ada usernya, dan localhost adalah lokasi user dapt mengakses databasenya
CREATE USER 'abdul'@'%';

DROP USER 'dzaky'@'localhost';
DROP USER 'abdul'@'%';


-- menambah, melihat, dan menghapus hak akses
GRANT SELECT ON belajar_mysql.* TO  'dzaky'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON belajar_mysql.* TO 'abdul'@'%';

SHOW GRANTS FOR 'dzaky'@'localhost';
SHOW GRANTS FOR 'abdul'@'%';

REVOKE SELECT ON belajar_mysql.* FROM 'dzaky'@'localhost';
REVOKE SELECT, INSERT, UPDATE, DELETE ON belajar_mysql.* FROM 'abdul'@'%';


-- mengubah password untuk user
SET PASSWORD FOR 'dzaky'@'localhost' = 'rahasia';
SET PASSWORD FOR 'abdul'@'%' = 'Admin1234';