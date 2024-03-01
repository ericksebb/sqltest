CREATE TABLE Asignaturas (
 NombreProfesor VARCHAR(30),
 NombreMateria VARCHAR(10),
 NombreCarrera VARCHAR(10),
 HoraInicio VARCHAR(5),
 HoraFin VARCHAR(5),
 PRIMARY KEY (NombreProfesor, NombreCarrera)
);

CREATE TABLE Alumno (
 NombreAlumno VARCHAR(30),
 Ciclo VARCHAR(3),
 NombreCarrera VARCHAR(10),
 PRIMARY KEY (NombreAlumno),
 FOREIGN KEY (NombreCarrera) REFERENCES Asignaturas(NombreCarrera)
);

CREATE TABLE PC (
 NumeroPC INT(2),
 ObservacionPC VARCHAR(30),
 PRIMARY KEY (NumeroPC)
);

CREATE TABLE Laboratorio (
 NumeroLaboratorio INT(1),
 NumeroPC INT(2),
 PRIMARY KEY (NumeroLaboratorio, NumeroPC),
 FOREIGN KEY (NumeroPC) REFERENCES PC(NumeroPC)
);

CREATE TABLE Registro (
 NumeroLaboratorio INT(1),
 NumeroPC INT(2),
 NombreAlumno VARCHAR(30),
 HoraInicio TIME,
 HoraFin TIME,
 PRIMARY KEY (NumeroLaboratorio, NumeroPC, NombreAlumno),
 FOREIGN KEY (NumeroLaboratorio, NumeroPC) REFERENCES Laboratorio(NumeroLaboratorio, NumeroPC),
 FOREIGN KEY (NombreAlumno) REFERENCES Alumno(NombreAlumno)
);