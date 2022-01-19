/*Aluno com mais matrículas*/
SELECT aluno.primeiro_nome,
         aluno.ultimo_nome,
		 COUNT(aluno_curso.curso_id) numero_cursos
    FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
GROUP BY 1, 2

ORDER BY numero_cursos DESC
   LIMIT 1;
   
   
/*Curso mais requisitado*/
  SELECT curso.nome,
  		 COUNT(aluno_curso.aluno_id) numero_alunos
    FROM curso
	JOIN aluno_curso ON aluno_curso.curso_id = curso.id
GROUP BY 1
ORDER BY numero_alunos DESC
   LIMIT 1;

/*Categoria mais requisitada*/
	SELECT categoria.nome,
			COUNT(aluno_curso.aluno_id) numero_aluno
		FROM categoria
		JOIN curso ON curso.categoria_id = categoria.id
		JOIN aluno_curso ON aluno_curso.curso_id = curso.id
GROUP BY categoria.nome
ORDER BY numero_aluno DESC
	LIMIT 1;