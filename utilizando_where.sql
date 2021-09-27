-- Traemos todos los posts de la tabla posts que tengan la palabra "escándalo" en medio
SELECT *
FROM `platzi_blog`.`posts`
WHERE titulo LIKE '%escandalo%';

-- Traemos todos los posts de la tabla posts que tengan la palabra "escándalo" al inicio
SELECT *
FROM `platzi_blog`.`posts`
WHERE titulo LIKE 'escandalo%';

-- Traemos todos los posts de la tabla posts que tengan la palabra "escándalo" al final
SELECT *
FROM `platzi_blog`.`posts`
WHERE titulo LIKE '%escandalo';

-- Traemos todos los posts de la tabla posts que fueron publicados después del 01 de enero de 2026
SELECT *
FROM `platzi_blog`.`posts`
WHERE fecha_publicacion > '2026-01-01';

-- Traemos todos los posts de la tabla posts que fueron publicados entre las fechas 01 de enero de 2023 y
-- 31 de diciembre de 2025
SELECT *
FROM `platzi_blog`.`posts`
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

-- Traemos todos los posts de la tabla posts que estén entre el id 50 y 60
SELECT *
FROM `platzi_blog`.`posts`
WHERE id BETWEEN 50 AND 60;

-- Traemos todos los posts de la tabla posts que fueron publicados entre los años 2023 y 2024
SELECT *
FROM `platzi_blog`.`posts`
WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

-- Traemos todos los posts de la tabla posts que fueron publicados en el mes de abril
SELECT *
FROM `platzi_blog`.`posts`
WHERE MONTH(fecha_publicacion) = '04';

-- Traemos todos los posts de la tabla posts que no tengan usuario
SELECT *
FROM `platzi_blog`.`posts`
WHERE usuario_id IS NULL;

-- Traemos todos los posts de la tabla posts que si tengan usuario, que si tengan status activo y que su id sea
-- menor que 50
SELECT *
FROM `platzi_blog`.`posts`
WHERE usuario_id IS NOT NULL
	AND status = 'activo'
    AND id < 50;

-- Traemos todos los posts de la tabla posts que pertenezcan al id de categoría 1, 2 y 3
SELECT *
FROM `platzi_blog`.`posts`
WHERE categoria_id IN (1,2,3);

-- Traemos todos los posts de la tabla posts que tengan la palabra "Se" al inicio y, además, traemos ya sean los post
-- con id menor a 60 o los que tengan status inactivo
SELECT *
FROM `platzi_blog`.`posts`
WHERE titulo LIKE 'Se%' AND (id < 60 OR status = 'inactivo');