-- Criação do banco de dados Oficina
CREATE DATABASE Oficina;
USE Oficina;

-- Criação da tabela Identificacao
CREATE TABLE Identificacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    rg CHAR(8) NOT NULL
);

-- Criação da tabela Contato
CREATE TABLE Contato (
	id INT PRIMARY KEY AUTO_INCREMENT,
    telefone CHAR(13) NOT NULL,
    email VARCHAR(40) NOT NULL
);

-- Criação da tabela Endereco
CREATE TABLE Endereco (
	id INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(100),
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL
);

-- Criação da tabela Cliente
CREATE TABLE Cliente (
	id INT PRIMARY KEY AUTO_INCREMENT,
    identificacao_id INT NOT NULL,
    contato_id INT NOT NULL,
    endereco_id INT NOT NULL,
    CONSTRAINT fk_cliente_identificacao FOREIGN KEY (identificacao_id) REFERENCES Identificacao(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_cliente_contato FOREIGN KEY (contato_id) REFERENCES Contato(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_cliente_endereco FOREIGN KEY (endereco_id) REFERENCES Endereco(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Criação da tabela Veiculo
CREATE TABLE Veiculo (
	id INT PRIMARY KEY AUTO_INCREMENT,
    placa CHAR(7) NOT NULL,
    modelo VARCHAR(30),
    ano CHAR(4),
    cor VARCHAR(20),
    cliente_id INT NOT NULL,
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT unicidade_placa_veiculo UNIQUE (placa)
);
