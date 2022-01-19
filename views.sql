/* Tranformando Sub Query em view*/
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


CREATE VIEW vw_cursos_categoria AS SELECT categoria.nome AS categoria,
					COUNT(curso.id) AS numero_cursos
				FROM categoria
				JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;

SELECT * FROM vw_cursos_categoria;

/*View de cursos de programação*/
CREATE VIEW vw_cursos_programacao AS SELECT nome FROM curso WHERE categoria_id = 1;

SELECT * FROM vw_cursos_programacao


/*exercitiando views*/
SELECT categoria.id AS categoria_ID, vw_cursos_categoria.*
	FROM vw_cursos_categoria
	JOIN categoria ON categoria.nome = vw_cursos_categoria.categoria;
	
	
/*antes de usar um view, analisar a performance da modelagem das regras visto o view ser mais custoso quando se trata de performance*/