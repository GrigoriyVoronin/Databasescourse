use shop;

create view dates as
    select * from users
order by created_at desc
limit 5;

truncate table users;

insert into users select * from dates;
select * from users;