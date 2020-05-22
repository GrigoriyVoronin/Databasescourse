select dayname(CONCAT(Year(Now()),SUBSTRING(birthday_at,5,6))) as dayweek,
       count(*) as countOfPeoples
from users
group by
dayweek;