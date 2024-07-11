select p.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) average_price
from Prices p left join UnitsSold u
on p.product_id = u.product_id and
u.purchase_date between start_date and end_date
group by 1;
