CREATE VIEW porcentagem_evasao_por_turma AS
SELECT t.nome_turma,
       SUM(CASE WHEN a.status = 'Evasao' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS porcentagem_evasao
FROM turma t
LEFT JOIN aluno a ON t.id_turma = a.id_turma
GROUP BY t.nome_turma;


SELECT * FROM porcentagem_evasao_por_turma;
