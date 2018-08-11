-- Вывести данные по всем автомобилям ( из обеих таблиц Car и Transport
-- чтобы вместо id значений из справочников выводились наименования на русском
-- только для автомобилей Toyota цена которых меньше 3000 $

select 
car.id,
car.capacity as "Объем двигателя",
cartyp.name_ru as "Тип",
carmodel.name_ru as "Модель",
carpr.name_ru as "Привод",
cartran.name_ru as "Коробка передач",

tr.description as "Описание",
tr.issue_date as "Дата выпуска",
tr.price as "Цена",
trcurr.name_ru as "Валюта",
trbrand.name_ru as "Бренд",
trcolor.name_ru as "Цвет",
trcond.name_ru as "Условия"



from Car car

inner join Transport tr on  car.transport_id = tr.id
inner join spr_CarType cartyp on car.car_type_id = cartyp.id
inner join spr_Model carmodel on car.model_id = carmodel.id
inner join spr_Transmission cartran on car.transmission_id = cartran.id
inner join spr_Privod carpr on car.privod_id = carpr.id
inner join spr_Brand trbrand on tr.brand_id = trbrand.id
inner join spr_Color trcolor on tr.color_id = trcolor.id
inner join spr_Condition trcond on tr.condition_id = trcond.id
inner join spr_Currency trcurr on tr.currency_id = trcurr.id

where trbrand.name_en = "Toyota" and tr.price < 3000 and trcurr.name_en = "dollar"

