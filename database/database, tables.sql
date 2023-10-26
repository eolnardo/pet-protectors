create database petprotectors;

drop database peteprotectors;

use petprotectors;

create table cliente (
	NOME VARCHAR(40),
    CPF VARCHAR(14) UNIQUE,
    GENERO VARCHAR(8),
    PETS VARCHAR(100),
    NASCIMENTO DATE,
    EMAIL VARCHAR(30) UNIQUE,
    SENHA VARCHAR(20),
    ENDERECO VARCHAR (200),
    TELEFONE VARCHAR(14),
    ID VARCHAR(100) PRIMARY KEY AUTO_INCREMENT UNIQUE
);

create table cliente (
	NOME VARCHAR(40),
    TUTOR VARCHAR(100),
    SEXO VARCHAR(8),
    NASCIMENTO DATE,
    IDADE VARCHAR(50),
    ESPECIE VARCHAR(30),
    RACA VARCHAR (30),
    ID VARCHAR(100) PRIMARY KEY AUTO_INCREMENT UNIQUE,
    foreign key (tutor) references cliente (ID)
);