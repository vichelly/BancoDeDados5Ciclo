INSERT INTO Alunos (id_aluno, nome)
SELECT 
    generate_series(1, 10) as id_aluno,
    'Aluno ' || generate_series(1, 10) as nome;

INSERT INTO Professores (id_professor, nome)
SELECT 
    generate_series(1, 5) as id_professor,
    'Professor ' || generate_series(1, 5) as nome;

INSERT INTO Disciplinas (id_disciplina, nome, id_professor)
SELECT 
    generate_series(1, 8) as id_disciplina,
    'Disciplina ' || generate_series(1, 8) as nome,
    floor(random() * 5) + 1 as id_professor;

INSERT INTO Historico_Escolar (id_historico, ano, semestre, nota_final, id_aluno, id_disciplina)
SELECT 
    generate_series(1, 80) as id_historico,
    floor(random() * 3) + 2020 AS ano, 
    floor(random() * 8) + 1 AS semestre,  
    floor(random() * 100) as nota_final,
    floor(random() * 10) + 1 as id_aluno,
    floor(random() * 8) + 1 as id_disciplina;


INSERT INTO Notas (id_nota, nota, id_historico)
SELECT 
    generate_series(1, 50) as id_nota,
    floor(random() * 100) as nota,
    floor(random() * (SELECT MAX(id_historico) FROM Historico_Escolar)) + 1 as id_historico;

INSERT INTO Departamentos (id_departamento, nome, id_chefe_professor)
SELECT 
    generate_series(1, 3) as id_departamento,
    'Departamento ' || generate_series(1, 3) as nome,
    floor(random() * 5) + 1 as id_chefe_professor;

INSERT INTO Cursos (id_curso, nome, id_departamento)
SELECT 
    generate_series(1, 4) as id_curso,
    'Curso ' || generate_series(1, 4) as nome,
    floor(random() * 3) + 1 as id_departamento;

INSERT INTO Matriz_Curricular (id_matriz, id_curso)
SELECT 
    generate_series(1, 8) as id_matriz,
    floor((generate_series(1, 8) - 1) / 2) + 1 as id_curso;

INSERT INTO Grupo_de_TCC (id_grupo_tcc, tema, id_aluno1, id_aluno2, id_professor)
SELECT 
    generate_series(1, 5) as id_grupo_tcc,
    'Tema ' || generate_series(1, 5) as tema,
    floor(random() * 10) + 1 as id_aluno1,
    floor(random() * 10) + 1 as id_aluno2, 
    floor(random() * 5) + 1 as id_professor;
