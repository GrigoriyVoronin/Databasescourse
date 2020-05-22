DROP TABLE if EXISTS catalogs;
CREATE TABLE catalogs (
id SERIAL PRIMARY key,
`name` VARCHAR(255) null COMMENT 'Name of segment'
) COMMENT = 'Intertnet shop\'s segments';

INSERT INTO catalogs VALUES
(NULL,''),
(NULL, null),
(DEFAULT,'keyboards');

UPDATE catalogs
SET `name`='empty'
WHERE (`name`='' OR `name` IS NULL);
UPDATE catalogs
SET `name` = 'Proccessor intel'
WHERE `name` = 'Proccessor';

SELECT * FROM catalogs;

DROP TABLE if EXISTS cat;
CREATE TABLE cat (
id SERIAL PRIMARY key,
`name` VARCHAR(255) COMMENT 'Name of segment'
) COMMENT = 'Intertnet shop\'s segments';

INSERT INTO cat
SELECT *
FROM catalogs;

SELECT * FROM cat;

DROP TABLE if EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY key,
`name` VARCHAR(255) COMMENT 'Customers name',
birthday_at DATE COMMENT 'Date of born',
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp
) COMMENT = 'Customers';

INSERT INTO users (id, `name`, birthday_at) VALUES (1,'hello', '1979-01-27');
SELECT * FROM users;

DROP TABLE if EXISTS products;
CREATE TABLE products (
id SERIAL PRIMARY key,
`name` VARCHAR(255) COMMENT 'Title',
description TEXT COMMENT 'Description',
price DECIMAL (11,2) COMMENT 'Price',
catalog_id INT UNSIGNED,
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Товарные позиции';

CREATE INDEX index_of_catalog_id USING hash ON products(catalog_id);
DROP INDEX index_of_catalog_id ON products;

DROP TABLE if EXISTS orders;
CREATE TABLE orders (
id SERIAL PRIMARY key,
user_id INT UNSIGNED,
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp
) COMMENT =  'orders';

DROP TABLE if EXISTS orders_products;
CREATE TABLE orders_products (
id SERIAL PRIMARY key,
order_id INT UNSIGNED,
product_id INT UNSIGNED,
total_count INT UNSIGNED 
DEFAULT 1 COMMENT 'Count of products',
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp
) COMMENT = 'Order list';

DROP TABLE if EXISTS discounts;
CREATE TABLE discounts (
id SERIAL PRIMARY key,
user_id int UNSIGNED,
product_id INT UNSIGNED,
dicount FLOAT UNSIGNED COMMENT 'Dicount from 0.0 to 1.0',
started_at DATETIME,
finiched_at DATETIME,
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
KEY index_of_user_id(user_id),
KEY index_of_product_id(product_id)
) COMMENT = 'Discounts';

DROP TABLE if EXISTS `storages`;
CREATE TABLE `storages` (
id SERIAL PRIMARY key,
`name` VARCHAR(255) COMMENT 'Title',
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT= 'Stocks';

DROP TABLE if EXISTS products_storage;
CREATE TABLE products_storage (
id SERIAL PRIMARY key,
storage_id INT UNSIGNED,
product_id INT UNSIGNED,
`VALUE` INT UNSIGNED COMMENT 'Amount of products in storage',
created_at DATETIME DEFAULT current_timestamp,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE current_timestamp
) COMMENT = 'Stocks';