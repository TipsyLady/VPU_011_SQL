Use AcademyVPU_011;
go

select last_name+ ' ' + first_name + ' ' +middle_name AS N'Преподаватель',
count (teacher_discioline_relation.discipline)		  AS N'Дисциплина'
from Teachers, Disciplines, teacher_discioline_relation
where Teachers.teachers_id = teacher_discioline_relation.teacher
and Disciplines.disciplines_id = teacher_discioline_relation.discipline
group by Teachers.last_name, Teachers.first_name, Teachers.middle_name