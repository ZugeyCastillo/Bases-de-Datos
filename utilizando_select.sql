-- Eligiendo toda la tabla
SELECT *
FROM `platzi_blog`.`posts`;

-- Eligiendo solo algunas columnas de una tabla
SELECT titulo, fecha_publicacion, status
FROM `platzi_blog`.`posts`;

-- Cambiando nombre de columna con SELECT
SELECT titulo AS encabezado, fecha_publicacion, status AS estado
FROM `platzi_blog`.`posts`;

-- Contar cuantos posts hay en la tabla posts
SELECT COUNT(*)
FROM `platzi_blog`.`posts`;

-- Contar cuantos posts hay en la tabla posts y nombrar esto en una columna
SELECT COUNT(*) AS numero_posts
FROM `platzi_blog`.`posts`;