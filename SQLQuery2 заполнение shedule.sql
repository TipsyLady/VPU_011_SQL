use AcademyVPU_011;
go

delete from shedule where discipline = 1

declare @start_date AS datetime = '2022-16-01 11:40'
declare @end_date	AS datetime = '2022-16-03 10:00'
declare @i AS datetime = @start_date

while(@i < @end_date)
begin
insert into shedule(lesson_start, [group], teacher, discipline)
values (@i, 2, 1, 1)

set @i = @i+7;
end
go

select lesson_start,
		group_name,
		last_name+ ' ' + first_name + ' ' +middle_name,
		disciplines_name
from shedule, [Group], Teachers, Disciplines
where shedule.[group]	= group_ID
and shedule.teacher		= teachers_id
and shedule.discipline	= disciplines_id
order by lesson_start