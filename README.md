# Time To Answer

Projeto desenvolvido em Ruby on Rails 5.2.8.1 utilizando Docker para padronização do ambiente de desenvolvimento.

## Pré-requisitos

* Docker
* Docker Compose

## Subindo o ambiente

Na raiz do projeto execute:

```bash
docker compose up --build -d
```

Verifique se o container está em execução:

```bash
docker compose ps
```

## Acessando o container

Entre no container:

```bash
docker compose exec app bash
```

Todos os comandos a seguir devem ser executados dentro do container.

---

## Verificando a versão do Ruby

```bash
ruby -v
```

Versão esperada:

```text
ruby 2.7.8
```

---

## Instalando o Rails

Instale a versão utilizada pelo projeto:

```bash
gem install rails -v 5.2.8.1 --no-document
```

Verifique a instalação:

```bash
rails -v
```

Resultado esperado:

```text
Rails 5.2.8.1
```

---

## Instalando gems solicitadas durante a instalação

Caso o RubyGems informe dependências incompatíveis, instale as versões compatíveis manualmente.

### Racc

```bash
gem install racc -v 1.5.2
```

### Nokogiri

```bash
gem install nokogiri -v 1.10.10
```

---

## Atualizando o Bundler

Instale uma versão mais recente e compatível com Ruby 2.7:

```bash
gem install bundler -v 2.4.22
```

Verifique:

```bash
bundler _2.4.22_ -v
```

---

## Criando o projeto Rails

Caso o projeto ainda não exista:

```bash
rails new . --skip-bundle --force
```

O parâmetro `--skip-bundle` evita a instalação automática das gems, permitindo ajustes antes da resolução de dependências.

---

## Instalando as dependências do projeto

Após ajustar o Gemfile, execute:

```bash
bundle _2.4.22_ install
```

---

## Criando o banco de dados

```bash
rails db:create
```

---

## Iniciando a aplicação

```bash
rails s -b 0.0.0.0
```

A aplicação ficará disponível em:

```text
http://localhost:3000
```

---

## Comandos úteis

### Ver logs do container

```bash
docker compose logs -f
```

### Parar containers

```bash
docker compose down
```

### Reconstruir a imagem

```bash
docker compose up --build -d
```

### Entrar novamente no container

```bash
docker compose exec app bash
```
