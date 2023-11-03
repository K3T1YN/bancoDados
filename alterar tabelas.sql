USE biblioteca;

#ALTER TABLE Usuario ADD CONSTRAINT emailUnico UNIQUE(email); 

#ALTER TABLE Autor ADD CONSTRAINT cpflUnico UNIQUE(cpf); 
#select * from Autor
#UPDATE Autor
#SET cpf = "654"
#WHERE autorID = 4

#um atributo pode ser composto e multivalorado - perguta prova

/*CREATE TABLE Endereco(
	enderecoID INT AUTO_INCREMENT PRIMARY KEY,
    rua VARCHAR(255) NOT NULL,
    numero INT, 
    complemento VARCHAR(150),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    cep VARCHAR(100) NOT NULL,
    userID INT,
    FOREIGN KEY(userID) REFERENCES Usuario(userID) 
    
);*/

#ALTER TABLE Usuario DROP COLUMN endereco;
 
#SELECT  * FROM Livro WHERE autorID= 1;

/*SELECT 
	livro.nome, autor.nome
FROM
	Livro
		INNER JOIN 
	Autor ON Livro.autorID = Autor.autorID
WHERE Autor.autorID = 1;*/

/*SELECT 
	livro.nome, livro.ano, autor.nome
FROM
	Livro
		INNER JOIN 
	Autor ON Livro.autorID = Autor.autorID
WHERE Autor.autorID = 1;*/

SELECT 
	U.nome AS NomeDoUsuario,
    L.nome AS NomeDoLivro,
    E.DataEmprestimo,
    E.DataDevolucao
FROM 
	Emprestimo E
		INNER JOIN 
	Usuario U ON E.User = U.UserID
		INNER JOIN
	Livro L ON 	LivroID
WHERE
	U.UserID = 2;

    




    

    
    




