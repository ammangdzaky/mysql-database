# INSERT DATA

create table products(
    id varchar(10) not null ,
    name varchar(100) not null ,
    description text,
    price int unsigned not null ,   #unsigned artinya tidak boleh negatif
    quantity int unsigned not null default 0,
    created_at timestamp not null  default current_timestamp
) engine = InnoDB;


INSERT INTO products(id, name, price, quantity)
VALUES ('P001', 'Mie Ayam Original', 15000, 100);

INSERT INTO products(id, name, price, description, quantity)
VALUES ('P002', 'Mie Ayam Bakso', 15000, 'Mie Ayam Original + Bakso',100);

INSERT INTO  products(id, name, price, quantity)
VALUES ('P003', 'Mie Ayam Ceker', 20000, 100),
       ('P004', 'Mie Ayam Spesial',25000, 100 ),
       ('P005', 'Mie Ayam Yamin', 15000, 100),
       ('P006', 'Mie Ayam Pangsit', 17000, 100),
       ('P007', 'Mie Ayam Rica-Rica', 17000, 100),
       ('P008', 'Mie Ayam Jamur', 15000, 100),
       ('P009', 'Mie Ayam Keju', 18000, 100),
       ('P010', 'Mie Ayam Pedas', 16000, 100)







