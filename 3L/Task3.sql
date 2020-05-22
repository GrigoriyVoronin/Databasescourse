use shop;
SELECT * FROM products_storage
ORDER BY case when value = 0 then 2147483647
else VALUE end;
