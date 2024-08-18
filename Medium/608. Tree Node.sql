select t.id,
case 
    when t.p_id is null then 'Root'
    when t.id in ( select distinct p_id from Tree ) then 'Inner'
    else 'Leaf' 
    end as type
from tree t;
