-- Criar a base de dados da aplicação
CREATE DATABASE IF NOT EXISTS origami_db;
USE origami_db;


CREATE TABLE utilizadores (
    id_utilizador INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nickname VARCHAR(50) DEFAULT 'Anónimo',
    avatar_id INT, -- Referência para o ícone escolhido pelo utilizador
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE barcos (
    id_barco INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT NOT NULL,
    tag_emocao VARCHAR(50) NOT NULL, -- Ex: 'Ansiedade', 'Esperança', 'Paz'
    cor VARCHAR(50) NOT NULL,
    posicao_top FLOAT NOT NULL,
    posicao_left FLOAT NOT NULL,
    data_lancamento DATETIME DEFAULT CURRENT_TIMESTAMP,
    autor_id INT NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES utilizadores(id_utilizador) ON DELETE CASCADE
);


CREATE TABLE registos_humor (
    id_registo INT AUTO_INCREMENT PRIMARY KEY,
    estado_espirito VARCHAR(50) NOT NULL,
    data_registo DATE NOT NULL,
    utilizador_id INT NOT NULL,
    FOREIGN KEY (utilizador_id) REFERENCES utilizadores(id_utilizador) ON DELETE CASCADE
);


CREATE TABLE porto_seguro (
    utilizador_id INT NOT NULL,
    barco_id INT NOT NULL,
    data_recolha DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (utilizador_id, barco_id),
    FOREIGN KEY (utilizador_id) REFERENCES utilizadores(id_utilizador) ON DELETE CASCADE,
    FOREIGN KEY (barco_id) REFERENCES barcos(id_barco) ON DELETE CASCADE
);