CREATE DATABASE Company

DROP DATABASE Company
USE Company

CREATE TABLE Employeers(
	Id int,
	[Name] nvarchar(20),
	Surname nvarchar(30),
	WorkName nvarchar(20),
	WorkNo varchar(10),
	Salary money
)
drop table Employeers


CREATE TABLE OldEmployee(
	[Name] nvarchar(10)
)
DROP TABLE OldEmployee
	
ALTER TABLE Employeers
DROP COLUMN [Name]

exec sp_rename 'Employeers.WorkName','Job'

CREATE TABLE AssitantWorkers(
	Id int,
	[Name] nvarchar(23),
	Surname nvarchar(30),
	WorkName nvarchar(20),
	WorkNo varchar(10),
	Salary money
)
DROP TABLE AssitantWorkers

insert into Employeers
values(1,'Mammadov','Programmer','Az123',4000)

insert into AssitantWorkers
values(1,'Rashid','Mammadov','ProgrammerAssistant','Az123',3500)
insert into AssitantWorkers
values(2,'Fazil','Qliyev','ProgrammerAssistant','Az123',1500.12)
insert into AssitantWorkers
values(3,'Shemsi','Bayramov','ProgrammerAssistant','Az123',1900.77)
insert into AssitantWorkers
values(4,'Islam','Xalitov','ProgrammerAssistant','Az123',3400)
insert into AssitantWorkers
values(5,'Vahid','Salimov','ProgrammerAssistant','Az123',3000)

select * from Employeers
select * from AssitantWorkers

select [Name] as Ad,Surname as Soyad from AssitantWorkers where Salary>2000

select [Name] as Ad,Surname as Soyad from AssitantWorkers where Salary>1000 and Salary<2000