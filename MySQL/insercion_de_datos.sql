/*
INSERTAR DATOS DENTRO DE MI BASE DE DATOS SistemaCamaronera
*/

/*
-- Encargado
*/
INSERT INTO Encargado(cedula,nombres,apellidos,telefono)
VALUES('1102456789','Carlos Andres','Mora Castillo','0987654321');

INSERT INTO Encargado(cedula,nombres,apellidos,telefono)
VALUES('1109876543','Luis Fernando','Lopez Medina','0991234567');

INSERT INTO Encargado(cedula,nombres,apellidos,telefono)
VALUES('1104567891','Maria Elena','Jaramillo Ruiz','0976543210');

INSERT INTO Encargado(cedula,nombres,apellidos,telefono)
VALUES('1101122334','Jorge Ivan','Perez Salinas','0963214785');

INSERT INTO Encargado(cedula,nombres,apellidos,telefono)
VALUES('1109988776','Andrea Lucia','Torres Vega','0958741236');

INSERT INTO Encargado(cedula,nombres,apellidos,telefono)
VALUES('1103344556','Kevin Mateo','Guaman Soto','0945632187');

/*
-- Piscina
*/
INSERT INTO Piscina(id_piscina,id_encargado,ubicacion,tamanio,capacidad_animales)
VALUES('P001','1102456789','Rumeya','5 Hectareas',5000);

INSERT INTO Piscina(id_piscina,id_encargado,ubicacion,tamanio,capacidad_animales)
VALUES('P002','1109876543','Caprican','3 Hectareas',3500);

INSERT INTO Piscina(id_piscina,id_encargado,ubicacion,tamanio,capacidad_animales)
VALUES('P003','1104567891','Rumeya','6 Hectareas',6000);

INSERT INTO Piscina(id_piscina,id_encargado,ubicacion,tamanio,capacidad_animales)
VALUES('P004','1101122334','Caprican','2 Hectareas',2000);

INSERT INTO Piscina(id_piscina,id_encargado,ubicacion,tamanio,capacidad_animales)
VALUES('P005','1109988776','Rumeya','4 Hectareas',4000);

INSERT INTO Piscina(id_piscina,id_encargado,ubicacion,tamanio,capacidad_animales)
VALUES('P006','1103344556','Caprican','7 Hectareas',7000);

/*
-- Lote_Animal
*/
INSERT INTO Lote_Animal(id_lote,id_piscina,fecha_siembra,cantidad_inicial)
VALUES('L001','P001','2025-01-10',4500);

INSERT INTO Lote_Animal(id_lote,id_piscina,fecha_siembra,cantidad_inicial)
VALUES('L002','P002','2025-01-15',3000);

INSERT INTO Lote_Animal(id_lote,id_piscina,fecha_siembra,cantidad_inicial)
VALUES('L003','P003','2025-02-01',5800);

INSERT INTO Lote_Animal(id_lote,id_piscina,fecha_siembra,cantidad_inicial)
VALUES('L004','P004','2025-02-10',1800);

INSERT INTO Lote_Animal(id_lote,id_piscina,fecha_siembra,cantidad_inicial)
VALUES('L005','P005','2025-03-05',3900);

INSERT INTO Lote_Animal(id_lote,id_piscina,fecha_siembra,cantidad_inicial)
VALUES('L006','P006','2025-03-12',6500);

/*
-- Control_Crecimiento
*/
INSERT INTO Control_Crecimiento(id_control,id_lote,fecha,peso_promedio,observacion)
VALUES('CC001','L001','2025-02-01',1.25,'Crecimiento normal');

INSERT INTO Control_Crecimiento(id_control,id_lote,fecha,peso_promedio,observacion)
VALUES('CC002','L002','2025-02-05',1.10,'Peso estable');

INSERT INTO Control_Crecimiento(id_control,id_lote,fecha,peso_promedio,observacion)
VALUES('CC003','L003','2025-02-20',1.40,'Buen desarrollo');

INSERT INTO Control_Crecimiento(id_control,id_lote,fecha,peso_promedio,observacion)
VALUES('CC004','L004','2025-03-01',0.95,'Lote pequeño');

INSERT INTO Control_Crecimiento(id_control,id_lote,fecha,peso_promedio,observacion)
VALUES('CC005','L005','2025-03-15',1.30,'Condiciones adecuadas');

INSERT INTO Control_Crecimiento(id_control,id_lote,fecha,peso_promedio,observacion)
VALUES('CC006','L006','2025-03-25',1.55,'Excelente crecimiento');

