# AUTO INCREMENT

-- membuat table dengan auto increment
CREATE TABLE admin(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL ,
    last_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE admin;

-- memasukkan data tanpa id
INSERT INTO admin(first_name, last_name)
VALUES ('Abdurrahman', 'Dzaky'),
       ('Asep', 'Sinegar'),
       ('Budi', 'Santoso');

SELECT * FROM admin;

INSERT INTO admin(first_name, last_name)
VALUES ('Joko', 'Samsul');

-- melihat id terakhhir
SELECT LAST_INSERT_ID();