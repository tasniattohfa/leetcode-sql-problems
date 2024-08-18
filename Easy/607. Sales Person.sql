select distinct s.name 
from SalesPerson s
where s.sales_id not in (
    select o.sales_id
    from Orders o
    join Company c
    on o.com_id = c.com_id
    where c.name = 'RED'
);
