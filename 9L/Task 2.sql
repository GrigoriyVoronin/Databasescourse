use shop;
drop function if exists million;

create function million()
returns int deterministic
begin
declare i int;
set i =0;
while (i<1000000) do
    insert into users(name, birthday_at)
    values ('vasya',now());
    set i= i+1;
    end while;
return i;
end;

select million();

select * from users limit 500;