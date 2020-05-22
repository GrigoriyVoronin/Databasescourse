use shop;
create view prod_cat as
    select
products.name as prod_name,
           catalogs.name as cat_name
from products,catalogs;