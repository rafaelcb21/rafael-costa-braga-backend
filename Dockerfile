# Use a imagem oficial do Node.js como imagem base
FROM node:18-alpine

# Crie um diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie o arquivo package.json e o arquivo package-lock.json (se existir)
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código-fonte para o diretório de trabalho no contêiner
COPY . .

# Exponha a porta em que a aplicação irá escutar
EXPOSE 3000

# Comando para iniciar a aplicação (ajuste conforme o seu projeto)
CMD ["node", "server.js"]
