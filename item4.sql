SELECT
  p.nome AS nome_professor,
  d.nome AS nome_departamento
FROM Professores p
INNER JOIN Departamentos d ON p.id_professor = d.id_chefe_professor;  -- Corrected join column
