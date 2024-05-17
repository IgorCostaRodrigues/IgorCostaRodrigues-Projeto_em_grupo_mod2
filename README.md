# Projeto Banco de Dados Resilia MOD 2

![banco-de-dados-1024x538](https://github.com/IgorCostaRodrigues/IgorCostaRodrigues-Projeto_em_grupo_mod2/assets/113060886/cc17b921-812a-48a2-84e1-d844f2bb1d0b)


## Índice

- [Descrição do Projeto](#descrição-do-projeto)
- [Instruções de Uso](#instruções-de-uso)
- [Funcionalidades](#funcionalidades)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Pessoas Desenvolvedoras do Projeto](#pessoas-desenvolvedoras-do-projeto)
- [Contato](#contato)

## Descrição do Projeto

A Resilia (fictício) nos convocou para uma missão crucial: modernizar o processo de armazenamento e gerenciamento de dados de ensino da empresa.

Nossa missão? Transformar planilhas caóticas em um banco de dados poderoso e elegante, pronto para desvendar os segredos da educação e impulsionar a Resilia a novos patamares!

Hoje dentro da Resilia, são armazenadas diversas informações do braço de
ensino da empresa como dados sobre os alunos, facilitadores, turmas,
módulos e cursos em planilhas. Essas informações são colocadas em
planilhas diferentes, dificultando muitas das vezes a extração de dados
estratégicos para a empresa.

## Instruções de Uso

Execute os scripts dentro do PgAdmin 4 na seguinte ordem:

1. `CREATE-DATABASE` 
2. `FUNCTION-TRIGGER`
3. `INSERT-DATABASE-RESILIA`
4. `SCRIPT-DAS-PERGUNTAS`

## Funcionalidades

O modelo de dados possui as seguintes entidades:

- `tb_aluno`
- `tb_turma`
- `tb_curso`
- `tb_modulo`
- `tb_facilitador`

Perguntas Respondidas:

1. Quantidade total de estudantes cadastrados no banco.
2. Pessoas facilitadoras que atuam em mais de uma turma.
3. View que seleciona a porcentagem de estudantes com status de evasão agrupados por turma.
4. Trigger para atualização do atributo status de um estudante e inserção de um novo dado em uma tabela de log.
5. Percentual de alunos por região.
6. Índice de evasão de aluno por módulo.

## Tecnologias Utilizadas

- [brModelo 3.0](http://www.sis4.com/brModelo/download.html)
- [MySQL Workbench](https://www.mysql.com/products/workbench/)
- Bloco de Notas

## Pessoas Desenvolvedoras do Projeto

- Luis Guilherme
- Igor Costa
- Patrick Fortunato
