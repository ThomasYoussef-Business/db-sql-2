/*
 * Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
 */

select students.id, students.name, students.surname, students.email
from dbo.students
join dbo.[degrees] on students.degree_id = [degrees].id
where [degrees].[name] like '%Laurea in Economia%'
order by students.name, students.id;