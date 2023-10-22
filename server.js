const express = require('express');
const path = require('path');

const app = express();
const port = process.env.PORT || 3000; // Define a porta do servidor

// Define o diretório de arquivos estáticos
app.use(express.static(path.join(__dirname, 'app/dist')));

// Rota para a página principal
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'app/dist', 'index.html'));
});

// Inicia o servidor
app.listen(port, () => {
  console.log(`Servidor está executando na porta ${port}`);
});