/*
-- Horario
*/
INSERT INTO Horario(id_horario,hora,detalle)
VALUES('H001','06:00:00','Alimentacion matutina');

INSERT INTO Horario(id_horario,hora,detalle)
VALUES('H002','09:00:00','Revision general');

INSERT INTO Horario(id_horario,hora,detalle)
VALUES('H003','12:00:00','Alimentacion mediodia');

INSERT INTO Horario(id_horario,hora,detalle)
VALUES('H004','15:00:00','Control sanitario');

INSERT INTO Horario(id_horario,hora,detalle)
VALUES('H005','18:00:00','Alimentacion vespertina');

INSERT INTO Horario(id_horario,hora,detalle)
VALUES('H006','20:00:00','Inspeccion nocturna');

/*
-- Alimentacion
*/
INSERT INTO Alimentacion(id_alimentacion,id_lote,id_horario,tipo_alimento,cantidad,fecha)
VALUES('A001','L001','H001','Iniciadores',120,'2025-02-01');

INSERT INTO Alimentacion(id_alimentacion,id_lote,id_horario,tipo_alimento,cantidad,fecha)
VALUES('A002','L002','H003','Pre Engorde',95,'2025-02-05');

INSERT INTO Alimentacion(id_alimentacion,id_lote,id_horario,tipo_alimento,cantidad,fecha)
VALUES('A003','L003','H005','Engorde',150,'2025-02-20');

INSERT INTO Alimentacion(id_alimentacion,id_lote,id_horario,tipo_alimento,cantidad,fecha)
VALUES('A004','L004','H001','Salud',70,'2025-03-01');

INSERT INTO Alimentacion(id_alimentacion,id_lote,id_horario,tipo_alimento,cantidad,fecha)
VALUES('A005','L005','H003','Engorde',110,'2025-03-15');

INSERT INTO Alimentacion(id_alimentacion,id_lote,id_horario,tipo_alimento,cantidad,fecha)
VALUES('A006','L006','H005','Pre Engorde',180,'2025-03-25');

/*
-- Control_Sanitario
*/
INSERT INTO Control_Sanitario(id_control,id_lote,id_enfermedad,fecha,observacion)
VALUES('CS001','L001','E001','2025-02-02','Sin novedades');

INSERT INTO Control_Sanitario(id_control,id_lote,id_enfermedad,fecha,observacion)
VALUES('CS002','L002','E002','2025-02-06','Presencia leve de sintomas');

INSERT INTO Control_Sanitario(id_control,id_lote,id_enfermedad,fecha,observacion)
VALUES('CS003','L003','E003','2025-02-21','Control preventivo realizado');

INSERT INTO Control_Sanitario(id_control,id_lote,id_enfermedad,fecha,observacion)
VALUES('CS004','L004','E004','2025-03-02','Aplicacion de tratamiento');

INSERT INTO Control_Sanitario(id_control,id_lote,id_enfermedad,fecha,observacion)
VALUES('CS005','L005','E005','2025-03-16','Estado estable');

INSERT INTO Control_Sanitario(id_control,id_lote,id_enfermedad,fecha,observacion)
VALUES('CS006','L006','E006','2025-03-26','Monitoreo continuo');

/*
-- Enfermedad
*/
INSERT INTO Enfermedad(id_enfermedad,id_control,nombre,descripcion,estado)
VALUES('E001','CS001','Sindrome de la Mancha Blanca','Virus altamente contagioso','Controlada');

INSERT INTO Enfermedad(id_enfermedad,id_control,nombre,descripcion,estado)
VALUES('E002','CS002','Necrosis Hepatopancreatica','Afecta el sistema digestivo','En tratamiento');

INSERT INTO Enfermedad(id_enfermedad,id_control,nombre,descripcion,estado)
VALUES('E003','CS003','Vibriosis','Infeccion bacteriana comun en camarones','Estable');

INSERT INTO Enfermedad(id_enfermedad,id_control,nombre,descripcion,estado)
VALUES('E004','CS004','Micosis','Infeccion producida por hongos','Controlada');

INSERT INTO Enfermedad(id_enfermedad,id_control,nombre,descripcion,estado)
VALUES('E005','CS005','Protozoarios','Presencia de parasitos microscopicos','En observacion');

INSERT INTO Enfermedad(id_enfermedad,id_control,nombre,descripcion,estado)
VALUES('E006','CS006','EMS','Sindorme de Mortalidad Temprana','Recuperacion');
