/*
Creación de tablas de Sistema Camaronera
author: LMess131
 */

CREATE TABLE Encargado(
    cedula VARCHAR(10) PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono VARCHAR(10) NOT NULL
);

CREATE TABLE Piscina(
    id_piscina VARCHAR(10) PRIMARY KEY,
    id_encargado VARCHAR(10) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    tamanio VARCHAR(50) NOT NULL,
    capacidad_animales INT NOT NULL,

    FOREIGN KEY(id_encargado)
    REFERENCES Encargado(cedula)
);

CREATE TABLE Lote_Animal(
    id_lote VARCHAR(10) PRIMARY KEY,
    id_piscina VARCHAR(10) NOT NULL,
    fecha_siembra DATE NOT NULL,
    cantidad_inicial INT NOT NULL,
    FOREIGN KEY(id_piscina)
    REFERENCES Piscina(id_piscina)
);

CREATE TABLE Control_Crecimiento(
    id_control VARCHAR(10) PRIMARY KEY,
    id_lote VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    peso_promedio DECIMAL(10,2) NOT NULL,
    observacion TEXT,
    FOREIGN KEY(id_lote)
    REFERENCES Lote_Animal(id_lote)
);

CREATE TABLE Horario(
    id_horario VARCHAR(10) PRIMARY KEY,
    hora TIME NOT NULL,
    detalle VARCHAR(200)
);

CREATE TABLE Alimentacion(
    id_alimentacion VARCHAR(10) PRIMARY KEY,
    id_lote VARCHAR(10) NOT NULL,
    id_horario VARCHAR(10) NOT NULL,
    tipo_alimento VARCHAR(50) NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,

    FOREIGN KEY(id_lote)
    REFERENCES Lote_Animal(id_lote),

    FOREIGN KEY(id_horario)
    REFERENCES Horario(id_horario)
);

CREATE TABLE Control_Sanitario(
    id_control VARCHAR(10) PRIMARY KEY,
    id_lote VARCHAR(10) NOT NULL,
    id_enfermedad VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    observacion TEXT,

    FOREIGN KEY(id_lote)
    REFERENCES Lote_Animal(id_lote)
);

CREATE TABLE Enfermedad(
    id_enfermedad VARCHAR(10) PRIMARY KEY,
    id_control VARCHAR(10) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    estado VARCHAR(20) NOT NULL,

    FOREIGN KEY(id_control)
    REFERENCES Control_Sanitario(id_control)
);
