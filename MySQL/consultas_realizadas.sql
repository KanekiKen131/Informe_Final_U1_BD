/*
CONSULTAS REALIZADAS
DENTRO DE MI BASE DE DATOS camaronera
*/

/*
-- Consulta 1:
¿Qué encargado administra cada piscina y cuántos camarones
fueron sembrados inicialmente en cada lote?

π nombres, apellidos, ubicacion, cantidad_inicial
(σ cedula==id_encargado (encargado * piscina) ⋈ lote_animal)
*/
SELECT e.nombres,
       e.apellidos,
       p.ubicacion,
       l.cantidad_inicial
FROM Encargado e
INNER JOIN Piscina p
ON e.cedula = p.id_encargado
INNER JOIN Lote_Animal l
ON p.id_piscina = l.id_piscina;

/*
-- Consulta 2:
¿Qué lote recibió alimento tipo Engorde
y en qué horario fue suministrado?

π id_lote, tipo_alimento, hora
(σ tipo_alimento=='Engorde' (alimentacion ⋈ horario ⋈ lote_animal))
*/
SELECT a.id_lote,
       a.tipo_alimento,
       h.hora
FROM Alimentacion a
INNER JOIN Horario h
ON a.id_horario = h.id_horario
INNER JOIN Lote_Animal l
ON a.id_lote = l.id_lote
WHERE a.tipo_alimento = 'Engorde';

/*
-- Consulta 3:
¿Qué enfermedades fueron detectadas en los lotes
y qué encargado es responsable de la piscina?

π nombres, apellidos, id_lote, nombre
(σ cedula==id_encargado (encargado * piscina)
⋈ lote_animal ⋈ control_sanitario ⋈ enfermedad)
*/
SELECT e.nombres,
       e.apellidos,
       l.id_lote,
       en.nombre AS enfermedad
FROM Encargado e
INNER JOIN Piscina p
ON e.cedula = p.id_encargado
INNER JOIN Lote_Animal l
ON p.id_piscina = l.id_piscina
INNER JOIN Control_Sanitario cs
ON l.id_lote = cs.id_lote
INNER JOIN Enfermedad en
ON cs.id_enfermedad = en.id_enfermedad;

/*
-- Consulta 4:
¿Qué piscinas ubicadas en Rumeyaca
tienen lotes registrados?

π id_piscina, ubicacion, id_lote
(σ ubicacion=='Rumeyaca' (piscina ⋈ lote_animal))
*/
SELECT p.id_piscina,
       p.ubicacion,
       l.id_lote
FROM Piscina p
INNER JOIN Lote_Animal l
ON p.id_piscina = l.id_piscina
WHERE p.ubicacion = 'Rumeyaca';

/*
-- Consulta 5:
¿Qué tipo de alimento y cuántos kilogramos
se suministraron en cada lote?

π id_lote, cantidad_inicial, tipo_alimento, cantidad
(lote_animal ⋈ alimentacion)
*/
SELECT l.id_lote,
       l.cantidad_inicial,
       a.tipo_alimento,
       a.cantidad
FROM Lote_Animal l
INNER JOIN Alimentacion a
ON l.id_lote = a.id_lote;

/*
-- Consulta 6:
¿Cuál es el peso promedio registrado
en cada control de crecimiento por lote?

π id_lote, fecha, peso_promedio
(lote_animal ⋈ control_crecimiento)
*/
SELECT l.id_lote,
       c.fecha,
       c.peso_promedio
FROM Lote_Animal l
INNER JOIN Control_Crecimiento c
ON l.id_lote = c.id_lote;

