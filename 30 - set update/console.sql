# SET OPERATOR

/*
 UNION
 UNION ALL
 INTERSECT
 MINUS
 */

-- membuat table guest book
CREATE TABLE guestbooks
(
    id      INT          NOT NULL AUTO_INCREMENT,
    email   VARCHAR(100) NOT NULL,
    title   VARCHAR(200) NOT NULL,
    content TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT *
FROM guestbooks;

INSERT INTO guestbooks(email, title, content)
VALUES ('guest@gmail.com', 'hello', 'hello'),
       ('guest2@gmail.com', 'hello', 'hello'),
       ('guest3@gmail.com', 'hello', 'hello'),
       ('abd01@gmail.com', 'hello', 'hello'),
       ('abd01@gmail.com', 'hello', 'hello'),
       ('abd01@gmail.com', 'hello', 'hello');

-- UNION (jika duplikat maka dihapus)
SELECT DISTINCT email
FROM costumers
UNION
SELECT DISTINCT email
FROM guestbooks;
-- di costumers dan guestbook ada abd@gmail.com tetapi hasilnya hanya satu / tidak duplikat

-- UNION ALL (data duplikat tetap ditampilkan (dupliat di antara kedua tabel))
SELECT DISTINCT email
FROM costumers
UNION ALL
SELECT DISTINCT email
FROM guestbooks;

SELECT email
FROM costumers
UNION ALL
SELECT email
FROM guestbooks;


SELECT emails.email, COUNT(emails.email)
FROM (SELECT email FROM costumers UNION ALL SELECT email FROM guestbooks) as emails
GROUP BY emails.email;


-- INTERSECT (hanya data yang ada pada kedua table yang diambil)
SELECT email FROM costumers
WHERE email IN(SELECT email FROM guestbooks);
-- or
SELECT DISTINCT costumers.email FROM costumers
JOIN guestbooks ON(costumers.email = guestbooks.email);


-- MINUS (jika data di query pertama = data diquery kedua, maka akan dihapus)
SELECT costumers.email, guestbooks.email FROM costumers
LEFT JOIN guestbooks ON (costumers.email = guestbooks.email)
WHERE guestbooks.email IS NULL ;