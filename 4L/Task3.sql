use shop;
drop table if exists tbl;
create table tbl(
value INT
);
insert into tbl values
(1),(2),(3);
select exp(sum(log(value))) from tbl;
