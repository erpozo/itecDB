/*Listado de las asignaturas del centro*/

SELECT
	itec.asignatura.Nombre
from
	itec.asignatura;
    
/*Listado de todos los alumno del centro*/

select
	concat(itec.alumno.Nombre," ", itec.alumno.Apellido1," ", itec.alumno.Apellido2)as NombreCompleto,
    itec.alumno.DNI,
    itec.alumno.FechaNacimiento
from itec.alumno;

/*Profesor que da cada asignatura*/

select
	itec.asignatura.Nombre,
	concat(itec.profesor.Nombre," ", itec.profesor.Apellido1) as Profesor
from itec.asignatura
    left join itec.profesor_asignatura on itec.asignatura.asignatura_ID = itec.profesor_asignatura.fk_asignatura_ID
    left join itec.profesor on itec.profesor_asignatura.fk_profesor_ID = itec.profesor.profesor_ID;

/*Cuantos alumno cursan cada asignatura*/

select
	itec.asignatura.Nombre,
    count(itec.alumno.alumno_ID) as NumAlumos
from itec.asignatura
	left join itec.alumno_asignatura on itec.asignatura.asignatura_ID = itec.alumno_asignatura.fk_asignatura_ID
    left join itec.alumno on itec.alumno_asignatura.fk_alumno_ID = itec.alumno.alumno_ID
group by itec.asignatura.Nombre;

/*Nota media de alumno que cursan idiomas*/

select
	concat(itec.alumno.Nombre," ", itec.alumno.Apellido1) as alumno,
	avg(itec.calificacion.Nota)
from itec.alumno
	left join itec.calificacion on itec.alumno.alumno_ID = itec.calificacion.fk_alumno_ID
where itec.alumno.alumno_ID in (
	select
		itec.alumno.alumno_ID
	from itec.alumno
		left join itec.alumno_asignatura on itec.alumno.alumno_ID = itec.alumno_asignatura.fk_alumno_ID
		left join itec.asignatura on itec.alumno_asignatura.fk_asignatura_ID = itec.asignatura.asignatura_ID
		left join itec.asignatura_curso on itec.asignatura.asignatura_ID = itec.asignatura_curso.fk_asignatura_ID
		left join itec.curso on itec.asignatura_curso.fk_curso_ID = itec.curso.curso_ID
		left join itec.ciclo on itec.curso.fk_ciclo_ID = itec.ciclo.ciclo_ID
		left join itec.titulacion on itec.ciclo.fk_titulacion_ID = itec.titulacion.titulacion_ID
	where itec.titulacion.Nombre = "Idiomas"
)
group by alumno;

/*Cuantos alumno suspensos tiene cada profesor*/

select
	concat(itec.profesor.Nombre," ", itec.profesor.Apellido1) as Profesor,
    count(itec.alumno.alumno_ID) as Numalumno
from itec.profesor
	left join itec.profesor_asignatura on itec.profesor.profesor_ID = itec.profesor_asignatura.fk_profesor_ID
    left join itec.alumno_asignatura on itec.profesor_asignatura.fk_asignatura_ID = itec.alumno_asignatura.fk_asignatura_ID
    left join itec.alumno on itec.alumno_asignatura.fk_alumno_ID = itec.alumno.alumno_ID
where itec.alumno.alumno_ID in (
	select 
		itec.alumno.alumno_ID
	from itec.alumno
		left join itec.calificacion on itec.calificacion.fk_alumno_ID = itec.alumno.alumno_ID
	where itec.calificacion.Nota < 5
)
group by Profesor;





