SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (
	SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM platzi_blog.posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date;

SELECT *
FROM platzi_blog.posts
WHERE fecha_publicacion = (
SELECT MAX(fecha_publicacion)
FROM platzi_blog.posts
);