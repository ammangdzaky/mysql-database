# RESTORE DATABASE

/*
 - selain melakukan backup database, di MySQL juga kita bisa melakukan proses restore data dari file hasil backup
 - untuk melakukan restore database, kita bisa menggunakan aplikasi mysql client atau menggunakan perintah SOURCE di MySql
 */

-- membuat database import (contoh aja)
CREATE DATABASE belajar_mysql_import;

-- melakukan import database
-- C:\Users\Dzaky>mysql --user root belajar_mysql_import < \Users\Dzaky\Documents\mycourse\mysql\backup\backup_belajar_mysql.sql


-- import database menggunakan SQL
/*
 mysql> use belajar_mysql_import;
Database changed
mysql> source \Users\Dzaky\Documents\mycourse\mysql\backup\backup_belajar_mysql.sql
 */