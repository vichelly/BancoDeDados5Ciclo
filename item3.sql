SELECT
    al.id_aluno,
    al.nome AS aluno_nome
FROM
    Alunos al
WHERE
    al.id_aluno IN (
        SELECT h.id_aluno
        FROM Historico_Escolar h
        WHERE h.ano = 2022
        AND h.semestre = 1
    )
    AND al.id_aluno NOT IN (
        SELECT hs.id_aluno
        FROM Historico_Escolar hs
        WHERE hs.nota_final < 6.0
    );
