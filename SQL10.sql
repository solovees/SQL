--получить продавцов которые продали хотя бы одну подержаную машину 
select 
sel.fio

from Seller sel

inner join Sale s on sel.id = s.seller_id
inner join Transport tr on s.transport_id = tr.id
inner join spr_Condition con on tr.condition_id = con.id

where con.name_ru = 'Подержаная'
