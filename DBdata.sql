/*
21-43 titulacion
45-75 ciclo
















*/


INSERT INTO itec.titulacion(Nombre)
    VALUES ("Grado Medio");

SET @IdGradoMedio :=(
select itec.titulacion.titulacion_ID
from itec.titulacion
where itec.titulacion.Nombre = "Grado Medio");

INSERT INTO itec.titulacion(Nombre)
    VALUES ("Grado Superior");

SET @IdGradoSuperior :=(
select itec.titulacion.titulacion_ID
from itec.titulacion
where itec.titulacion.Nombre = "Grado Superior");

INSERT INTO itec.titulacion(Nombre)
    VALUES ("Idiomas");

SET @IdIdiomas :=(
select itec.titulacion.titulacion_ID
from itec.titulacion
where itec.titulacion.Nombre = "Idiomas");

INSERT INTO itec.ciclo (Nombre, fk_titulacion_ID)
    VALUES ("Desarrollo Aplicaciones Web", @IdGradoSuperior);

SET @IdDAW :=(
select itec.ciclo.ciclo_ID
from itec.ciclo
where itec.ciclo.Nombre = "Desarrollo Aplicaciones Web");

INSERT INTO itec.ciclo (Nombre, fk_titulacion_ID)
    VALUES ("Desarrollo Aplicaciones Multiplataforma", @IdGradoSuperior);

SET @IdDAM :=(
select itec.ciclo.ciclo_ID
from itec.ciclo
where itec.ciclo.Nombre = "Desarrollo Aplicaciones Multiplataforma");

INSERT INTO itec.ciclo (Nombre, fk_titulacion_ID)
    VALUES ("Ingles", @IdIdiomas);

SET @IdIngles:=(
select itec.ciclo.ciclo_ID
from itec.ciclo
where itec.ciclo.Nombre = "Ingles");

INSERT INTO itec.ciclo (Nombre, fk_titulacion_ID)
    VALUES ("Sistemas Microinformaticos y Redes", @IdGradoMedio);

SET @IdSMR :=(
select itec.ciclo.ciclo_ID
from itec.ciclo
where itec.ciclo.Nombre = "Sistemas Microinformaticos y Redes");

INSERT INTO itec.curso (Nombre, fk_ciclo_ID)
    VALUES ("1ºDAW",@IdDAW);

SET @Id1erDAW :=(
    select itec.curso.curso_ID
    from itec.curso
    where itec.curso.Nombre = "1ºDAW"
);

INSERT INTO itec.curso (Nombre, fk_ciclo_ID)
    VALUES ("2ºDAW",@IdDAW);

SET @Id2doDAW :=(
    select itec.curso.curso_ID
    from itec.curso
    where itec.curso.Nombre = "2ºDAW"
);

INSERT INTO itec.curso (Nombre, fk_ciclo_ID)
    VALUES ("1ºDAM",@IdDAM);

SET @Id1erDAM :=(
    select itec.curso.curso_ID
    from itec.curso
    where itec.curso.Nombre = "1ºDAM"
);

INSERT INTO itec.curso (Nombre, fk_ciclo_ID)
    VALUES ("2ºDAM",@IdDAM);

SET @Id2doDAM :=(
    select itec.curso.curso_ID
    from itec.curso
    where itec.curso.Nombre = "2ºDAM"
);

INSERT INTO itec.curso (Nombre, fk_ciclo_ID)
    VALUES ("B2",@IdIngles);

SET @IdB2 :=(
    select itec.curso.curso_ID
    from itec.curso
    where itec.curso.Nombre = "B2"
);

INSERT INTO itec.curso (Nombre, fk_ciclo_ID)
    VALUES ("C1",@IdIngles);

SET @IdC1 :=(
    select itec.curso.curso_ID
    from itec.curso
    where itec.curso.Nombre = "C1"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Sistemas Informaticos");

SET @IdSI :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Sistemas Informaticos"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Bases de Datos");

SET @IdBD :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Bases de Datos"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Formación y orientación laboral");

SET @IdFOL :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Formación y orientación laboral"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Entorno Cliente");

SET @IdEC :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Entorno Cliente"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Aplicaciones Web");

SET @IdAW :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Aplicaciones Web"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Empresas");

SET @IdEmp :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Empresas"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Speaking");

SET @IdSpe :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Speaking"
);

INSERT INTO itec.asignatura (Nombre)
    VALUES ("Lisening");

SET @IdLis :=(
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Lisening"
);

INSERT INTO itec.asignatura_curso (fk_asignatura_ID, fk_curso_ID)
    VALUES (@Id1erDAW, @IdSI);
INSERT INTO itec.asignatura_curso (fk_asignatura_ID, fk_curso_ID)
    VALUES (@Id1erDAW, @IdBD);
INSERT INTO itec.asignatura_curso (fk_asignatura_ID, fk_curso_ID)
    VALUES (@Id1erDAW, @IdFOL);

INSERT INTO itec.asignatura_curso (fk_asignatura_ID, fk_curso_ID)
    VALUES (@Id2doDAM, @IdEC);
INSERT INTO itec.asignatura_curso (fk_asignatura_ID, fk_curso_ID)
    VALUES (@Id2doDAM, @IdAW);
INSERT INTO itec.asignatura_curso (fk_asignatura_ID, fk_curso_ID)
    VALUES (@Id2doDAM, @IdEmp);

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("11111111A","Ignacio","Nuñez","Tejera","1978-9-18");

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("22222222B","Jose Luis","Picaro","Abana","1985-1-5");

