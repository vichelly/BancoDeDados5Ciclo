SELECT
  d.nome AS nome_disciplina,
  h.semestre,
  h.ano,
  p.nome AS nome_professor
FROM Historico_Escolar h
INNER JOIN Disciplinas d ON h.id_disciplina = d.id_disciplina
INNER JOIN Professores p ON d.id_professor = p.id_professor
INNER JOIN Alunos a ON h.id_aluno = a.id_aluno
WHERE p.id_professor = 5;

