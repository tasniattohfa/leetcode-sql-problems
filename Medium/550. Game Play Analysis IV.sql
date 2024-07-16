select round(sum(case when a2.event_date = date_add(a1.event_date, interval 1 day) then 1 else 0 end) * 1.0 / count(distinct a1.player_id), 2) as fraction
from activity a1
left join activity a2
on a1.player_id = a2.player_id and a2.event_date = date_add(a1.event_date, interval 1 day)
where a1.event_date = (select min(event_date) from activity where player_id = a1.player_id);

