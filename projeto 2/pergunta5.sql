SELECT COUNT(*) AS total_aprovados
FROM aluno a
JOIN turma t ON a.id_turma = t.id_turma
JOIN curso c ON t.id_curso = c.id_curso
WHERE t.nome_turma = 'Turma A' 
AND c.nome_curso = 'Desenvolvimento Web'
AND a.status = 'Aprovado';
