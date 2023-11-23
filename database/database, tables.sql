    SE VC JÁ TIVER A TABELA CLIENTE E QUISER ATUALIZAR ELA PARA ADICIONAR A TABELA DE PLANO:


    CREATE TABLE cliente (

        CLIENTEID INT AUTO_INCREMENT PRIMARY KEY,
        NOME VARCHAR(40),
        CPF VARCHAR(14) UNIQUE,
        GENERO VARCHAR(8),
        PETS VARCHAR(10),
        NASCIMENTO VARCHAR(10),
        EMAIL VARCHAR(30) UNIQUE,
        SENHA VARCHAR(20),
        ENDERECO VARCHAR(200),
        TELEFONE VARCHAR(14),
        PLANO INT,
        FOREIGN KEY (PLANO) REFERENCES PLANOS (PLANOID)
    );

    CREATE TABLE pets (
        NOME VARCHAR(40),
        TUTOR INT,
        SEXO VARCHAR(50),
        IDADE VARCHAR(5),
        ESPECIE VARCHAR(30),
        RACA VARCHAR(30),
        PETID INT AUTO_INCREMENT PRIMARY KEY,
        FOREIGN KEY (TUTOR) REFERENCES cliente (CLIENTEID)
    );

    CREATE TABLE PLANOS (
        PLANOID INT AUTO_INCREMENT PRIMARY KEY,
        NOME VARCHAR(40),
        PRECO DOUBLE,
        DESCRICAO VARCHAR (1000)
    );

    PLANOS
    INSERT INTO PLANOS (PLANOID, NOME, PRECO, DESCRICAO) VALUES (0, '', 0.00, 'Você ainda não selecionou um plano
    Vá para página inicial!')

    INSERT INTO PLANOS (PLANOID, NOME, PRECO, DESCRICAO) VALUES (1, 'Plano Básico', 34.99, '	- Consultas das 06h as 20h
    - Cobertura de vacinas
    - Atendimento à domicílio')

    INSERT INTO PLANOS (PLANOID, NOME, PRECO, DESCRICAO) VALUES (2, 'Plano Médio', 69.99, '- Consultas das 06h as 20h
    - Cobertura de vacinas
    - Atendimento à domicílio
    - Exames básicos e de imagem')

    INSERT INTO PLANOS (PLANOID, NOME, PRECO, DESCRICAO) VALUES (3, 'Plano Médio', 99.99, '- Consultas das 06h as 20h
    - Cobertura de vacinas
    - Atendimento à domicílio
    - Exames básicos e de imagem
    - Exames complexos
    - Internação
    - Processos cirúrgicos')

    CREATE TABLE agendamentos (
        IDAGENDAMENTO INT AUTO_INCREMENT PRIMARY KEY,
        CLIENTEID INT,
        PETID INT,
        LOCAL VARCHAR(100),
        DATA DATE,
        HORA VARCHAR(100),
        ESPECIALIDADE VARCHAR(50),
        STATUS VARCHAR(20),
        FOREIGN KEY (CLIENTEID) REFERENCES cliente (CLIENTEID),
        FOREIGN KEY (PETID) REFERENCES pets (PETID)
    );