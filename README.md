# Projeto de Banco de Dados

## Integrantes do Grupo

- Nome: Vitor Lucas Fujita Felício
  - Matrícula: 22.122.077-5
- Nome: Murilo da Fonseca Guimarães
  - Matrícula: 22.122.079-1

## Descrição

O projeto de Banco de Dados consiste na criação de um modelo de banco para ser usado por uma faculdade. Nele foi necessário a resolução de a

## Para Executar o Código

1. Clone o repositório, copie o conteúdo dos scripts ou baixe os arquivos separadamente

2. Abra o seu SGBD (por exemplo, PostgreSQL, MySQL) e execute os scripts SQL na seguinte ordem:
    - `create_tables.sql`: Este script cria todas as tabelas necessárias.
    - `insert_data.sql`: Este script insere dados de exemplo nas tabelas.

3. As queries de nome item[numero] resolvem problemas específicos
   item 1:
   histórico escolar de qualquer aluno, retornando o código e nome da disciplina, semestre e ano que a disciplina foi cursada e nota final
   item 2:
   histórico de disciplinas ministradas por qualquer professor, com semestre e ano (passe o ID do professor que deseja consultar)
   item 3:
   listar alunos que já se formaram (foram aprovados em todos os cursos de uma matriz curricular) em um determinado semestre de um ano
   item 4:
   listar todos os professores que são chefes de departamento, junto com o nome do departamento
   item 5:
   saber quais alunos formaram um grupo de TCC e qual professor foi o orientador


