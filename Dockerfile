# Use uma Imagem Official do Python
FROM node:18-slim

# Definindo o diretório onde a aplicação será armazenada
WORKDIR /app

# Copiar os arquivos da pasta local para dentro do container
COPY . /app

# Instalar as dependências de Python de acordo com o que foi desenvolvido na aplicação e que está declarado no arquivo requirements.txt.
RUN npm install

EXPOSE 3000

# Garante que será iniciado a aplicação.
CMD ["npm", "start"]