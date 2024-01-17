-- Comandos de controle de acesso 

-- Como criar um schema?

CREATE SCHEMA mts;

-- Como criar tabelas?

CREATE TABLE mts.produto;
CREATE TABLE mts.cliente; 

-- Como verificar os elementos que estão no catálogo de dados?

SELECT *
FROM information_schema.tables;

-- Como criar um usuário para acessar o banco de dados?

CREATE USER new_user;

-- Como criar uma senha para um novo usuário?

CREATE USER new_user_2 WITH PASSWORD 'secret'

ALTER USER new_user WITH PASSWORD 'analyst1'

-- Como dar permissões a um usuário?
-- Este usuário tem permissão para inserir dados na tabela produto
GRANT INSERT ON mts.produto TO new_user;

-- Este usário tem permissão para atualizar a tabela cliente
GRANT UPDATE ON mts.cliente TO new_user_2;

-- Este usário tem permissão para selecionar a tabela cliente
GRANT SELECT ON mts.cliente TO new_user_2;

-- Este usuário tem permissão para acessar os objetos do esquema
GRANT USAGE ON SCHEMA mts TO new_user;

-- Este usuário pode executar qualquer ação em todas as tabelas
GRANT ALL PRIVILEGES ON mts.* TO new_user_2;

-- Como remover os privilégios de um usuário?
REVOKE ALL PRIVILEGES ON mts.* FROM new_user_2;