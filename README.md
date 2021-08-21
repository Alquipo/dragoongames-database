<p align="center">
  <img  alt="Dragoon Games Store" title="Dragoon Games Store" src=".github/readme/logo-full-dark.svg" />
</p>

<h1 align="center">
Dragoon Games Store Database 
</h1>

<p align="center">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Alquipo/dragoongames-database">

  <a href="https://www.linkedin.com/in/alquiponeto/">
      <img alt="Made by Alquipo" src="https://img.shields.io/badge/made%20by-AlquipoNeto-blue">
  </a>

  <a href="https://github.com/Alquipo/dragoongames-database/commits/master">
      <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Alquipo/dragoongames-database?color=blue">
  </a>

  <img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen?color=blue">

<img alt="CI Workflow" src="https://github.com/Alquipo/dragoongames-database/workflows/ci/badge.svg?color=blue">
</p>

<p align="center">

   <a target="_blank" href="https://www.postgresql.org/">
    <img alt="Postgres" src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white">
  </a>

   <a target="_blank" href="https://www.docker.com/">
    <img alt="Postgres" src="https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white">
  </a>
 
</p>

## 🚀 Sobre o Projeto

Esse e o repositório com o banco de dados da plataforma Dragoon Games Store.

Para saber mais acesse o github da [API] e do [frontend].

## 🔨 Tecnologias:

- **[Docker](https://www.docker.com/)**
- **[Postgres](https://www.postgresql.org/)**

## 🚀 Como rodar este projeto

Para clonar e executar este aplicativo, você precisará de [Git](https://git-scm.com), [Postgres](https://www.postgresql.org/) Instalado em seu computador.

Esse projeto usa PostgresSQL como banco de dados, instale em seu computador ou use uma imagem do [Docker](https://www.docker.com/) para rodar o projeto.

### 🌀 Clonando o repositório

```bash
# Clone este repositório
$ git clone https://github.com/Alquipo/dragoongames-database

# Acesse a pasta do projeto no terminal/cmd
$ cd dragoongames-database
```

### 🎲 Usando banco de dados com Docker (Opção 1)

```bash

# Faça build do banco de dados com o docker file no projeto
$ docker build -t dragoon_database .

$ docker run --name DragoonGames -p 5432:5432 -d dragoon_database

# Acesse o localhost:1337/admin com o usuário abaixo:

email: dragoon@dragoongames.com
password: DragoonGames123

```

### 🎲 Usando o Dump manualmente (Opção 2)

```bash
# Criar database e usuário no Postgres:

$ CREATE USER dragoongames WITH ENCRYPTED PASSWORD 'dragoongames123';
$ CREATE DATABASE dragoongames OWNER dragoongames;

# Popule o banco de dados usando o comando abaixo (lembre que tem que ser executado onde voce guardou o arquivo dump.sql)

$ psql -h localhost -p 5432 -U dragoongames dragoongames < dump.sql

# Acesse o localhost:1337/admin com o usuário abaixo:

email: dragoon@dragoongames.com
password: DragoonGames123
```

### 💾 Comandos Úteis

```bash
#Restaurar o Dump para o Docker
$ cat dump.sql | docker exec -i NOME_CONTAINER psql -U NOME_USUÁRIO -d dragoongames

#Efetuar o Dump do docker
$ docker exec -i SEU_CONTAINER pg_dump --username USERNAME --password NAME_DATABASE > dump.sql
```

## 🤔 Como contribuir para o projeto

- Faça um **fork** do projeto;
- Crie uma nova branch com as suas alterações: `git checkout -b my-feature`
- Salve as alterações e crie uma mensagem de commit contando o que você fez:`git commit -m "feature: My new feature"`
- Envie as suas alterações: `git push origin my-feature`

> Caso tenha alguma dúvida confira este [guia de como contribuir no GitHub](https://github.com/firstcontributions/first-contributions)

## 📝 Licença

Este projeto esta sobe a licença MIT. Veja a [LICENÇA](https://opensource.org/licenses/MIT) para saber mais.

Feito com ❤️ por Alquipo Neto 👋🏽 [Entre em contato!](https://www.linkedin.com/in/alquiponeto/)
