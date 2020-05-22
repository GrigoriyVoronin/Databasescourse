use shop;
select ROUND(avg(TO_DAYS(Now())-TO_DAYS(birthday_at))/365.25)
 from users;
-- Teacher answer
select avg(TIMESTAMPDIFF(Year,birthday_at,Now()))
from users;