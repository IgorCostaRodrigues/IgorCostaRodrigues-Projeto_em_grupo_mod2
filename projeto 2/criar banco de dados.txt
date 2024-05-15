-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS ResiliaDB;

-- Selecionar o banco de dados
USE ResiliaDB;

-- Criar tabela Curso
CREATE TABLE IF NOT EXISTS Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL
);

-- Criar tabela Turma
CREATE TABLE IF NOT EXISTS Turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(100) NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

-- Criar tabela Facilitador
CREATE TABLE IF NOT EXISTS Facilitador (
    id_facilitador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Criar tabela Aluno
CREATE TABLE IF NOT EXISTS Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

-- Criar tabela Modulo
CREATE TABLE IF NOT EXISTS Modulo (
    id_modulo INT PRIMARY KEY AUTO_INCREMENT,
    nome_modulo VARCHAR(100) NOT NULL,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

-- Criar tabela de Log de Atualização de Status de Aluno
CREATE TABLE IF NOT EXISTS LogAluno (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    status_anterior VARCHAR(20),
    status_atual VARCHAR(20),
    data_atualizacao DATETIME,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);