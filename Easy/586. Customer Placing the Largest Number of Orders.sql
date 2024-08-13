select customer_number
from Orders
group by customer_number
having count( distinct order_number ) = (
    select max(order_count) 
    from(
        select count(distinct order_number) as order_count
        from Orders 
        group by customer_number
    ) as subquery
);
