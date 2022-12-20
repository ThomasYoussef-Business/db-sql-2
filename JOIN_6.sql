/*
 * Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
 */

select distinct teachers.name as 'Teacher''s Name',
                teachers.surname as 'Teacher''s Surname',
                teachers.phone as 'Teacher''s Phone number',
                teachers.email as 'Teacher''s Email',
                teachers.office_address as 'Teacher''s Office Address',
                teachers.office_number as 'Teacher''s Office Number'
from teachers
join course_teacher on course_teacher.teacher_id = teachers.id
join courses on courses.id = course_teacher.course_id
join degrees on degrees.id = courses.degree_id
join departments on departments.id = degrees.department_id
where departments.name like '%Matematica'
order by teachers.name, teachers.surname;