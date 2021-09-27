-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, sin importar si tienen o no contenido en la tabla posts
SELECT *
FROM `platzi_blog`.`usuarios`
	LEFT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id;

-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, siempre y cuando no tengan contenido en la tabla posts
SELECT *
FROM `platzi_blog`.`usuarios`
	LEFT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
    
-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, sin importar si tienen o no contenido en la tabla usuarios
SELECT *
FROM `platzi_blog`.`usuarios`
	RIGHT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id;

-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, siempre y cuando no tengan contenido en la tabla usuarios
SELECT *
FROM `platzi_blog`.`usuarios`
	RIGHT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;

-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, si y solo si tienen contenido ambas tablas
SELECT *
FROM `platzi_blog`.`usuarios`
	INNER JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id;

-- FULL OUTER JOIN (traemos ambas tablas completas)
-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, si y solo si tienen intersección de contenido ambas tablas
SELECT *
FROM `platzi_blog`.`usuarios`
	LEFT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id
UNION
SELECT *
FROM `platzi_blog`.`usuarios`
	RIGHT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id;

-- FULL OUTER JOIN (traemos lo que no tienen ambas tablas)
-- Unir tabla usuarios con tabla posts mediante sus dos llaves, es decir; id y usuario_id,
-- respectivamente, si y solo si tienen intersección de contenido ambas tablas
SELECT *
FROM `platzi_blog`.`usuarios`
	LEFT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id is NULL
UNION
SELECT *
FROM `platzi_blog`.`usuarios`
	RIGHT JOIN `platzi_blog`.`posts` ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id is NULL;