use shop;
create table if not exists accounts(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    password varchar(255)
);

CREATE VIEW USERNAME
    as select id,name
FROM accounts;

create user 'username_read'@'localhost' identified with sha256_password by'pass';
grant select on shop.username to 'username_read'@'localhost';