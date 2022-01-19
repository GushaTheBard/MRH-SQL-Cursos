SELECT (primeiro_nome || ' ' ||ultimo_nome) AS nome_completo FROM aluno;

/*Funções para string*/
SELECT TRIM(UPPER(CONCAT('Mauro', ' ', 'Horie')));

/*Funções de data*/
SELECT 	(primeiro_nome || ' ' ||ultimo_nome) AS nome_completo,
		EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
	FROM aluno;
	
/*
Todas as funçõe podem ser conultadas na documentação do PostgreSQL
https://www.postgresql.org/docs/12/functions-math.html
*/

/*Conversão de dados*/
SELECT TO_CHAR(NOW(), 'DD, MONTH, YYYY');
SELECT TO_CHAR(123.3, '9999D99');
