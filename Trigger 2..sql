create trigger new_project_manager
on project
after insert
as
insert into vacancies(id, position_id)
Values ((Select Distinct Max(id)+1 from vacancies),
(Select distinct position.id from position
where name = 'position_name_26'))




--Insert into project (id, name, max_sum_rate)
--values ((select Max(id)+1 from project), 'ola', '2000')
