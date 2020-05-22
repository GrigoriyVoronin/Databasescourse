use shop;
drop function if exists fib;

create function fib (count INT)
returns int deterministic
begin
    declare sum INT;
    declare i int;
    set sum = 0;
    set i =1;
    while (i < count+1) do
set  sum= sum + i;
set i=i + 1;
end while;
    return  sum;
end;

select fib(1);