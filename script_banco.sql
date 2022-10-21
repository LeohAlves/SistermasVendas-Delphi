CREATE DATABASE VENDA;
USE VENDA;

CREATE TABLE CIDADE 
(
   IDCIDADE INT NOT NULL PRIMARY KEY,
   NOMECIDADE VARCHAR(50),
   SIGLAESTADO VARCHAR(2)
);

CREATE TABLE CLIENTE 
(
    IDCLIENTE INT NOT NULL PRIMARY KEY,
    NOMECLIENTE VARCHAR(50),
    ENDERCLIENTE VARCHAR(50),
    CPFCLIENTE VARCHAR(20),
    FONECLIENTE VARCHAR(20),
    IDCIDADE INT,
    FOREIGN KEY(IDCIDADE) REFERENCES CIDADE(IDCIDADE)
);

CREATE TABLE VENDA
(
    IDVENDA INT NOT NULL PRIMARY KEY,
    DATAVENDA DATE,
    HORAVENDA TIME,
    VALORVENDA NUMERIC(8,2),
    IDCLIENTE INT,
    FOREIGN KEY(IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE PRODUTO
(
    IDPRODUTO INT NOT NULL PRIMARY KEY,
    DESCRPRODUTO VARCHAR(50),
    VALORPRODUTO NUMERIC(8,2),
    QTDEPRODUTO INT
);

CREATE TABLE ITENSVENDA
(
    IDVENDA INT NOT NULL,
    IDPRODUTO INT NOT NULL,
    IDITENS INT NOT NULL,
    QTDEITENS INT,
    VALORITENS NUMERIC(8,2),
    PRIMARY KEY(IDVENDA,IDPRODUTO,IDITENS),
    FOREIGN KEY(IDVENDA) REFERENCES VENDA(IDVENDA),
    FOREIGN KEY(IDPRODUTO) REFERENCES PRODUTO(IDPRODUTO)
);