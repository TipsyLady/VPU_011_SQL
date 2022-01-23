use AcademyVPU_011;
go

create table shedule
(
lesson_id int not null primary key identity (1,1),
lesson_start datetime,
[group] int constraint FK_shedule_group foreign key references [Group] (group_ID),
teacher int constraint FK_shedule_teacher foreign key references Teachers (teachers_id),
discipline int constraint FK_shedule_discipline foreign key references Disciplines (disciplines_id),
topic nvarchar(50)
)