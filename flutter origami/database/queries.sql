USE origami_db;

-- 1. Listar todos os barcos lançados no oceano, com o respetivo nickname do autor original e data
-- (Demonstra a utilização de INNER JOIN para ligar tabelas principais)
SELECT b.id_barco, b.texto, b.tag_emocao, u.nickname, b.data_lancamento
FROM barcos b
INNER JOIN utilizadores u ON b.autor_id = u.id_utilizador
ORDER BY b.data_lancamento DESC;

-- 2. Contar o número total de barcos que cada utilizador lançou, incluindo utilizadores que ainda não lançaram nenhum
-- (Demonstra a utilização de LEFT JOIN e funções de agregação GROUP BY)
SELECT u.nickname, COUNT(b.id_barco) AS total_barcos_lancados
FROM utilizadores u
LEFT JOIN barcos b ON u.id_utilizador = b.autor_id
GROUP BY u.id_utilizador
ORDER BY total_barcos_lancados DESC;

-- 3. Detalhar os barcos guardados no "Porto Seguro" do utilizador 1, mostrando quem escreveu originalmente cada barco
-- (Demonstra cruzamento de dados com Múltiplos INNER JOINs através de uma tabela de associação N:M)
SELECT ps.data_recolha, b.texto, b.tag_emocao, autor_original.nickname AS autor_da_mensagem
FROM porto_seguro ps
INNER JOIN barcos b ON ps.barco_id = b.id_barco
INNER JOIN utilizadores autor_original ON b.autor_id = autor_original.id_utilizador
WHERE ps.utilizador_id = 1
ORDER BY ps.data_recolha DESC;

-- 4. Identificar as tendências emocionais globais da aplicação (Emoções mais frequentes)
-- (Demonstra agrupamento, contagem e limitação de resultados)
SELECT tag_emocao, COUNT(*) AS quantidade_registada
FROM barcos
GROUP BY tag_emocao
ORDER BY quantidade_registada DESC
LIMIT 3;