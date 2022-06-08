INSERT INTO DIEGOMARKS.CLIENTE(IDCLIENTE,CPF,NOME,ENDERECO,UF) VALUES
(1,'12345678900','DIEGO','PRUDENTE DE MORAIS','PR'),
(2,'002233441','Z�','JO�O DALPASQUALE','PR'),
(3,'312384385','BIRA','RUA DO COM�RCIO','PR');

INSERT INTO DIEGOMARKS.PRODUTO(IDPRODUTO,DESCRICAOPRODUTO,PRECO,CODIGOBARRAS) VALUES
(01,'DETERGENTE',1.99,'123821838223'),
(02,'FEIJ�O',7.54,'4324244423423'),
(03,'SAL',3.79,'6775643435');

INSERT INTO DIEGOMARKS.VENDEDOR(IDVENDEDOR,NOME,COMISSAO) VALUES
(1,'ALBERTO',5.0),
(2,'RENATO',3.0),
(3,'CARLOS',4.0);

INSERT INTO DIEGOMARKS.EMPRESA(CNPJ,IDEMPRESA,NOMEFANTASIA,RAZAOSOCIAL,UF) VALUES
('23412312',1,'RDZ','RDZ S/A','PR')

INSERT INTO DIEGOMARKS.NOTAFISCAL(IDCLIENTE,IDEMPRESA,IDNOTAFISCAL,IDVENDEDOR,VALORTOTAL) VALUES
(1,1,1,1,54.90),
(2,1,2,2,13.65),
(3,1,3,3,99.90);

INSERT INTO DIEGOMARKS.NOTAFISCALPRODUTO(IDPRODUTO,NUMERONOTAFISCAL,QUANTIDADE,VALOR) VALUES
(01,1,3,54.90),
(02,2,6,13.65),
(03,3,9,99.90);


SELECT * FROM SYSCAT.REFERENCES WHERE CONSTNAME = 'FK_PRODUTO_FK2'
SELECT * FROM DIEGOMARKS.NOTAFISCALPRODUTO
SELECT * FROM SYSCAT.COLUMNS WHERE TABSCHEMA LIKE '%ZANINI1%' AND TABNAME LIKE '%CLIENTE%'
SELECT * FROM DIEGOMARKS.VENDEDOR


DELETE FROM DIEGOMARKS.NOTAFISCAL WHERE IDCLIENTE = 1
DELETE FROM DIEGOMARKS.CLIENTE WHERE IDCLIENTE = 1
DELETE FROM DIEGOMARKS.VENDEDOR WHERE IDVENDEDOR = 1
DELETE FROM DIEGOMARKS.NOTAFISCALPRODUTO WHERE NUMERONOTAFISCAL = 1
COMMIT

UPDATE DIEGOMARKS.CLIENTE SET NOME = 'TIAGO' WHERE IDCLIENTE = 2

CREATE OR REPLACE FUNCTION
DIEGOMARKS.UF_MAX_CLIENTE()
RETURNS INTEGER
BEGIN ATOMIC
RETURN (SELECT MAX(IDCLIENTE) FROM
DIEGOMARKS.CLIENTE);
END


SELECT DIEGOMARKS.UF_MAX_CLIENTE() FROM DBA.DUMMY
