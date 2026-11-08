USE origami_db;

-- Inserir Utilizadores
INSERT INTO utilizadores (email, password, nickname, avatar_id) VALUES
('joao.monge@ua.pt', 'hashpass1', 'NavegadorSolitario', 1),
('maria.costa@ua.pt', 'hashpass2', 'EstrelaDoMar', 2),
('rui.silva@ua.pt', 'hashpass3', 'Farol', 3);

-- Inserir Barcos (Desabafos lançados no mapa)
INSERT INTO barcos (texto, tag_emocao, cor, posicao_top, posicao_left, autor_id) VALUES
('Hoje o dia foi muito cansativo, mas consegui entregar o projeto de PDM.', 'Esperança', 'amarelo', 150.5, 200.0, 1),
('Sinto-me um pouco ansiosa com a apresentação de amanhã.', 'Ansiedade', 'azul', 300.0, 100.5, 2),
('Que paz estar a ouvir o som do mar agora enquanto programo.', 'Paz', 'branco', 450.2, 320.1, 3),
('Tenho medo de não conseguir acabar o relatório a tempo.', 'Ansiedade', 'vermelho', 120.0, 80.0, 1);

-- Inserir Registos de Humor Diários
INSERT INTO registos_humor (estado_espirito, data_registo, utilizador_id) VALUES
('Calmo', '2026-11-08', 1),
('Ansioso', '2026-11-08', 2),
('Motivado', '2026-11-08', 3);

-- Inserir recolhas no Porto Seguro (Barcos guardados por outros utilizadores)
INSERT INTO porto_seguro (utilizador_id, barco_id) VALUES
(1, 2), -- NavegadorSolitario guardou o barco sobre ansiedade da EstrelaDoMar
(2, 3), -- EstrelaDoMar guardou o barco de paz do Farol
(3, 1); -- Farol guardou o barco de esperança do NavegadorSolitario