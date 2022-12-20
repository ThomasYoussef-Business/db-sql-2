/*
 * Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
 */

select teachers.name       as 'Teacher''s Name',
       teachers.surname    as 'Teacher''s Surname',
       degrees.name        as 'Degree',
       degrees.level       as 'Degree Level',
       courses.name        as 'Course',
       courses.description as 'Course Description',
       courses.cfu         as 'Course CFU'
from dbo.teachers
join dbo.course_teacher on course_teacher.teacher_id = teachers.id
join dbo.courses on courses.id = course_teacher.course_id
join dbo.degrees on degrees.id = courses.degree_id
order by teachers.name, teachers.surname, Degree