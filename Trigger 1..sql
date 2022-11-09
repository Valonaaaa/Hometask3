
use [Hometask 3]
go
create trigger new_project_manager
on project
after insert
as
SET IDENTITY_INSERT vacancies off
insert into vacancies
Select(select position.id from position
where name = 'project manager')


--Insert into project (name, max_sum_rate)
--values ('ola', '2000')
