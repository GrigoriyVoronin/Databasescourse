create user 'shop_read'@'localhost' identified with sha256_password by 'pass';
grant select on shop.* to 'shop_read'@'localhost';

create user 'shop'@'localhost' identified with sha256_password by 'pass';
grant all privileges on shop.* to 'shop'@'localhost';