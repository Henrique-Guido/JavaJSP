CREATE DATABASE listatarefas;

USE listatarefas;

CREATE TABLE tarefas (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    titulo      VARCHAR(200)  NOT NULL,
    descricao   TEXT,
    prioridade  VARCHAR(20),
    status      VARCHAR(30),
    prazo       DATE,
    responsavel VARCHAR(100)  NOT NULL
);

CREATE TABLE responsaveis (
    id        INT AUTO_INCREMENT PRIMARY KEY,
    nome      VARCHAR(200) NOT NULL,
    email     VARCHAR(200) NOT NULL,
    telefone  VARCHAR(20),
    cargo     VARCHAR(50)
);