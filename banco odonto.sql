create database odonto;
use  odonto;

CREATE TABLE paciente (
    cpf VARCHAR(20) PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    numerocasa INT(10) NOT NULL,
    complemento VARCHAR(20) NOT NULL,
    dataNasc DATE NOT NULL
);

CREATE TABLE dentista (
    croDentista VARCHAR(20) PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE consulta (
    idConsulta INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    dataConsulta DATE NOT NULL,
    horaConsulta VARCHAR(10) NOT NULL,
    croDentista VARCHAR(20) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    FOREIGN KEY (croDentista)REFERENCES dentista (croDentista),
    FOREIGN KEY (cpf)REFERENCES paciente(cpf)
);

create table servico(
	idServico int(10) primary key auto_increment not null,
    preco double not null
);

CREATE TABLE login (
    login VARCHAR(40) PRIMARY KEY NOT NULL,
    senha VARCHAR(40) NOT NULL
);

CREATE TABLE historico (
    idHistorico INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cpf VARCHAR(10) NOT NULL,
    idConsulta INT(10) NOT NULL,
    dataHistorico DATE NOT NULL,
    descricao VARCHAR(800) NOT NULL,
    FOREIGN KEY (cpf)
        REFERENCES paciente(cpf),
    FOREIGN KEY (idConsulta)
        REFERENCES consulta(idConsulta)
);

