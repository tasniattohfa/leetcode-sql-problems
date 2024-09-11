select request_at as Day, 
round(sum(status in ('cancelled_by_client' , 'cancelled_by_driver'))/count(*),2) as 'Cancellation Rate' 
from Trips
where 
client_id not in (select users_id from Users where Banned = 'Yes' and role = 'client') and
driver_id not in (select users_id from Users where Banned = 'Yes' and role = 'driver') and
request_at between '2013-10-01' and '2013-10-03'
group by request_at;
