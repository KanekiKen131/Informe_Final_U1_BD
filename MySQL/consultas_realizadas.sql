
/*
CONSULTAS REALIZADAS
DENTRO DE MI BASE DE DATOS camaronera
*/

/*
-- Consulta 1: OPERADOR: Reunión Natural (JOIN) + Proyección (π)
¿Qué encargado administra cada piscina y cuántos camarones
fueron sembrados inicialmente en cada lote?

π nombres, apellidos, ubicacion, cantidad_inicial
(Encargado ⋈ Piscina ⋈ Lote_Animal)
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
-- Consulta 2: OPERADOR: Selección (σ) + Proyección (π)
¿Qué lotes recibieron alimento tipo "Engorde"
y en qué horario fue suministrado?

π id_lote, tipo_alimento, hora
(σ tipo_alimento='Engorde' (Alimentacion ⋈ Horario))
*/
SELECT a.id_lote,
       a.tipo_alimento,
       h.hora
FROM Alimentacion a
INNER JOIN Horario h
ON a.id_horario = h.id_horario
WHERE a.tipo_alimento = 'Engorde';


/*
-- Consulta 3: OPERADOR: Intersección (∩)
¿Qué lotes tienen tanto registro de alimentación
como registro de control sanitario?
(es decir, lotes que aparecen en AMBAS tablas)

π id_lote (Alimentacion)
∩
π id_lote (Control_Sanitario)
*/
SELECT a.id_lote
FROM Alimentacion a
INNER JOIN Lote_Animal l
ON a.id_lote = l.id_lote

INTERSECT

SELECT cs.id_lote
FROM Control_Sanitario cs
INNER JOIN Lote_Animal l
ON cs.id_lote = l.id_lote;


/*
-- Consulta 4: OPERADOR: Diferencia (−)
¿Qué lotes NO tienen ningún registro
de control de crecimiento?

π id_lote (Lote_Animal)
−
π id_lote (Control_Crecimiento)
*/
SELECT l.id_lote
FROM Lote_Animal l

EXCEPT

SELECT c.id_lote
FROM Control_Crecimiento c;


/*
-- Consulta 5: OPERADOR: Unión (∪)
¿Qué lotes tienen registro de alimentación
o registro de control de crecimiento (o ambos)?

π id_lote (Alimentacion)
∪
π id_lote (Control_Crecimiento)
*/
SELECT a.id_lote
FROM Alimentacion a

UNION

SELECT c.id_lote
FROM Control_Crecimiento c;


