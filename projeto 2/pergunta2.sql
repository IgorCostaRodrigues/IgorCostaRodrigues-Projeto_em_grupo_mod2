SELECT f.nome, f.sobrenome, COUNT(t.id_turma) AS total_turmas
FROM facilitador f
INNER JOIN turma t ON f.id_facilitador = t.id_facilitador
GROUP BY f.nome, f.sobrenome
HAVING COUNT(t.id_turma) > 1;
