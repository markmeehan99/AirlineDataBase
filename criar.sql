PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

--Aviao
DROP TABLE IF EXISTS Aviao;

CREATE TABLE Aviao (
    idAviao int PRIMARY KEY,
    lotacaoMax int not null CHECK (lotacaoMax > 0),
    alcance int not null CHECK (alcance > 0),
    marca text not null,
    modelo text not null
);

--Voo
DROP TABLE IF EXISTS Voo;

CREATE TABLE Voo (
    idVoo text PRIMARY KEY,
    horaPartida time not null,
    horaChegada time not null,
    duracaoPrevista time,
    idAviao int REFERENCES Aviao(idAviao) NOT NULL,
    CHECK (horaPartida < horaChegada)
);

--Origem
DROP TABLE IF EXISTS Origem;

CREATE TABLE Origem (
    idVoo text REFERENCES Voo(idVoo) NOT NULL,
    idAeroporto text REFERENCES Aeroporto(idAeroporto) NOT NULL,
    PRIMARY KEY (idVoo)
);

--Destino
DROP TABLE IF EXISTS Destino;

CREATE TABLE Destino (
    idVoo int REFERENCES Voo(idVoo) NOT NULL,
    idAeroporto int REFERENCES Aeroporto(idAeroporto) NOT NULL,
    PRIMARY KEY (idVoo)
);

--Bagagem
DROP TABLE IF EXISTS Bagagem;

CREATE TABLE Bagagem (
    idBagagem int PRIMARY KEY,
    comprimento int not null CHECK (comprimento > 0 and comprimento < 1.19),
    largura real not null CHECK (largura > 0 and largura < 1.19),
    altura real not null CHECK (altura > 0 and altura < 0.81),
    peso real not null CHECK (peso > 0 and peso < 35),
    lugar int REFERENCES Bilhete(lugar)
);

--Bilhete
DROP TABLE IF EXISTS Bilhete;

CREATE TABLE Bilhete (
    lugar int not null CHECK (lugar < 201), --int?
    preco int not null CHECK (preco > 0),
    email text REFERENCES Conta(email) ,
    idVoo int REFERENCES Voo(idVoo) ,
    PRIMARY KEY (lugar)
);

--Conta
DROP TABLE IF EXISTS Conta;

CREATE TABLE Conta (
    email text PRIMARY KEY,
    password text not null,
    quilometros int not null
);

--Passageiro
DROP TABLE IF EXISTS Passageiro;

CREATE TABLE Passageiro (
    idPassageiro int PRIMARY KEY,
    email text REFERENCES Conta(email) ,
    idPessoa int REFERENCES Pessoa(idPessoa)
);

--Piloto
DROP TABLE IF EXISTS Piloto;

CREATE TABLE Piloto (
    idEmpresa int PRIMARY KEY,
    horasVoo int not null,
    idPessoa text REFERENCES Pessoa(idPessoa) 
);

--AssistenteBordo
DROP TABLE IF EXISTS AssistenteBordo;

CREATE TABLE AssistenteBordo (
    idEmpresa int PRIMARY KEY,
    horasVoo int not null,
    idPessoa text REFERENCES Pessoa(idPessoa) 
);

--Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    idPessoa int PRIMARY KEY,
    nome text not null,
    morada text not null,
    telefone int not null CHECK (length(telefone) == 9),
    passaporte text not null, --text?
    dataNascimento DATE not null
);

--Nacionalidade
DROP TABLE IF EXISTS Aeroporto;

CREATE TABLE Aeroporto (
    idAeroporto text not null,
    nome text not null,
    nomePais text REFERENCES Pais(nomePais) not null,
    PRIMARY KEY (idAeroporto)
);

--Pais
DROP TABLE IF EXISTS Pais;

CREATE TABLE Pais (
    nomePais text PRIMARY KEY
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;