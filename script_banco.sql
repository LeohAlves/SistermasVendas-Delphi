CREATE DATABASE IF NOT EXISTS VENDA;
USE VENDA;

CREATE TABLE  IF NOT EXISTS  CIDADE 
(
   IDCIDADE INT NOT NULL PRIMARY KEY,
   NOMECIDADE VARCHAR(50),
   SIGLAESTADO VARCHAR(2)
);

CREATE TABLE  IF NOT EXISTS  CLIENTE 
(
    IDCLIENTE INT NOT NULL PRIMARY KEY,
    NOMECLIENTE VARCHAR(50),
    ENDERCLIENTE VARCHAR(50),
    CPFCLIENTE VARCHAR(20),
    FONECLIENTE VARCHAR(20),
    IDCIDADE INT,
    FOREIGN KEY(IDCIDADE) REFERENCES CIDADE(IDCIDADE)
);

CREATE TABLE  IF NOT EXISTS  VENDA
(
    IDVENDA INT NOT NULL PRIMARY KEY,
    DATAVENDA DATE,
    HORAVENDA TIME,
    VALORVENDA NUMERIC(8,2),
    IDCLIENTE INT,
    FOREIGN KEY(IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE  IF NOT EXISTS  PRODUTO
(
    IDPRODUTO INT NOT NULL PRIMARY KEY,
    DESCRPRODUTO VARCHAR(50),
    VALORPRODUTO NUMERIC(8,2),
    QTDEPRODUTO INT
);

CREATE TABLE  IF NOT EXISTS  ITENSVENDA
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

CREATE TABLE IF NOT EXISTS Elemento
(
	Id	INT NOT NULL PRIMARY KEY auto_increment,
    ELEMENTO	VARCHAR(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS Raridade
(
	Id	INT NOT NULL PRIMARY KEY auto_increment,
    Raridade	VARCHAR(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS Arma
(
	Id	INT NOT NULL PRIMARY KEY auto_increment,
    Tipo	VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS Genero
(
	Id	INT NOT NULL PRIMARY KEY auto_increment,
    Name	VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Personagens
(
	IDPERSO		INT NOT NULL PRIMARY KEY,
    NOMEPERSO	VARCHAR(50) NOT NULL,
    ElementoId 	INT NOT NULL,
    RaridadeId  INT NOT NULL,
    ArmaId 		INT NOT NULL,
    GeneroId 		INT NOT NULL,
	FOREIGN KEY(ElementoId) REFERENCES Elemento(Id),
    FOREIGN KEY(RaridadeId) REFERENCES Raridade(Id),
    FOREIGN KEY(ArmaId) 	REFERENCES Arma(Id),
    FOREIGN KEY(GeneroId)   REFERENCES Genero(Id)
);

INSERT INTO Elemento(ELEMENTO) VALUES 
('Pyro'), ('Cryo'), ('Anemo'),('Dendro'), ('Hydro'), ('Geo');
INSERT INTO Elemento(ELEMENTO) VALUES 
('Electro');
INSERT INTO Arma(Tipo) VALUES 
('Espada'), ('Espada Grande'), ('Lan??a'),('Catalisador');
INSERT INTO Arma(Tipo) VALUES 
('Arco');

INSERT INTO Raridade(Raridade) VALUES 
('4 Estrelas'),('5 Estrelas');

INSERT INTO Genero(Name) VALUES 
('Feminino'),('Masculino'),('N??o especificado');
