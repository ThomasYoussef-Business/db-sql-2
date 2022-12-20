/*
 * Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono
 * iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
 */

select students.surname as 'Student Surname',
       students.name	as 'Student Name',
       degrees.name	    as 'Degree Name',
       degrees.level	as 'Degree Level',
       departments.name as 'Department Name'
from dbo.students
join dbo.degrees on degrees.id = students.degree_id
join dbo.departments on departments.id = degrees.department_id
order by students.surname, students.name;