USE biblioteca; 
SHOW TABLES;
ALTER TABLE livro ADD column autorID INT NOT NULL;
ALTER TABLE livro ADD FOREIGN KEY(autorID) REFERENCES Autor(autorID);

ALTER TABLE livro  ADD column editoraID INT NOT NULL;
ALTER TABLE livro ADD FOREIGN KEY(editoraID) REFERENCES Editora(editoraID);



