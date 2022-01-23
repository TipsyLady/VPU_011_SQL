use SQLAcademyVPU_011;
go

--create table students
--(
--student_id int not null primary key identity (1,1),
--last_name nvarchar (40),
--first_name nvarchar (40),
--middle_name nvarchar (40),
--birth_date date,
--study_group int constraint FK_student_group foreign key references dbo.groups (group_id),
--speciality int constraint FK_students_speciality foreign key references dbo.specialities (speciality_id),
--rating real constraint rating_check check( rating >= 0 AND rating <=100),
--attendance real constraint attendance_check check (attendance >= 0 AND attendance <=100)
--);

--create table teachers
--(
--teachers_id int not null primary key identity (1,1),
--last_name nvarchar (40),
--first_name nvarchar (40),
--middle_name nvarchar (40),
--speciality int constraint FK_teachers_speciality foreign key references dbo.specialities (speciality_id)
--);

--create table disciplines
--(
--disciplines_id int not null primary key identity (1,1),
--disciplines_name int constraint FK_dicsiplines_speciality foreign key references dbo.specialities (speciality_id)
--);

--create table schedule
--(
--schedule_id int not null primary key identity (1,1),
--object_n int constraint FK_Schedule_disciplines foreign key references dbo.disciplines (disciplines_id)
--);

create table grades
(
grades_id int not null primary key identity (1,1),
grades int constraint FK_Students_grades foreign key references dbo.students (student_id)
);

go

select *from sys.tables;