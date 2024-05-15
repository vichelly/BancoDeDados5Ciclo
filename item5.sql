SELECT
  g.tema AS tema_tcc,
  a1.nome AS nome_aluno1,
  a2.nome AS nome_aluno2,
  p.nome AS nome_professor_orientador
FROM Grupo_de_TCC g
INNER JOIN Alunos a1 ON a1.id_aluno = g.id_aluno1
INNER JOIN Alunos a2 ON a2.id_aluno = g.id_aluno2
INNER JOIN Professores p ON p.id_professor = g.id_professor;
