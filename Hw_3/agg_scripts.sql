-- 1 Количество менеджеров в каждом департаменте
select 
	department_name,
    count(distinct managerID) as manager_count
from employee_dds
where managerID is not null
group by 1

-- 2 Количество сотрудников (не менеджеров) в каждом департаменте
select 
	department_name,
    count(distinct EmployeeID) as employee_count
from employee_dds
where managerID is null
group by 1
