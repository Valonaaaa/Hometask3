declare @TotalRateHigherThanBudget table(project_id int, name nvarchar(max))


insert into @TotalRateHigherThanBudget


Select project.id, project.name from employee
left join project on project.id = employee.project_id
left join position on position.id = employee.position_id
group by project.id, project.name, max_sum_rate
having max_sum_rate < SUM(rate)

select first_name + ' ' + last_name as user_name,
table1.name
from employee
join @TotalRateHigherThanBudget as table1 on  employee.project_id =table1.project_id

