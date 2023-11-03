CREATE DATABASE banco;
USE banco;
CREATE TABLE Clientes (
	CPF VARCHAR(100) primary key,
    nome VARCHAR(150) NOT NULL,
    DataNascimento DATE,
    endereco  VARCHAR(150) NOT NULL,
    cep  VARCHAR(150) NOT NULL,
    bairro  VARCHAR(150) NOT NULL,
	cidade  VARCHAR(150) NOT NULL,
    estado  VARCHAR(150) NOT NULL,
    UltimaCompra DATE
    
);

INSERT INTO Clientes(CPF, nome, DataNascimento, endereco, cep, bairro, cidade, estado) VALUES
	("04496332780", "João da Silva", "1969-11-25", "Rua Antônio Numes", "88045963", "Palmeiras", "Londrina", "PR"),
    ("05485031490", "Ana Regina Fagundes", "1986-09-21", "Rua Palmeias Novas", "88078923", "Leblon", "Rio de Janeiro", "RJ"),
    ("03350314905", "Fernando Soares", "1990-03-05", "Rua Palmeias Novas", "88048917", "Copacabana", "Rio de Janeiro", "RJ"),
    ("15698799401", "Maria Clara Da Silva", "2000-11-06", "Rua das Palmeiras", "59044120", "Néopolis", "Natal", "RN"),
    ("01753280815", "Ana Júlia Dantas Macedo", "1995-06-14", "Rua Machado de Assis", "67103310", "Tambaú", "João Pessoa", "PB");
    
SELECT * FROM Clientes 
WHERE cidade = "Rio de Janeiro";

DELETE FROM Clientes 
WHERE cidade = "Londrina";

SELECT * FROM Clientes
    