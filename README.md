
# Projeto de Banco de Dados

## Integrantes do Grupo

- Nome: Vitor Lucas Fujita Felício
  - Matrícula: 22.122.077-5
- Nome: Murilo da Fonseca Guimarães
  - Matrícula: 22.122.079-1

## Descrição

O projeto de Banco de Dados consiste na criação de um modelo de banco para ser usado por uma faculdade. Ele aborda diversos aspectos, desde a estruturação das tabelas até consultas.

## Para Executar o Código

1. Clone o repositório ou baixe os arquivos individualmente.

2. Abra o seu Sistema de Gerenciamento de Banco de Dados (SGBD) (por exemplo, PostgreSQL que foi utilizado para desenvolvimento do mesmo) e execute os scripts SQL na seguinte ordem:
    - `createtable.sql`: Este script cria todas as tabelas necessárias.
    - `gerardados.sql`: Este script insere dados de exemplo nas tabelas.

3. Execute as queries SQL para resolver problemas específicos:
   - **item 1:** Histórico escolar de qualquer aluno, retornando o código e nome da disciplina, semestre e ano que a disciplina foi cursada e nota final.
   - **item 2:** Histórico de disciplinas ministradas por qualquer professor, com semestre e ano (passe o ID do professor que deseja consultar).
   - **item 3:** Listar alunos que já se formaram (foram aprovados em todos os cursos de uma matriz curricular) em um determinado semestre de um ano.
   - **item 4:** Listar todos os professores que são chefes de departamento, junto com o nome do departamento.
   - **item 5:** Saber quais alunos formaram um grupo de TCC e qual professor foi o orientador.

## Diagrama Relacional

![Diagrama Relacional](https://github.com/vichelly/BancoDeDados5Ciclo/blob/master/DiagramaRelacional.jpg)

