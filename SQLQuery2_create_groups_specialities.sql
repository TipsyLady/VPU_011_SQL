use SQLAcademyVPU_011;
go

--create table specialities
--(
--speciality_id INT not null primary key identity (1,1),
--speciality_name nvarchar (40)
--);
--go

create table groups
(
group_id int not null primary key identity (1,1),
group_name nvarchar(30)
);
go

select *from sys.tables;