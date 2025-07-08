# DATE AND TIME FUNCTION

-- --> docs : https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html

SELECT DAYNAME('2006-03-22');

-- menambahkan kolom timestamp
SELECT id,
       created_at AS 'timestamp',
       YEAR(created_at) AS 'tahun pembuatan',
       MONTHNAME(created_at) AS 'bulan pembuatan',
       DAYOFMONTH (created_at) AS 'tanggal pembuatan',
       DAYNAME(created_at) AS 'hari pembuatan',
       TIME (created_at) AS 'waktu pembuatan'
FROM products