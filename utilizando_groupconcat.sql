SELECT posts.titulo, COUNT(*) num_etiquetas
FROM platzi_blog.posts
	INNER JOIN platzi_blog.posts_etiquetas ON posts.id = posts_etiquetas.post_id
    INNER JOIN platzi_blog.etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC;

SELECT posts.titulo, GROUP_CONCAT(nombre_etiqueta)
FROM platzi_blog.posts
	INNER JOIN platzi_blog.posts_etiquetas ON posts.id = posts_etiquetas.post_id
    INNER JOIN platzi_blog.etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;

SELECT *
FROM platzi_blog.etiquetas
	LEFT JOIN platzi_blog.posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id is NULL;

SELECT c.nombre_categoria, COUNT(*) AS cant_posts # c. es abreviación de tabla categoria
FROM platzi_blog.categorias AS c
	INNER JOIN platzi_blog.posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC
LIMIT 1;

SELECT u.nickname, COUNT(*) cant_posts
FROM platzi_blog.usuarios AS u
	INNER JOIN platzi_blog.posts AS p ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY cant_posts DESC;

SELECT u.nickname, COUNT(*) cant_posts, GROUP_CONCAT(nombre_categoria)
FROM platzi_blog.usuarios AS u
	INNER JOIN platzi_blog.posts AS p ON u.id = p.usuario_id
    INNER JOIN platzi_blog.categorias AS c On c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

# De otra manera
SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(DISTINCT nombre_categoria)
FROM platzi_blog.usuarios AS u
	INNER JOIN platzi_blog.posts AS p ON u.id = p.usuario_id
	INNER JOIN platzi_blog.categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

SELECT *
FROM platzi_blog.usuarios AS u
	LEFT JOIN platzi_blog.posts ON u.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;