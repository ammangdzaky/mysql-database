-- menampilkam databases
show databases ;

-- menampilkan daftar table
show tables ;

-- menghapus table
drop table barang;

-- membuat ulang table
truncate barang;

-- menghapus table
drop table barang;

-- membuat table
create table barang(
    id INT not null,
    nama varchar(100),
    harga INT,
    jumlah INT not null default 0,
    waktu_masuk DATETIME default current_timestamp
) ENGINE = innodb;

-- melihat deskripsi/isi table
desc barang;

-- melihat syntaks poembuatan tables
show create table barang;

-- menambahkan kolom baru
alter table barang
add column nama_baru TEXT;

-- menghapus kolom
alter table barang
drop column nama;

-- rename column
alter table barang
rename column nama_baru to nama_barang;

-- mengubah tipe data dan posisi kolom
alter table barang
modify column nama_barang VARCHAR(50) first ;

alter table barang
modify column nama_barang VARCHAR(50) after id;

-- mengubah agar kolom tidak boleh null dan defalt nilai
alter table barang
modify nama_barang varchar(100) not null default '';

alter table barang
modify harga INT default 0;

select * from barang;



