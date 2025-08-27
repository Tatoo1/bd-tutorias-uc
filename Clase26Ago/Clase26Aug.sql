CREATE TABLE Estudiantes (
    id_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Correo_E VARCHAR(40) UNIQUE NOT NULL,
    Carrera VARCHAR(20) NOT NULL
);

CREATE TABLE Docentes (
    id_Docente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Correo_D VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE Materias (
    id_Materia INT AUTO_INCREMENT PRIMARY KEY,
    id_Docente INT NOT NULL,
    Creditos_Materia INT NOT NULL,
    FOREIGN KEY (id_Docente) REFERENCES Docentes(id_Docente)
);

CREATE TABLE Inscripciones (
    id_Estudiante INT NOT NULL,
    id_Materia INT NOT NULL,
    Fecha_Inscripcion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Nota FLOAT,
    PRIMARY KEY (id_Estudiante, id_Materia),
    FOREIGN KEY (id_Estudiante) REFERENCES Estudiantes(id_Estudiante),
    FOREIGN KEY (id_Materia) REFERENCES Materias(id_Materia)
);

CREATE TABLE Tutorías (
    id_Tutorías INT AUTO_INCREMENT PRIMARY KEY,
    id_Estudiante INT NOT NULL,
    Tema VARCHAR(20) NOT NULL,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    FOREIGN KEY (id_Estudiante) REFERENCES Estudiantes(id_Estudiante)
);

CREATE TABLE Registro_Tutorías (
    id_Docente INT NOT NULL,
    id_Tutorías INT NOT NULL,
    Comentario VARCHAR(255),
    Hora TIME,
    PRIMARY KEY (id_Docente, id_Tutorías),
    FOREIGN KEY (id_Docente) REFERENCES Docentes(id_Docente),
    FOREIGN KEY (id_Tutorías) REFERENCES Tutorías(id_Tutorías)
);

INSERT INTO Estudiantes (Nombre, Apellido, Correo_E, Carrera) VALUES
('Juan', 'Pérez', 'juan.perez1@ucentral.edu.co', 'Ingeniería'),
('María', 'López', 'maria.lopez2@ucentral.edu.co', 'Derecho'),
('Carlos', 'Martínez', 'carlos.martinez3@ucentral.edu.co', 'Medicina'),
('Ana', 'Gómez', 'ana.gomez4@ucentral.edu.co', 'Psicología'),
('Luis', 'Rodríguez', 'luis.rodriguez5@ucentral.edu.co', 'Arquitectura'),
('Sofía', 'Hernández', 'sofia.hernandez6@ucentral.edu.co', 'Ingeniería'),
('Pedro', 'Díaz', 'pedro.diaz7@ucentral.edu.co', 'Economía'),
('Camila', 'Torres', 'camila.torres8@ucentral.edu.co', 'Administración'),
('Andrés', 'Ramírez', 'andres.ramirez9@ucentral.edu.co', 'Contaduría'),
('Valentina', 'Castro', 'valentina.castro10@ucentral.edu.co', 'Ingeniería'),
('Diego', 'Gutiérrez', 'diego.gutierrez11@ucentral.edu.co', 'Biología'),
('Laura', 'Jiménez', 'laura.jimenez12@ucentral.edu.co', 'Medicina'),
('Mateo', 'Vargas', 'mateo.vargas13@ucentral.edu.co', 'Derecho'),
('Isabella', 'Morales', 'isabella.morales14@ucentral.edu.co', 'Ingeniería'),
('Julián', 'Ortiz', 'julian.ortiz15@ucentral.edu.co', 'Psicología'),
('Daniela', 'Rojas', 'daniela.rojas16@ucentral.edu.co', 'Administración'),
('Felipe', 'Guerrero', 'felipe.guerrero17@ucentral.edu.co', 'Economía'),
('Gabriela', 'Mendoza', 'gabriela.mendoza18@ucentral.edu.co', 'Medicina'),
('Samuel', 'Cortés', 'samuel.cortes19@ucentral.edu.co', 'Ingeniería'),
('Paula', 'Silva', 'paula.silva20@ucentral.edu.co', 'Arquitectura'),
('Martín', 'Reyes', 'martin.reyes21@ucentral.edu.co', 'Derecho'),
('Lucía', 'Ruiz', 'lucia.ruiz22@ucentral.edu.co', 'Psicología'),
('Sebastián', 'Pardo', 'sebastian.pardo23@ucentral.edu.co', 'Ingeniería'),
('Manuela', 'Peña', 'manuela.pena24@ucentral.edu.co', 'Economía'),
('Tomás', 'Salazar', 'tomas.salazar25@ucentral.edu.co', 'Medicina'),
('Fernanda', 'Suárez', 'fernanda.suarez26@ucentral.edu.co', 'Contaduría'),
('Santiago', 'Cárdenas', 'santiago.cardenas27@ucentral.edu.co', 'Ingeniería'),
('Natalia', 'Moreno', 'natalia.moreno28@ucentral.edu.co', 'Administración'),
('Alejandro', 'Vega', 'alejandro.vega29@ucentral.edu.co', 'Psicología'),
('Carolina', 'Delgado', 'carolina.delgado30@ucentral.edu.co', 'Derecho'),
('Daniel', 'Ramón', 'daniel.ramon31@ucentral.edu.co', 'Medicina'),
('Juliana', 'Quintero', 'juliana.quintero32@ucentral.edu.co', 'Ingeniería'),
('Óscar', 'Navarro', 'oscar.navarro33@ucentral.edu.co', 'Economía'),
('Vanessa', 'Álvarez', 'vanessa.alvarez34@ucentral.edu.co', 'Arquitectura'),
('David', 'Parra', 'david.parra35@ucentral.edu.co', 'Contaduría'),
('Adriana', 'Forero', 'adriana.forero36@ucentral.edu.co', 'Ingeniería'),
('Cristian', 'Bermúdez', 'cristian.bermudez37@ucentral.edu.co', 'Medicina'),
('Fabián', 'León', 'fabian.leon38@ucentral.edu.co', 'Administración'),
('Angie', 'Romero', 'angie.romero39@ucentral.edu.co', 'Psicología'),
('Hernán', 'Cruz', 'hernan.cruz40@ucentral.edu.co', 'Derecho'),
('Laura', 'Rincón', 'laura.rincon41@ucentral.edu.co', 'Biología'),
('Ricardo', 'Ospina', 'ricardo.ospina42@ucentral.edu.co', 'Ingeniería'),
('Nataly', 'Avila', 'nataly.avila43@ucentral.edu.co', 'Medicina'),
('Camilo', 'Zapata', 'camilo.zapata44@ucentral.edu.co', 'Economía'),
('Mónica', 'Serrano', 'monica.serrano45@ucentral.edu.co', 'Administración'),
('Esteban', 'Mejía', 'esteban.mejia46@ucentral.edu.co', 'Derecho'),
('Marcela', 'Sandoval', 'marcela.sandoval47@ucentral.edu.co', 'Ingeniería'),
('Iván', 'Valencia', 'ivan.valencia48@ucentral.edu.co', 'Psicología'),
('Tatiana', 'Gil', 'tatiana.gil49@ucentral.edu.co', 'Contaduría'),
('Jorge', 'Patiño', 'jorge.patino50@ucentral.edu.co', 'Ingeniería'),
('Andrea', 'Caicedo', 'andrea.caicedo51@ucentral.edu.co', 'Derecho'),
('Cristina', 'Beltrán', 'cristina.beltran52@ucentral.edu.co', 'Medicina'),
('Mauricio', 'Aristizábal', 'mauricio.aristizabal53@ucentral.edu.co', 'Psicología'),
('Gloria', 'Santos', 'gloria.santos54@ucentral.edu.co', 'Arquitectura'),
('Nicolás', 'Pérez', 'nicolas.perez55@ucentral.edu.co', 'Ingeniería'),
('Tatiana', 'Chaparro', 'tatiana.chaparro56@ucentral.edu.co', 'Economía'),
('Diego', 'Montoya', 'diego.montoya57@ucentral.edu.co', 'Contaduría'),
('Liliana', 'Reina', 'liliana.reina58@ucentral.edu.co', 'Administración'),
('Felipe', 'Granados', 'felipe.granados59@ucentral.edu.co', 'Ingeniería'),
('Sandra', 'Ortega', 'sandra.ortega60@ucentral.edu.co', 'Psicología'),
('Oscar', 'Camacho', 'oscar.camacho61@ucentral.edu.co', 'Derecho'),
('Luisa', 'Figueroa', 'luisa.figueroa62@ucentral.edu.co', 'Ingeniería'),
('Julián', 'Cifuentes', 'julian.cifuentes63@ucentral.edu.co', 'Medicina'),
('Verónica', 'Martínez', 'veronica.martinez64@ucentral.edu.co', 'Administración'),
('Sergio', 'Blanco', 'sergio.blanco65@ucentral.edu.co', 'Economía'),
('Catalina', 'Arango', 'catalina.arango66@ucentral.edu.co', 'Psicología'),
('Rodrigo', 'Salinas', 'rodrigo.salinas67@ucentral.edu.co', 'Ingeniería'),
('Marcela', 'Hernández', 'marcela.hernandez68@ucentral.edu.co', 'Derecho'),
('Javier', 'Suárez', 'javier.suarez69@ucentral.edu.co', 'Medicina'),
('Paola', 'Navas', 'paola.navas70@ucentral.edu.co', 'Arquitectura'),
('Cristian', 'Martínez', 'cristian.martinez71@ucentral.edu.co', 'Economía'),
('Sara', 'Camelo', 'sara.camelo72@ucentral.edu.co', 'Psicología'),
('Álvaro', 'Bustos', 'alvaro.bustos73@ucentral.edu.co', 'Ingeniería'),
('Carla', 'Giraldo', 'carla.giraldo74@ucentral.edu.co', 'Derecho'),
('Wilson', 'Moreno', 'wilson.moreno75@ucentral.edu.co', 'Contaduría'),
('Claudia', 'Vásquez', 'claudia.vasquez76@ucentral.edu.co', 'Ingeniería'),
('Marcos', 'Cardona', 'marcos.cardona77@ucentral.edu.co', 'Medicina'),
('Silvia', 'Zamora', 'silvia.zamora78@ucentral.edu.co', 'Administración'),
('Hugo', 'Barrera', 'hugo.barrera79@ucentral.edu.co', 'Psicología'),
('Yesica', 'Nieto', 'yesica.nieto80@ucentral.edu.co', 'Derecho'),
('Felipe', 'Sierra', 'felipe.sierra81@ucentral.edu.co', 'Ingeniería'),
('Lorena', 'Prieto', 'lorena.prieto82@ucentral.edu.co', 'Economía'),
('Mario', 'Escobar', 'mario.escobar83@ucentral.edu.co', 'Contaduría'),
('Viviana', 'Aguilar', 'viviana.aguilar84@ucentral.edu.co', 'Ingeniería'),
('Raúl', 'Fonseca', 'raul.fonseca85@ucentral.edu.co', 'Derecho'),
('Martha', 'García', 'martha.garcia86@ucentral.edu.co', 'Administración'),
('Cristian', 'Mora', 'cristian.mora87@ucentral.edu.co', 'Psicología'),
('Beatriz', 'Alarcón', 'beatriz.alarcon88@ucentral.edu.co', 'Medicina'),
('Andrés', 'Cuéllar', 'andres.cuellar89@ucentral.edu.co', 'Ingeniería'),
('Jessica', 'Cárdenas', 'jessica.cardenas90@ucentral.edu.co', 'Arquitectura'),
('Fernando', 'Sánchez', 'fernando.sanchez91@ucentral.edu.co', 'Contaduría'),
('Tatiana', 'Villalba', 'tatiana.villalba92@ucentral.edu.co', 'Economía'),
('Juan', 'Durán', 'juan.duran93@ucentral.edu.co', 'Ingeniería'),
('Daniela', 'Lozano', 'daniela.lozano94@ucentral.edu.co', 'Psicología'),
('Pablo', 'Rebollo', 'pablo.rebollo95@ucentral.edu.co', 'Derecho'),
('Cecilia', 'Rivera', 'cecilia.rivera96@ucentral.edu.co', 'Medicina'),
('Esteban', 'Téllez', 'esteban.tellez97@ucentral.edu.co', 'Ingeniería'),
('Margarita', 'Holguín', 'margarita.holguin98@ucentral.edu.co', 'Administración'),
('Héctor', 'Ponce', 'hector.ponce99@ucentral.edu.co', 'Contaduría'),
('Alejandra', 'Villamil', 'alejandra.villamil100@ucentral.edu.co', 'Psicología');

ALTER TABLE Docentes 
MODIFY Correo_D VARCHAR(100) NOT NULL;

-- Insertar 100 docentes
INSERT INTO Docentes (Nombre, Apellido, Correo_D) VALUES
('Carlos', 'Ramirez', 'carlos.ramirez1@ucentral.edu.co'),
('Maria', 'Lopez', 'maria.lopez2@ucentral.edu.co'),
('Juan', 'Martinez', 'juan.martinez3@ucentral.edu.co'),
('Ana', 'Gomez', 'ana.gomez4@ucentral.edu.co'),
('Luis', 'Torres', 'luis.torres5@ucentral.edu.co'),
('Laura', 'Diaz', 'laura.diaz6@ucentral.edu.co'),
('Pedro', 'Fernandez', 'pedro.fernandez7@ucentral.edu.co'),
('Sofia', 'Moreno', 'sofia.moreno8@ucentral.edu.co'),
('Andres', 'Gutierrez', 'andres.gutierrez9@ucentral.edu.co'),
('Camila', 'Castro', 'camila.castro10@ucentral.edu.co'),
('Diego', 'Jimenez', 'diego.jimenez11@ucentral.edu.co'),
('Paula', 'Mendoza', 'paula.mendoza12@ucentral.edu.co'),
('Felipe', 'Hernandez', 'felipe.hernandez13@ucentral.edu.co'),
('Isabella', 'Vargas', 'isabella.vargas14@ucentral.edu.co');


INSERT INTO Materias (id_Materia, id_Docente, Creditos_Materia) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 3, 2),
(4, 4, 3),
(5, 5, 4),
(6, 6, 2),
(7, 7, 3),
(8, 8, 2),
(9, 9, 3),
(10, 10, 4),
(11, 1, 2),
(12, 2, 3),
(13, 3, 2),
(14, 4, 4),
(15, 5, 3),
(16, 6, 2),
(17, 7, 4),
(18, 8, 3),
(19, 9, 2),
(20, 10, 4),
(21, 1, 3),
(22, 2, 2),
(23, 3, 4),
(24, 4, 3),
(25, 5, 2),
(26, 6, 3),
(27, 7, 2),
(28, 8, 4),
(29, 9, 3),
(30, 10, 2);



SELECT * FROM materias;

SELECT Nombre, Apellido FROM estudiantes where nombre = "Juan" ;

SELECT tema FROM tutorías where fecha = 26-08-2025;

SELECT nombre FROM docentes ORDER BY nombre ASC;

SELECT Nombre FROM docentes LIMIT 5; 

SELECT carrera, COUNT(*) from estudiantes GROUP BY carrera;


