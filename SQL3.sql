--сгруппировать продовцов по году рождения и для каждого года вывести количество людей
select strftime('%Y', birthday) as birthyear,
count(id) as count_id  
from Seller group by birthyear 