select s.user_id,   ROUND(COALESCE(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(c.user_id), 0),2) confirmation_rate
from Signups s left join Confirmations c
on s.user_id = c.user_id
group by 1;
