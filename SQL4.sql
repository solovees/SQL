--Вывести возраст всех продавцов до сегодняшнего дня
select 

birthday, fio,
case when strftime('%j', birthday)- strftime('%j', date('now'))<0
then
(strftime('%Y','now') - strftime('%Y', birthday))
else 
(strftime('%Y','now') - strftime('%Y', birthday))-1
end as year

from Seller