CREATE DATABASE IF NOT EXISTS listatarefas
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE listatarefas;

CREATE TABLE IF NOT EXISTS tarefas (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    titulo      VARCHAR(200)  NOT NULL,
    descricao   TEXT,
    prioridade  VARCHAR(20),
    status      VARCHAR(30),
    prazo       DATE,
    responsavel VARCHAR(100)  NOT NULL
);
