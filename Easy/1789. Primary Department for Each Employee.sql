select employee_id, department_id
from Employee
where primary_flag = 'y'
union
select employee_id, department_id
from Employee
where employee_id in (
    select employee_id
    from Employee
    group by employee_id
    having count(*) = 1
)
order by employee_id;
