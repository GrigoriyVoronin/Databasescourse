use sample;
start transaction;
Insert into sample.users
select *
from shop.users
where id = 1;
delete  from shop.users where id=1 limit 1;
commit;