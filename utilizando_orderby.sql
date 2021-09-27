SELECT *
FROM platzi_blog.posts
ORDER BY fecha_publicacion DESC; # se ordena de manera descendente
#ORDER BY fecha_publicacion ASC; # se ordena de manera ascendente

SELECT *
FROM platzi_blog.posts
ORDER BY titulo ASC;

SELECT *
FROM platzi_blog.posts
ORDER BY fecha_publicacion ASC
LIMIT 5;

SELECT MONTHNAME(fecha_publicacion) AS post_month, status, COUNT(*) AS post_quantity
FROM platzi_blog.posts
GROUP BY status, post_month
HAVING post_quantity > 1
ORDER BY post_month;