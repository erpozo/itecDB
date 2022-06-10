/*
 _____  _  _           _               _               
|_   _|(_)| |         | |             (_)              
  | |   _ | |_  _   _ | |  __ _   ___  _   ___   _ __  
  | |  | || __|| | | || | / _` | / __|| | / _ \ | '_ \ 
  | |  | || |_ | |_| || || (_| || (__ | || (_) || | | |
  \_/  |_| \__| \__,_||_| \__,_| \___||_| \___/ |_| |_|

@IdGradoMedio
@IdGradoSuperior
@IdIdiomas
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

/*
 _____  _        _        
/  __ \(_)      | |       
| /  \/ _   ___ | |  ___  
| |    | | / __|| | / _ \ 
| \__/\| || (__ | || (_) |
 \____/|_| \___||_| \___/ 
                          
@IdDAW
@IdDAM
@IdIngles                   
@IdSMR
*/

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


/*
 _____                          
/  __ \                         
| /  \/ _   _  _ __  ___   ___  
| |    | | | || '__|/ __| / _ \ 
| \__/\| |_| || |   \__ \| (_) |
 \____/ \__,_||_|   |___/ \___/ 
                                
@Id1erDAW  
@Id2doDAW
@Id1erDAM 
@Id2doDAM
@IdB2
@IdC1            
*/

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

/*
  ___        _                       _                       
 / _ \      (_)                     | |                      
/ /_\ \ ___  _   __ _  _ __    __ _ | |_  _   _  _ __   __ _ 
|  _  |/ __|| | / _` || '_ \  / _` || __|| | | || '__| / _` |
| | | |\__ \| || (_| || | | || (_| || |_ | |_| || |   | (_| |
\_| |_/|___/|_| \__, ||_| |_| \__,_| \__| \__,_||_|    \__,_|
                 __/ |                                       
                |___/                                        
@IdSI   Sistemas Informaticos
@IdBD   Bases de Datos
@IdFOL  Formacion y orientación laboral
@IdEC   Entorno Cliente
@IdAW   Aplicaciones Web
@IdEmp  Empresas
@IdSpe  Speaking
@IdLis  Lisening
*/

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

/*______  _   __          ___        _                       _                                _____                          
|  ___|| | / /         / _ \      (_)                     | |                              /  __ \                         
| |_   | |/ /         / /_\ \ ___  _   __ _  _ __    __ _ | |_  _   _  _ __   __ _         | /  \/ _   _  _ __  ___   ___  
|  _|  |    \         |  _  |/ __|| | / _` || '_ \  / _` || __|| | | || '__| / _` |        | |    | | | || '__|/ __| / _ \ 
| |    | |\  \        | | | |\__ \| || (_| || | | || (_| || |_ | |_| || |   | (_| |        | \__/\| |_| || |   \__ \| (_) |
\_|    \_| \_/        \_| |_/|___/|_| \__, ||_| |_| \__,_| \__| \__,_||_|    \__,_|         \____/ \__,_||_|   |___/ \___/ 
               ______                  __/ |                                        ______                                 
              |______|                |___/                                        |______|                      
1erDAW = [SI,BD,FOL]
2doDAW = [EC,AW,Emp]
IdB2 = [Spe,Lis]
IdC1 = [Spe,Lis]
*/
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@Id1erDAW, @IdSI);
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@Id1erDAW, @IdBD);
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@Id1erDAW, @IdFOL);

INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@Id2doDAM, @IdEC);
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@Id2doDAM, @IdAW);
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@Id2doDAM, @IdEmp);

INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@IdB2, @IdSpe);
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@IdB2, @IdLis);

INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@IdC1, @IdSpe);
INSERT INTO itec.asignatura_curso (fk_curso_ID,fk_asignatura_ID)
    VALUES (@IdC1, @IdLis);

/*
______                __                         
| ___ \              / _|                        
| |_/ / _ __   ___  | |_   ___  ___   ___   _ __ 
|  __/ | '__| / _ \ |  _| / _ \/ __| / _ \ | '__|
| |    | |   | (_) || |  |  __/\__ \| (_) || |   
\_|    |_|    \___/ |_|   \___||___/ \___/ |_|   
                                                 
@IdIgNu Ignacio
@IdJoLu Jose Luis
@IdRaOl Ramón
@IdLaRa Laura
@IdCaGa Carmen
*/

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("11111111A","Ignacio","Nuñez","Tejera","1978-9-18");

SET @IdIgNu :=(
    select itec.profesor.profesor_ID
    from itec.profesor
    where itec.profesor.Nombre = "Ignacio" and itec.profesor.Apellido1 = "Nuñez"
);

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("22222222B","Jose Luis","Picaro","Abana","1985-1-5");

