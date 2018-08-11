select
 
sum(tr.price) as "Выручка"

from Sale s
inner join Transport tr on s.transport_id = tr.id
where strftime('%Y', s.sale_date ) = '2011' and
strftime('%m', s.sale_date) = '01'