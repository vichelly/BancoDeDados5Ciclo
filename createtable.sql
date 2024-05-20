CREATE TABLE Alunos (
  id_aluno INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_aluno)
);

CREATE TABLE Professores (
  id_professor INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_professor)
);

CREATE TABLE Disciplinas (
  id_disciplina INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  id_professor INT NOT NULL,
  PRIMARY KEY (id_disciplina),
  FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

CREATE TABLE Departamentos (
  id_departamento INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  id_chefe_professor INT NOT NULL,
  PRIMARY KEY (id_departamento),
  FOREIGN KEY (id_chefe_professor) REFERENCES Professores(id_professor)
);

CREATE TABLE Cursos (
  id_curso INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  id_departamento INT NOT NULL,
  PRIMARY KEY (id_curso),
  FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

CREATE TABLE Matriz_Curricular (
  id_matriz INT NOT NULL,
  id_curso INT NOT NULL,
  PRIMARY KEY (id_matriz),
  FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

CREATE TABLE Historico_Escolar (
  id_historico INT NOT NULL,
  ano INT NOT NULL,
  nota_final FLOAT NOT NULL,
  semestre DECIMAL(2,0) NOT NULL,
  id_aluno INT NOT NULL,
  id_disciplina INT NOT NULL,
  PRIMARY KEY (id_historico),
  FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
  FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina),
  CONSTRAINT semestre_valido CHECK (semestre IN (1, 2))
);

CREATE TABLE Grupo_de_TCC (
  id_grupo_tcc INT NOT NULL,
  tema VARCHAR(100) NOT NULL,
  id_aluno1 INT NOT NULL,
  id_aluno2 INT NOT NULL,
  id_professor INT NOT NULL,
  PRIMARY KEY (id_grupo_tcc),
  FOREIGN KEY (id_aluno1) REFERENCES Alunos(id_aluno),
  FOREIGN KEY (id_aluno2) REFERENCES Alunos(id_aluno),
  FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

CREATE TABLE Notas (
  id_nota INT NOT NULL,
  nota FLOAT NOT NULL,
  id_historico INT NOT NULL,
  PRIMARY KEY (id_nota),
  FOREIGN KEY (id_historico) REFERENCES Historico_Escolar(id_historico)
);
