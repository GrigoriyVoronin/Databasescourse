use shop;

drop trigger if exists correct_add;

create trigger correct_add before insert on products
for each row
begin
    if(new.name is null && new.description is null)
        then signal sqlstate '45000' set message_text = 'Хотя бы одно из полей должно быть не пустым!';
    end if;
end;
select * from products;

-- teacher

drop trigger if exists correct_up;

create trigger correct_up before update on products
    for each row
    begin
        if (new.name is null && new.description is null)
        THEN signal sqlstate  '45000'
            set message_text = 'Должно быть не пустым';
        end if;
    end;

update products set description=null where id=6;

select * from products;