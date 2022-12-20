/*
 * Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
 */

select departments.[name], [degrees].[name], [degrees].[level]
from dbo.departments
join dbo.[degrees] on [degrees].department_id = departments.id
where departments.[name] like '%Neuroscienze%' and [degrees].[level] like 'Magistrale';