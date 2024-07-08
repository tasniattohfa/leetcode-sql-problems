select unique_id, name
from EmployeeUNI EU right join Employees E
on EU.id = E.id;
