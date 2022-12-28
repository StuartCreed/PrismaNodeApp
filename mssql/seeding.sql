use master
drop table Users
drop table Companies


CREATE table Companies (
    CompanyId int IDENTITY primary key,
    CompanyName VARCHAR(100)
)

create table Users (
    UserId int IDENTITY primary key,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Company int REFERENCES Companies(CompanyId)
)

insert into Companies values ('Airbus'), ('Esso'), ('Poole Bay Holdings')
insert into Users values ('Bob', 'Smith', 1), ('Sam', 'Smith', 1), ('Alex', 'Yakens', 2), ('Stuart', 'Creed', 3)
insert into Users values ('Luke', 'Eurke', null)

select FirstName as "First Name", LastName as "Last Name", CompanyName as "Company Name" from Users left join Companies on Users.Company = Companies.CompanyId