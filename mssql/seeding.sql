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

select * from Users
select * from Companies