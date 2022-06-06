CREATE TABLE PESSOA(
    IDPESSOA INT PRIMARY KEY UNIQUE NOT NULL,
    NOME VARCHAR(30) NOT NULL,
    TELEFONE VARCHAR(12),
    EMAIL VARCHAR(40),
    CPF VARCHAR(14) UNIQUE NOT NULL 
);


CREATE TABLE FUNCIONARIO(
    IDFUNCIONARIO INT UNIQUE NOT NULL,
    CARGO VARCHAR(20) NOT NULL,
    SALARIO FLOAT NOT NULL,
    CARTEIRATRABALHO VARCHAR(20) UNIQUE NOT NULL,
    CONSTRAINT FK_PESSOA_FUNCIONARIO FOREIGN KEY (IDFUNCIONARIO) REFERENCES 
    PESSOA(IDPESSOA)
);

CREATE TABLE CLIENTE(
    IDCLIENTE INT UNIQUE NOT NULL,
    CONSTRAINT FK_PESSOA_CLIENTE FOREIGN KEY (IDCLIENTE) REFERENCES 
    PESSOA(IDPESSOA)
);

CREATE TABLE PRODUTO(
    IDPRODUTO INT PRIMARY KEY UNIQUE NOT NULL,
    NOME VARCHAR(40) NOT NULL,
    VALOR FLOAT NOT NULL,
    VALIDADE DATE NOT NULL,
    TIPO VARCHAR(20),
    QUANTIDADE INT NOT NULL
);

