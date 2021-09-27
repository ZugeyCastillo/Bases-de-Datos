SELECT status, COUNT(*) post_quantity #todos los registros
FROM platzi_blog.posts
GROUP BY status;

SELECT id, SUM(id>55) suma_id
FROM platzi_blog.posts
GROUP BY id;

SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity
FROM platzi_blog.posts
GROUP BY post_year;

SELECT MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM platzi_blog.posts
GROUP BY post_month;

SELECT status, MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM platzi_blog.posts
GROUP BY status, post_month;