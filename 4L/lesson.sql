use shop;
drop table if exists tbl;
create table tbl(
Id Int,
value VARCHAR(255)
);
insert into tbl(id,value) values
(1,200),(2,NULL),(3,100),(4,null);
select * from tbl;
select  count(distinct id),count(distinct value) from tbl;