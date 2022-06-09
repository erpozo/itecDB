drop database itec;

create database itec;

create table itec.alumnos (
	alumnos_ID INT AUTO_INCREMENT PRIMARY KEY,
    DNI CHAR(9) NOT NULL UNIQUE,
    Nombre varchar(20) NOT NULL,
    Apellido1 varchar(20),
    Apellido2 varchar(20),
    FechaNacimiento date
);

create table itec.profesor (
	profesor_ID INT AUTO_INCREMENT PRIMARY KEY,
    DNI CHAR(9) NOT NULL UNIQUE,
    Nombre varchar(20) NOT NULL,
    Apellido1 varchar(20),
    Apellido2 varchar(20),
    FechaNacimiento date
);


create table itec.titulacion (
    titulacion_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre CHAR(30) NOT NULL UNIQUE
);

create table itec.ciclo (
    ciclo_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre CHAR(50) NOT NULL UNIQUE,
    fk_titulacion_ID INT not null,
    FOREIGN KEY (fk_titulacion_ID) REFERENCES itec.titulacion (titulacion_ID)
);

create table itec.curso (
	curso_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(20) NOT NULL UNIQUE,
    fk_ciclo_ID INT not null,
    FOREIGN KEY (fk_ciclo_ID) REFERENCES itec.ciclo (ciclo_ID)
);

create table itec.asignatura (
	asignatura_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre varchar(50) NOT NULL UNIQUE
);

create table itec.calificacion (
    calificacion_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nota int check (Nota <=0 and Nota >= 10) not null,
    fk_alumnos_ID INT not null,
    FOREIGN KEY (fk_alumnos_ID) REFERENCES itec.alumnos (alumnos_ID),
    fk_asignatura_ID INT not null,
    FOREIGN KEY (fk_asignatura_ID) REFERENCES itec.asignatura (asignatura_ID),
    fk_profesor_ID INT,
    FOREIGN KEY (fk_profesor_ID) REFERENCES itec.profesor (profesor_ID)
);

create table itec.alumno_curso (
    fk_alumnos_ID INT not null,
    FOREIGN KEY (fk_alumnos_ID) REFERENCES itec.alumnos (alumnos_ID),
    fk_curso_ID INT not null,
    FOREIGN KEY (fk_curso_ID) REFERENCES itec.curso (curso_ID)
);

create table itec.asignatura_curso (
    fk_asignatura_ID INT not null,
    FOREIGN KEY (fk_asignatura_ID) REFERENCES itec.asignatura (asignatura_ID),
    fk_curso_ID INT not null,
    FOREIGN KEY (fk_curso_ID) REFERENCES itec.curso (curso_ID)
);

create table itec.profesor_asignatura (
    fk_asignatura_ID INT not null,
    FOREIGN KEY (fk_asignatura_ID) REFERENCES itec.asignatura (asignatura_ID),
    fk_profesor_ID INT,
    FOREIGN KEY (fk_profesor_ID) REFERENCES itec.profesor (profesor_ID)
);