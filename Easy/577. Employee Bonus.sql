select name, bonus
from Employee e left join Bonus b
on E.empId = B.empId
where b.bonus < 1000 or b.bonus is NULL;
