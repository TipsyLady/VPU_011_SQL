use AcademyVPU_011;
go

select 
last_name + N' ' + first_name + N' ' + middle_name AS N'Преподаватель',
disciplines_name AS N'Дисциплина'
from dbo.Teachers, Disciplines, teacher_discioline_relation
where teacher_discioline_relation.teacher = Teachers.teachers_id
and teacher_discioline_relation.discipline = Disciplines.disciplines_id;