CREATE TABLE FORNECEDOR(
    IDFORNECEDOR INT PRIMARY KEY UNIQUE NOT NULL,
    NOME VARCHAR(40) NOT NULL,
    TELEFONE VARCHAR(12),
    ENDERECO  VARCHAR(40),
    EMAIL VARCHAR(50),
    CNPJ VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE CESTA(
ID_PRODUTO INT  NOT NULL,
ID_CLIENTE INT NOT NULL,
QNT_ITEN INT NOT NULL,
CONSTRAINT FK_PRODUTO_CESTA FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTO(IDPRODUTO),
CONSTRAINT FK_CLIENTE_CESTA FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE FORNECE(
	ID_PRODUTO INT NOT NULL,
	ID_FORNECEDOR INT NOT NULL,
	QNT_ITEN INT NOT NULL,
	VALOR_ITEN FLOAT NOT NULL,
	CONSTRAINT FK_PRODUTO_FORNECE FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(IDPRODUTO),
	CONSTRAINT FK_FORNECEDOR_FORNECE FOREIGN KEY(ID_FORNECEDOR) REFERENCES FORNECEDOR(IDFORNECEDOR)
);


--INSERINDO DADOS TABELA PESSOA
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(1, 'GUILHERME', '5399133232', 'GUILHERME@GAMIL.COM', '68586604120');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(2, 'ALBERTO', '53991326532', 'ALBERTO@GAMIL.COM', '21124604120');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(3, 'BIANCA', '53981523698', 'BIANCA@GAMIL.COM', '29982745875');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(4, 'CASSIO', '53932230710', 'CASSIO@GAMIL.COM', '28889217820');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(5, 'DIOGO', '53991656541', 'DIOGO@GAMIL.COM', '38782887861');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(6, 'ELISA', '53981546987', 'ELISA@GAMIL.COM', '31514072858');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(7, 'FELIPE', '53941236578', 'FELIPE@GAMIL.COM', '40064061850');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(8, 'HENRIQUE', '53955165493', 'HENRIQUE@GAMIL.COM', '13672929808');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(9, 'IURI', '53951684552', 'IURI@GAMIL.COM', '36907694859');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(10, 'JOANA', '53932245698', 'JOANA@GAMIL.COM', '17215309835');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(11, 'KAYLE', '53981123564', 'KAYLE@GAMIL.COM', '29815252801');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(12, 'LUIS', '53991563210', 'LUIS@GAMIL.COM', '34343269876');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(13, 'MARIA', '53942456263', 'MARIA@GAMIL.COM', '08845874877');
INSERT INTO PESSOA(IDPESSOA, NOME, TELEFONE, EMAIL, CPF) VALUES(14, 'NICOLAS', '53951337572', 'NICOLAS@GAMIL.COM', '48406289805');

--INSERINDO DADOS TABELA CLIENTE
INSERT INTO CLIENTE VALUES(14);
INSERT INTO CLIENTE VALUES(9);
INSERT INTO CLIENTE VALUES(6);
INSERT INTO CLIENTE VALUES(13);
INSERT INTO CLIENTE VALUES(2);
INSERT INTO CLIENTE VALUES(11);
INSERT INTO CLIENTE VALUES(8);
INSERT INTO CLIENTE VALUES(5);
INSERT INTO CLIENTE VALUES(10);


--INSERINDO DADOS TABELA FUNCIONARIO
INSERT INTO FUNCIONARIO(IDFUNCIONARIO, CARGO, SALARIO, CARTEIRATRABALHO) VALUES(1,'PADEIRO', 2000.00, '123456789010');
INSERT INTO FUNCIONARIO(IDFUNCIONARIO, CARGO, SALARIO, CARTEIRATRABALHO) VALUES(3,'GERENTE',4000.50,'98765432101');
INSERT INTO FUNCIONARIO(IDFUNCIONARIO, CARGO, SALARIO, CARTEIRATRABALHO) VALUES(4,'ATENDENTE',1550.30,'78546923104');
INSERT INTO FUNCIONARIO(IDFUNCIONARIO, CARGO, SALARIO, CARTEIRATRABALHO) VALUES(7,'DONO',8000.00,'98654120354');
INSERT INTO FUNCIONARIO(IDFUNCIONARIO, CARGO, SALARIO, CARTEIRATRABALHO) VALUES(12, 'PADEIRO',3000.0,'02136541023');
SELECT * FROM pessoa;
--INSERINDO DADOS TABELA FORNECEDOR
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(1,'DONA  BENTA','53942321511','Rua Aloiso feira neto, 10','DONABENTA@GMAIL.COM','069478920001');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(2,'BUSCOPAN','53984563212','Rua gustavo feira, 50','BUSCOPAN@GMAIL.COM','469475430321');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(3,'DAMBY','53972510147','Rua Abrilino ferreira, 230','DAMBY@GMAIL.COM','569477899321');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(4,'QUATA','53972415213','Avenida Duque de Caxias, 223','QUATA@GMAIL.COM','204474322041');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(5,'SADIA','53991547896','Rua XV Paulo, 12','SADIA@GMAIL.COM','169667829042');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(6,'TRADICAO','53989645412','Rua Dom Pedro 2, 130','TRADICAO@GMAIL.COM','032145254311');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(7,'QUALY','53912344556','Avenida Bento Goncalves, 321','QUALY@GMAIL.COM','939478920432');
INSERT INTO FORNECEDOR(IDFORNECEDOR, NOME, TELEFONE, ENDERECO, EMAIL, CNPJ) VALUES(8,'BIRI','53997874521','Avenida Bento Goncalves, 609','BIRI@GMAIL.COM','849478920321');

--INSERINDO PRODUTOS
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(1, 'PÃO', 9.9, '12/12/2022', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(2, 'PASTEL', 4.5, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(3, 'BOLO', 10, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(4, 'REQUEIJAO', 3.43, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(5, 'MARGARINA', 4, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(6, 'MAIONESE', 3, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(7, 'PRESUNTO', 12, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(8, 'QUEIJO', 17, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(9, 'MORTADELA', 6, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(10, 'QUEIJO CHEEDAR', 23, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(11, 'REFRI', 8, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(12, 'CAFÉ', 5, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(13, 'COXINHA', 4, '12/12/2023', 'PERICIVEL', 0);
INSERT INTO PRODUTO(IDPRODUTO, NOME, VALOR, VALIDADE, TIPO, QUANTIDADE) VALUES(14, 'ROCOMBOLE', 9, '12/12/2023', 'PERICIVEL', 0);

CREATE OR REPLACE FUNCTION DESCONTO_ESTOQUE() RETURNS TRIGGER
AS 
$$
DECLARE 
	QNT INTEGER;
BEGIN
	SELECT QUANTIDADE FROM PRODUTO 
	WHERE IDPRODUTO = NEW.ID_PRODUTO INTO QNT;
	IF QNT < NEW.QNT_ITEN THEN
		RAISE EXCEPTION 'QUANTIDADE INDISPONÍVEL EM ESTOQUE.';
	ELSE
		UPDATE PRODUTO SET QUANTIDADE = QUANTIDADE - NEW.QNT_ITEN
		WHERE IDPRODUTO = NEW.ID_PRODUTO;
	END IF;
	RETURN NEW;
END
$$ LANGUAGE PLPGSQL;


--TRIGGER DESCONTO ESTOQUE PELA COMPRA DA CESTA
CREATE TRIGGER T_DESCONTO_ESTOQUE
BEFORE INSERT ON CESTA
FOR  EACH ROW
EXECUTE PROCEDURE DESCONTO_ESTOQUE();


--TRIGGER ADIÇÃO DO ESTOQUE PELO FORNECEDOR
CREATE TRIGGER T_INCREMENTA_ESTOQUE
AFTER INSERT ON FORNECE
FOR  EACH ROW
EXECUTE PROCEDURE INCREMENTA_ESTOQUE();

CREATE OR REPLACE FUNCTION INCREMENTA_ESTOQUE() RETURNS TRIGGER
AS 
$$
DECLARE 
	QNT INTEGER;
BEGIN
	SELECT QUANTIDADE FROM PRODUTO 
	WHERE IDPRODUTO = NEW.ID_PRODUTO INTO QNT;
	UPDATE PRODUTO SET QUANTIDADE = QUANTIDADE + NEW.QNT_ITEN
	WHERE IDPRODUTO = NEW.ID_PRODUTO;
	RETURN NEW;
END
$$ LANGUAGE PLPGSQL;


--CALCULA O VALOR TOTAL DOS ITENS VENDIDOS
SELECT SUM(QNT_ITEM * VALOR) AS TOTAL_VENDIDO
FROM CESTA
INNER JOIN PRODUTO
ON IDPRODUTO = ID_PRODUTO
GROUP BY IDPRODUTO;


--INSERÇÃO DOS PRODUTOS NO ESTOQUE
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(1, 2, 40, 6.0);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(2, 1, 40, 4.0);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(3, 2, 40, 5.0);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(4, 3, 20, 8.0);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(5, 4, 30, 4.1);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(6, 5, 45, 2.0);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(7, 6, 60, 3.0);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(8, 7, 10, 10);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(9, 8, 30, 40);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(10, 3, 32, 4.9);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(11, 6, 13, 5.9);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(12, 5, 19, 22.94);
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(13, 8, 29, 4.54); 
INSERT INTO FORNECE(ID_PRODUTO, ID_FORNECEDOR, QNT_ITEM, VALOR)
VALUES(14, 1, 11, 4.32);

--1° CONSULTA, VERIFICANDO O NOME E O CARGO DOS FUNCIONARIOS
SELECT NOME, CARGO FROM PESSOA
INNER JOIN FUNCIONARIO
ON IDPESSOA = IDFUNCIONARIO;

--2° CONSULTA VALIDANDO O TOTAL VENDIDO DA TABELA CESTA E O 
--VALOR QUE RETORNOU

SELECT P.NOME AS PRODUTO, SUM(QNT_ITEM * VALOR) AS TOTAL_VENDIDO
FROM CESTA
INNER JOIN PRODUTO AS P
ON IDPRODUTO = ID_PRODUTO
GROUP BY IDPRODUTO;

--3° CONSULTA PARA VERIFICAR QUAL CLIENTE COMPROU MAIS
SELECT NOME, SUM(QNT_ITEM) AS TOTAL
FROM PESSOA 
INNER JOIN CESTA
ON IDPESSOA = ID_CLIENTE
GROUP BY NOME;

--4° CONSULTA PRA VER TODOS OS DADOS DO FUNCIONARIO
SELECT P.NOME, P.TELEFONE, P.EMAIL, P.CPF, F.CARGO, F.SALARIO, F.CARTEIRATRABALHO
FROM PESSOA AS P
INNER JOIN FUNCIONARIO AS F
ON IDPESSOA = IDFUNCIONARIO;

--ATUALIZANDO VALOR DO PREÇO 
CREATE FUNCTION ATUALIZA(IDENTIFICAO INT, VALOR_NEW FLOAT)
    AS $$ UPDATE PRODUTO SET VALOR = VALOR_NEW WHERE ID_PRODUTO = IDENTIFICAO;
    LANGUAGE SQL;
