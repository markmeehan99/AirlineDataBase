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
    idVoo text REFERENCES Voo(idVoo),
    idAeroporto text REFERENCES Aeroporto(idAeroporto) NOT NULL,
    PRIMARY KEY (idVoo)
);

--Destino
DROP TABLE IF EXISTS Destino;

CREATE TABLE Destino (
    idVoo text REFERENCES Voo(idVoo),
    idAeroporto text REFERENCES Aeroporto(idAeroporto) NOT NULL,
    PRIMARY KEY (idVoo)
);

--Bagagem
DROP TABLE IF EXISTS Bagagem;

CREATE TABLE Bagagem (
    idBagagem int PRIMARY KEY,
    comprimento real not null CHECK (comprimento > 0 and comprimento < 1.2),
    largura real not null CHECK (largura > 0 and largura < 1.2),
    altura real not null CHECK (altura > 0 and altura < 0.82),
    peso int not null CHECK (peso > 0 and peso < 36),
    idBilhete int REFERENCES Bilhete(idBilhete) ON DELETE SET NULL NOT NULL ON CONFLICT ABORT
);

--Bilhete
DROP TABLE IF EXISTS Bilhete;

CREATE TABLE Bilhete (
    idBilhete int not null,
    lugar int not null CHECK (lugar < 201),
    preco int not null CHECK (preco > 0),
    email text REFERENCES Conta(email) ON DELETE SET NULL NOT NULL ON CONFLICT ABORT,
    idVoo text REFERENCES Voo(idVoo) ON DELETE SET NULL NOT NULL ON CONFLICT ABORT,
    PRIMARY KEY (idBilhete)
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
    email text REFERENCES Conta(email) on DELETE set null not null on CONFLICT ABORT,
    idPessoa int REFERENCES Pessoa(idPessoa) on DELETE set null not null on CONFLICT ABORT
);

--Piloto
DROP TABLE IF EXISTS Piloto;

CREATE TABLE Piloto (
    idEmpresa int PRIMARY KEY,
    horasVoo int not null,
    idPessoa int REFERENCES Pessoa(idPessoa) on delete set null not null on CONFLICT ABORT
);

--AssistenteBordo
DROP TABLE IF EXISTS AssistenteBordo;

CREATE TABLE AssistenteBordo (
    idEmpresa int PRIMARY KEY,
    horasVoo int not null,
    idPessoa int REFERENCES Pessoa(idPessoa) on delete set null not null on CONFLICT ABORT
);

--Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    idPessoa int PRIMARY KEY,
    nome text not null,
    morada text not null,
    telefone text not null CHECK (length(telefone) <= 18),
    passaporte text not null, 
    dataNascimento DATE not null
);

--Aeroporto
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

--Nacionalidade
DROP TABLE IF EXISTS Nacionalidade;

CREATE TABLE Nacionalidade (
    idPessoa int REFERENCES Pessoa(idPessoa) ,--on delete set null not null on CONFLICT ABORT,
    nomePais text REFERENCES Pais(nomePais) ,--on delete set null not null on CONFLICT ABORT,
    PRIMARY KEY (idPessoa, nomePais)
);

--Pilotagem
DROP TABLE IF EXISTS Pilotagem;

CREATE TABLE Pilotagem (
    idEmpresa int REFERENCES Piloto(idEmpresa) on delete set null not null on CONFLICT ABORT,
    idVoo int REFERENCES Voo(idVoo) on delete set null not null on CONFLICT ABORT,
    PRIMARY KEY (idEmpresa, idVoo)
);

--PessoalCabine
DROP TABLE IF EXISTS PessoalCabine;

CREATE TABLE PessoalCabine (
    idEmpresa int REFERENCES AssistenteBordo(idEmpresa) on delete set null not null on CONFLICT ABORT,
    idVoo int REFERENCES Voo(idVoo) on delete set null not null on CONFLICT ABORT,
    PRIMARY KEY (idEmpresa, idVoo)
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
