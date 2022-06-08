CREATE SCHEMA DIEGO;
COMMIT;

CREATE TABLE DIEGO.produto(
        idproduto INTEGER,
        descricao VARCHAR(60),
        preco DECIMAL(15,6)
);
COMMIT;


CREATE TABLE DIEGO.marca(
        idMarca INTEGER,
        Descricao VARCHAR(60)
);
COMMIT;



ALTER TABLE DIEGO.produto(
        ADD COLUMN idmarca INTEGER
);
COMMIT;