SET @IdJoLu :=(
    select itec.profesor.profesor_ID
    from itec.profesor
    where itec.profesor.Nombre = "Jose Luis" and itec.profesor.Apellido1 = "Picaro"
);

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("33333333C","Ramón","Olmedo","Bueno","1990-2-5");

SET @IdRaOl :=(
    select itec.profesor.profesor_ID
    from itec.profesor
    where itec.profesor.Nombre = "Ramón" and itec.profesor.Apellido1 = "Olmedo"
);

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("44444444D","Laura","Ramirez","Perez","1990-3-5");

SET @IdLaRa :=(
    select itec.profesor.profesor_ID
    from itec.profesor
    where itec.profesor.Nombre = "Laura" and itec.profesor.Apellido1 = "Ramirez"
);

INSERT INTO itec.profesor (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("55555555E","Carmen","Gamez","Carmona","1990-4-5");

SET @IdCaGa :=(
    select itec.profesor.profesor_ID
    from itec.profesor
    where itec.profesor.Nombre = "Carmen" and itec.profesor.Apellido1 = "Gamez"
);

/*
_____  _   __        ______                __                                   ___        _                       _                       
|  ___|| | / /        | ___ \              / _|                                 / _ \      (_)                     | |                      
| |_   | |/ /         | |_/ / _ __   ___  | |_   ___  ___   ___   _ __         / /_\ \ ___  _   __ _  _ __    __ _ | |_  _   _  _ __   __ _ 
|  _|  |    \         |  __/ | '__| / _ \ |  _| / _ \/ __| / _ \ | '__|        |  _  |/ __|| | / _` || '_ \  / _` || __|| | | || '__| / _` |
| |    | |\  \        | |    | |   | (_) || |  |  __/\__ \| (_) || |           | | | |\__ \| || (_| || | | || (_| || |_ | |_| || |   | (_| |
\_|    \_| \_/        \_|    |_|    \___/ |_|   \___||___/ \___/ |_|           \_| |_/|___/|_| \__, ||_| |_| \__,_| \__| \__,_||_|    \__,_|
               ______                                                   ______                  __/ |                                       
              |______|                                                 |______|                |___/                                        

IgNu [SI,AW]
JoLu [BD,EC]
CaGa [FOL,Emp]
LaRa [Spe,Lis]
*/

INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdSI, @IdIgNu);
INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdAW, @IdIgNu);

INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdBD, @IdJoLu);
INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdEC, @IdJoLu);

INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdFOL, @IdCaGa);
INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdEmp, @IdCaGa);

INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdSpe, @IdLaRa);
INSERT INTO itec.profesor_asignatura (fk_asignatura_ID, fk_profesor_ID)
    VALUES (@IdLis, @IdLaRa);

/*
  ___   _                                      
 / _ \ | |                                     
/ /_\ \| | _   _  _ __ ___   _ __    ___   ___ 
|  _  || || | | || '_ ` _ \ | '_ \  / _ \ / __|
| | | || || |_| || | | | | || | | || (_) |\__ \
\_| |_/|_| \__,_||_| |_| |_||_| |_| \___/ |___/

IdDaPo  David Pozo
IdKike  Kike
IdAlSa  Alberto
IdGeRu  Gema
IdRuEl  Ruben
IdPePo  Pedro
IdSeRo  Sergio
IdJuMa  Juan
*/

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("26304646Y","David","Pozo","AdminDB","2003-7-28");

SET @IdDaPo :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "David" and itec.alumno.Apellido1 = "Pozo"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("99999999B","Kike","Ama","PHP","2000-1-1");

SET @IdKike :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Kike" and itec.alumno.Apellido1 = "Ama"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("88888888C","Alberto","Sanchez","Torreblanca","2000-2-1");

SET @IdAlSa :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Alberto" and itec.alumno.Apellido1 = "Sanchez"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("7777777D","Gema","Ruiz","Pacheco","2005-8-2");

SET @IdGeRu :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Gema" and itec.alumno.Apellido1 = "Ruiz"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("66666666T","Ruben","El","Rapido","1998-3-1");

SET @IdRuEl :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Ruben" and itec.alumno.Apellido1 = "El"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("15748624W","Pedro","Por","Sucasa","1998-4-2");

SET @IdPePo :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Pedro" and itec.alumno.Apellido1 = "Por"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("74862594P","Sergio","Rodrigez","Paez","1998-5-2");

SET @IdSeRo :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Sergio" and itec.alumno.Apellido1 = "Rodrigez"
);

INSERT INTO itec.alumno (DNI,Nombre,Apellido1,Apellido2,FechaNacimiento)
    VALUES ("16497532G","Juan","Maestro","Bueno","1995-6-2");

SET @IdJuMa :=(
    select itec.alumno.alumno_ID
    from itec.alumno
    where itec.alumno.Nombre = "Juan" and itec.alumno.Apellido1 = "Maestro"
);

