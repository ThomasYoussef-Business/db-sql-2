/*
 * Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
 */

 select *
 from course_teacher
 join teachers on teachers.id = course_teacher.teacher_id
 join courses on courses.id = course_teacher.course_id
 where teachers.name like 'Fulvio' and teachers.surname like 'Amato';