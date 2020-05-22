use shop;
update  users
set birthday_at= Date(NOW()),
    updated_at= DATE_FORMAT(Now(),'%Y-%m-%d %H:%i:%s');
