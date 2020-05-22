use shop;
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  create_time DATETIME,
  table_name varchar(255),
  first_key int,
  name varchar(255)
) ENGINE = Archive;

drop trigger if exists users_log;

create trigger users_log before insert on users
for each row
begin
    insert into logs(create_time, table_name, first_key, name)
    VALUES (Now(),'users',new.id,new.name);
end;

drop trigger if exists catalogs_log;

create trigger catalogs_log before insert on catalogs
for each row
begin
    insert into logs(create_time, table_name, first_key, name)
    VALUES (Now(),'catalogs',new.id,new.name);
end;

drop trigger if exists products_log;

create trigger products_log before insert on products
for each row
begin
    insert into logs(create_time, table_name, first_key, name)
    VALUES (Now(),'products',new.id,new.name);
end;