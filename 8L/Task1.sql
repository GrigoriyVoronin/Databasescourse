use shop;
drop function if exists hello;
create function hello ()
returns TEXT not deterministic
begin
if (hour(Now()) >= 6 && hour(Now()) < 12 )
    Then return "Доброе утро!";
elseif (hour(Now()) >= 12 && hour(Now()) < 18)
    then return "Добрый день!";
    elseif (hour(Now()) >= 18 && hour(Now()) < 24 )
    then return "Добрый вечер!";
    elseif(hour(Now()) >= 0 && hour(Now()) < 6 )
    then return "Доброй ночи!";
end if;
end;

select hello ();