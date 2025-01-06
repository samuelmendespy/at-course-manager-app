# at-course-manager-app

## Descrição

O **at-course-manager-app** é uma app full-stack para gerenciar cursos com praticidade. Ele permite manter o controle do preço dos cursos, oferecendo uma interface simples e intuitiva, acessível em uma **Single Page Application** (SPA) feita com **Angular**. O sistema de backend é desenvolvido em **PHP**, utilizando **MySQL** para armazenar os dados dos cursos.

### Funcionalidades principais:
- Cadastro de cursos com nome e preço.
- Listagem de todos os cursos com nome e preço.
- Alteração de dados de cursos.
- Exclusão de cursos.

## Arquitetura

A aplicação é dividida em dois principais containers Docker:

- **php-container**: Contém a aplicação backend (PHP + Apache 2.4 + MySQLi).
- **mysql-container**: Contém o banco de dados MySQL v9.1.

A aplicação é orquestrada com o **Docker Compose**, permitindo fácil inicialização e gerenciamento.

## Tecnologias

- **Frontend**: Angular, Bootstrap
- **Backend**: PHP 8.2, Apache 2.4, MySQLi
- **Banco de Dados**: MySQL v9.1
- **Containers**: Docker, Docker Compose

## Como rodar a aplicação

### 1. Pré-requisitos

- Docker Compose

### 2. Rodando com Docker Compose

1. Clone o repositório:
   ```bash
   git clone https://github.com/samuelmendespy/at-course-manager-app.git
   cd at-course-manager-app
   ```

2. Inicie os containers:
   ```bash
   docker-compose up --build
   ```

3. A aplicação estará disponível em:
   - **Frontend** (Angular SPA): [http://localhost/app/](http://localhost/app/)
   - **API** (PHP Backend): [http://localhost/api/{endpoint}](http://localhost/api/{endpoint})

### 3. Endpoints da API

A API do backend permite realizar as seguintes operações:

- **Cadastrar Curso**
  - **Método**: `POST`
  - **Endpoint**: `/api/cadastrar`
  - **Parâmetros**: 
    - `name`: Nome do curso
    - `price`: Preço do curso
  - **Descrição**: Cria um novo curso com nome e preço.

- **Listar Cursos**
  - **Método**: `GET`
  - **Endpoint**: `/api/listar`
  - **Descrição**: Retorna todos os cursos cadastrados, com id, nome e preço.

- **Alterar Curso**
  - **Método**: `PATCH`
  - **Endpoint**: `/api/alterar`
  - **Parâmetros**:
    - `id`: ID do curso a ser alterado
    - `name`: Novo nome do curso
    - `price`: Novo preço do curso
  - **Descrição**: Altera o nome e preço de um curso existente.

- **Excluir Curso**
  - **Método**: `DELETE`
  - **Endpoint**: `/api/excluir`
  - **Parâmetros**:
    - `id`: ID do curso a ser excluído
  - **Descrição**: Exclui um curso com o ID fornecido.

## Estrutura de diretórios

```
.
├── db
│   ├── data               # Dados persistentes do banco de dados MySQL
│   └── init               # Scripts de inicialização do banco de dados
├── web
│   ├── api                # Código da API (backend PHP)
│   └── app                # Código do frontend (Angular)
└── docker-compose.yml     # Arquivo de configuração do Docker Compose
```

## Contribuição

1. Faça um fork do repositório
2. Crie uma branch para sua feature (`git checkout -b feature/MinhaFeature`)
3. Faça os commits necessários (`git commit -am 'Adicionando nova feature'`)
4. Envie para o repositório (`git push origin feature/MinhaFeature`)
5. Abra um pull request

## Licença

Distribuído sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais informações.
