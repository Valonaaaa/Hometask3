Create table project
(
id int NOT NULL IDENTITY(1,1),
name nvarchar(MAX),
max_sum_rate int,
primary key (id)
)

Insert into project (name, max_sum_rate)
values ('usa medical', '2000')
Insert into project (name, max_sum_rate)
values ('erp kyiv', '1800')
Insert into project (name, max_sum_rate)
values ('seeberger', '2900')
Insert into project (name, max_sum_rate)
values ('autocheck', '3300')
Insert into project (name, max_sum_rate)
values ('healthy sleep', '3000')


Create table position
(
id int NOT NULL IDENTITY(1,1),
name nvarchar(MAX),
rate int,
primary key (id)
)
Insert into position(name, rate)
values ('developer', '1000')
Insert into position(name, rate)
values ('developer', '10000')
Insert into position (name, rate)
values ('project manager', '1100')
Insert into position (name, rate)
values ('qa manual', '5000')
Insert into position (name, rate)
values ('qa auto', '700')
Insert into position (name, rate)
values ('devops', '1200')

Create table vacancies
(
id int NOT NULL IDENTITY(1,1),
position_id int,
primary key (id)
)
Insert into vacancies(position_id)
values (4)
Insert into vacancies (position_id)
values (2)
Insert into vacancies (position_id)
values (1)
Insert into vacancies (position_id)
values (5)
Insert into vacancies (position_id)
values (1)

Create table employee
(
id int NOT NULL IDENTITY(1,1),
first_name nvarchar(MAX),
last_name nvarchar(MAX),
position_id int,
project_id int,
primary key (id)
)
Insert into employee(first_name,last_name, position_id, project_id)
values ('Alona', 'Vasylchenko', 4, 4)
Insert into employee (first_name,last_name, position_id, project_id)
values ('Oleksandr', 'Chornyi', 3, 2)
Insert into employee (first_name,last_name, position_id, project_id)
values ('Anastasiia', 'Prykhodko', 2, NULL)
Insert into employee (first_name,last_name, position_id, project_id)
values ('Yurii', 'Zhyvytsia', 1, 3)
Insert into employee (first_name,last_name, position_id, project_id)
values ('Mykhailo', 'Mykhailov', 3, 4)
Insert into employee (first_name,last_name, position_id, project_id)
values ('Ihor', 'Kot', 5, 4)
Insert into employee (first_name,last_name, position_id, project_id)
values ('Daria', 'Shyder', 2, 1)

Create table equipment
(
id int NOT NULL IDENTITY(1,1),
name nvarchar(MAX),
price int,
user_id int,
primary key (id)
)
Insert into equipment(name, price, user_id)
values ('laptop hp', '1000', 1)
Insert into equipment (name, price, user_id)
values ('laptop lenovo', '900', 2)
Insert into equipment (name, price, user_id)
values ('laptop hp', '1100', 5)
Insert into equipment (name, price, user_id)
values ('pc', '800', 4)
Insert into equipment (name, price, user_id)
values ('pc', '1300', 5)
Insert into equipment (name, price, user_id)
values ('laptop acer', '700', 3)
Insert into equipment (name, price, user_id)
values ('monitor', '100', 1)
Insert into equipment (name, price, user_id)
values ('laptop lenovo', '900', 7)