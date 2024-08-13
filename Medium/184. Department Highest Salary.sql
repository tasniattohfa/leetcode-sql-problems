select d.name as Department, e.name as Employee , e.salary as Salary
from Department d 
join Employee e 
on d.id = e.departmentId
where e.salary = (
    select max(e2.salary)
    from Employee e2
    where e2.departmentId = e.departmentId
);
