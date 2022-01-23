use AcademyVPU_011;
go


select
Disciplines.disciplines_name AS 'Дисциплина',
count (teacher) AS N'Количество преподавателей'
from Disciplines, teacher_discioline_relation
where discipline = disciplines_id
group by disciplines_name;