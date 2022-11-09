Declare @table1 table ( employee_id int, cost_eq_permonth int, project_id int, position_id int)

insert into @table1

Select employee.id, 
SUM(price/12) as cost_eq_permonth, project_id, position_id
from employee
left join equipment on employee.id = equipment.user_id
group by employee.id, project_id, position_id


Declare @table2 table (employee_id int, project_id int, cost int)

insert into @table2

Select 
employee_id, project_id, ISNULL(cost_eq_permonth, 0) +rate as cost
from @table1 table1 
join position on table1.position_id= position.id



Declare @table3 table (project_id int, diff int, project_name nvarchar(max))

insert @table3

Select project_id, max_sum_rate- SUM(cost) as diff, project.name
from @table2 table2 
join project on table2.project_id = project.id
group by project_id, max_sum_rate, project.name
having max_sum_rate- SUM(cost) < 0


Select first_name + ' ' + last_name as name, project_name, diff
from @table3 table3
join employee on table3.project_id = employee.project_id
