select 
s.fio as "ФИО",
sale.sale_date as "Дата продажи",
count(sale.transport_id) as "Количество проданных авто"

from Seller s
inner join Sale sale on s.id = sale.seller_id
inner join Car c on sale.transport_id = c.transport_id

group by sale.seller_id