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
    Company int REFERENCES Companies(CompanyId)
)

-- insert into Users values ('Bob', 1);

select * from Users
select * from Companies