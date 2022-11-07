


declare @projectEmployeeTotalRate table(project_id int, totalRate int)

insert into @projectEmployeeTotalRate
select project_id, sum(rate) totalRate
from employee 
join position on employee.position_id = position.id
group by project_id

select name from project 
join @projectEmployeeTotalRate as rate on project.id=rate.project_id
where totalRate > max_sum_rate