/*
_____  _   __          ___   _                                                ___        _                       _                       
|  ___|| | / /         / _ \ | |                                              / _ \      (_)                     | |                      
| |_   | |/ /         / /_\ \| | _   _  _ __ ___   _ __    ___   ___         / /_\ \ ___  _   __ _  _ __    __ _ | |_  _   _  _ __   __ _ 
|  _|  |    \         |  _  || || | | || '_ ` _ \ | '_ \  / _ \ / __|        |  _  |/ __|| | / _` || '_ \  / _` || __|| | | || '__| / _` |
| |    | |\  \        | | | || || |_| || | | | | || | | || (_) |\__ \        | | | |\__ \| || (_| || | | || (_| || |_ | |_| || |   | (_| |
\_|    \_| \_/        \_| |_/|_| \__,_||_| |_| |_||_| |_| \___/ |___/        \_| |_/|___/|_| \__, ||_| |_| \__,_| \__| \__,_||_|    \__,_|
               ______                                                 ______                  __/ |                                       
              |______|                                               |______|                |___/ 

IdDaPo = [IdSI,IdBD]
IdKike = [IdEC,IdAW,IdEmp]
IdAlSa = [IdBD,IdAW,IdLis]
IdGeRu = [IdSpe,IdLis,IdFOL]
IdRuEl = [IdSI,IdBD,IdFOL]
IdPePo = [IdEC,IdAW,IdEmp]
IdSeRo = [IdSI,IdBD,IdFOL]
IdJuMa = [IdSI,IdBD,IdEC,IdAW,IdFOL]
*/


INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdDaPo, @IdSI);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdDaPo, (
    select itec.asignatura.asignatura_ID
    from itec.asignatura
    where itec.asignatura.Nombre = "Bases de Datos"
));

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdKike, @IdEC);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdKike, @IdAW);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdKike, @IdEmp);

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdAlSa, @IdBD);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdAlSa, @IdAW);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdAlSa, @IdLis);

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdGeRu, @IdSpe);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdGeRu, @IdLis);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdGeRu, @IdFOL);

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdRuEl, @IdSI);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdRuEl, @IdBD);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdRuEl, @IdFOL);

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdPePo, @IdEC);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdPePo, @IdAW);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdPePo, @IdEmp);

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdSeRo, @IdSI);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdSeRo, @IdBD);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdSeRo, @IdFOL);

INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdJuMa, @IdSI);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdJuMa, @IdBD);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdJuMa, @IdEC);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdJuMa, @IdAW);
INSERT INTO itec.alumno_asignatura (fk_alumno_ID, fk_asignatura_ID)
    VALUES (@IdJuMa, @IdFOL);

/*
 _____         _  _   __  _                     _               
/  __ \       | |(_) / _|(_)                   (_)              
| /  \/  __ _ | | _ | |_  _   ___   __ _   ___  _   ___   _ __  
| |     / _` || || ||  _|| | / __| / _` | / __|| | / _ \ | '_ \ 
| \__/\| (_| || || || |  | || (__ | (_| || (__ | || (_) || | | |
 \____/ \__,_||_||_||_|  |_| \___| \__,_| \___||_| \___/ |_| |_|
                                                                
IdDaPo = [IdSI,IdBD]
IdKike = [IdEC,IdAW,IdEmp]
IdAlSa = [IdBD,IdAW,IdLis]
IdGeRu = [IdSpe,IdLis,IdFOL]
IdRuEl = [IdSI,IdBD,IdFOL]
IdPePo = [IdEC,IdAW,IdEmp]
IdSeRo = [IdSI,IdBD,IdFOL]
IdJuMa = [IdSI,IdBD,IdEC,IdAW,IdFOL]
*/

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (9,@IdDaPo,@IdSI);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (9,@IdDaPo,@IdBD);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (8,@IdKike,@IdEC);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (9,@IdKike,@IdAW);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (7,@IdKike,@IdEmp);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (8,@IdAlSa,@IdBD);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (9,@IdAlSa,@IdAW);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (7,@IdAlSa,@IdLis);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (6,@IdGeRu,@IdSpe);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdGeRu,@IdLis);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdGeRu,@IdFOL);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (6,@IdRuEl,@IdSI);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdRuEl,@IdBD);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdRuEl,@IdFOL);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (6,@IdPePo,@IdSI);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (3,@IdPePo,@IdAW);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdPePo,@IdEmp);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (7,@IdSeRo,@IdEC);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (8,@IdSeRo,@IdBD);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (8,@IdSeRo,@IdFOL);

INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (6,@IdJuMa,@IdSI);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdJuMa,@IdBD);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (6,@IdJuMa,@IdSI);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdJuMa,@IdAW);
INSERT INTO itec.calificacion (Nota, fk_alumno_ID, fk_asignatura_ID)
    VALUES (5,@IdJuMa,@IdFOL);