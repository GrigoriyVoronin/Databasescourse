INSERT INTO cat
SELECT *
FROM shop.catalogs
ON DUPLICATE KEY update id = shop.catalogs.id, `name` =shop.catalogs.`name`;
SELECT * FROM cat;