const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();

// Configurar middlewares para permitir comunicação com o Flutter
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root', // O MAMP usa 'root' como password por defeito
  port: 3306, // O MAMP usa geralmente a porta 8889 (se der erro, apaga esta linha para usar a 3306)
  database: 'origami_db'
});

db.connect((err) => {
  if (err) {
    console.error('Erro ao ligar à base de dados:', err);
    return;
  }
  console.log('Ligado à base de dados MySQL (origami_db) com sucesso!');
});

// ==========================================
// ROTAS DA API ORIGAMI
// ==========================================

// 2. Rota de Registo (Sign Up)
app.post('/api/registo', (req, res) => {
  const { email, password, nickname } = req.body;
  const query = 'INSERT INTO utilizadores (email, password, nickname) VALUES (?, ?, ?)';

  db.query(query, [email, password, nickname], (err, results) => {
    if (err) {
      console.error('Erro no registo:', err);
      return res.status(500).json({ erro: 'Erro interno ao registar utilizador.' });
    }
    res.status(201).json({ 
      mensagem: 'Utilizador registado com sucesso!', 
      id_utilizador: results.insertId 
    });
  });
});

// 3. Rota de Login
app.post('/api/login', (req, res) => {
  const { email, password } = req.body;
  const query = 'SELECT * FROM utilizadores WHERE email = ? AND password = ?';

  db.query(query, [email, password], (err, results) => {
    if (err) {
      console.error('Erro no login:', err);
      return res.status(500).json({ erro: 'Erro interno no servidor.' });
    }
    
    if (results.length > 0) {
      res.status(200).json({ 
        mensagem: 'Login com sucesso!', 
        utilizador: results[0] 
      });
    } else {
      res.status(401).json({ erro: 'Email ou password incorretos.' });
    }
  });
});

// 4. Rota para Lançar um Barco (Criar)
app.post('/api/barcos', (req, res) => {
  const { autor_id, texto, tag_emocao, cor, posicao_top, posicao_left } = req.body;
  const query = `
    INSERT INTO barcos (autor_id, texto, tag_emocao, cor, posicao_top, posicao_left) 
    VALUES (?, ?, ?, ?, ?, ?)
  `;

  db.query(query, [autor_id, texto, tag_emocao, cor, posicao_top, posicao_left], (err, results) => {
    if (err) {
      console.error('Erro ao lançar barco:', err);
      return res.status(500).json({ erro: 'Erro ao guardar o teu barco.' });
    }
    res.status(201).json({ 
      mensagem: 'O teu barco foi lançado ao mar!', 
      id_barco: results.insertId 
    });
  });
});

// 5. Rota para Ler todos os Barcos (Oceano Global)
app.get('/api/barcos', (req, res) => {
  // O JOIN permite puxar o nickname do autor ao mesmo tempo que puxamos os barcos
  const query = `
    SELECT b.*, u.nickname 
    FROM barcos b 
    JOIN utilizadores u ON b.autor_id = u.id_utilizador
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Erro ao buscar barcos:', err);
      return res.status(500).json({ erro: 'Erro ao carregar o oceano.' });
    }
    res.status(200).json(results);
  });
});

// ==========================================
// INICIAR SERVIDOR
// ==========================================
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Servidor Origami a correr perfeitamente na porta ${PORT}`);
});