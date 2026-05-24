CREATE DATABASE petshop;

USE petshop;

CREATE TABLE pets (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    nome_animal VARCHAR(100)  NOT NULL,
    especie     VARCHAR(50)   NOT NULL,
    raca        VARCHAR(100)  NOT NULL,
    tutor_nome  VARCHAR(100)  NOT NULL,
    tutor_email VARCHAR(150)  NOT NULL,
    porte       VARCHAR(20),
    peso        DECIMAL(5, 2)
);