CREATE DATABASE IF NOT EXISTS petshop
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE petshop;

CREATE TABLE IF NOT EXISTS pets (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    nome_animal VARCHAR(100)  NOT NULL,
    especie     VARCHAR(50)   NOT NULL,
    raca        VARCHAR(100)  NOT NULL,
    tutor_nome  VARCHAR(100)  NOT NULL,
    tutor_email VARCHAR(150)  NOT NULL,
    porte       VARCHAR(20),
    peso        DECIMAL(5, 2)
);
