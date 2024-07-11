select r.contest_id, round((count(distinct r.user_id) * 100.0) / (select count(*) from Users), 2) as percentage
from Register r join Users u
on r.user_id = u.user_id
group by contest_id
order by percentage desc, r.contest_id asc;
