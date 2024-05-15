SELECT
  d.id_disciplina AS codigo_disciplina,
  d.nome AS nome_disciplina,
  h.semestre,
  h.ano,
  h.nota_final
FROM Historico_Escolar h
INNER JOIN Disciplinas d ON h.id_disciplina = d.id_disciplina
INNER JOIN Alunos a ON h.id_aluno = a.id_aluno;  -- Join remains for relationship
