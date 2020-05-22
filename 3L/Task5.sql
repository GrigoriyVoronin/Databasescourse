USE shop;
SELECT * FROM catalogs WHERE id IN (5, 1, 2)
order by case
    when id = 5 then 1
when id = 1 then 2
when id = 2 then 3
else id end;