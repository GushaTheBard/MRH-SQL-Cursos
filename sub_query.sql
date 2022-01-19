SELECT * FROM curso;
SELECT * FROM categoria;

/* Filtro baseado em listas */
SELECT * FROM curso WHERE categoria_id IN (1, 2);

/*Sub Query*/
SELECT * FROM curso WHERE categoria_id IN (
	SELECT id FROM categoria WHERE nome NOT LIKE '% %'
);


SELECT categoria.nome AS categoria,
		COUNT(curso.id) AS numero_cursos
	FROM categoria
	JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;


SELECT categoria,
		numero_cursos
		FROM (
			/*Usando sob query como tabela*/
			SELECT categoria.nome AS categoria,
					COUNT(curso.id) AS numero_cursos
				FROM categoria
				JOIN curso ON curso.categoria_id = categoria.id
			GROUP BY categoria
			
		) AS categoria_cursos
		WHERE numero_cursos <> 1;


/* FORMA ALTERNATIVA

			SELECT categoria.nome AS categoria,
					COUNT(curso.id) AS numero_cursos
				FROM categoria
				JOIN curso ON curso.categoria_id = categoria.id
			GROUP BY categoria
				HAVING COUNT(curso.id) <> 1
*/