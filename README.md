- Projeto usa MariaDB e Apache Tomcat 9

## Criando database

```
CREATE DATABASE `mercado`; USE mercado;
CREATE TABLE produto (
	codigo_produto INT(11) PRIMARY KEY AUTO_INCREMENT,
	descricao_produto VARCHAR(100),
	preco_produto DOUBLE(15,2)
);
```

## Clonando repo

```
git clone https://github.com/ziguirifow/supportweb-crud.git
```

## Importar para sua IDE de preferencia (Usei Eclipse)

- Projeto criado no Eclipse como Dynamic Web Project
