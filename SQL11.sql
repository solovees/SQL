-- получить всех продавцов которые не продали не одной машшины и вывести их имя в алфовитном порядке
select *

from Seller sal

left join Sale s on sal.id = s.seller_id 

where s.transport_id is null

order by  sal.fio 


