INSERT INTO Acesso (Tipo) VALUES ('Administrador'),('Padrao');

INSERT INTO  Categoria(Titulo) VALUES ('Meetup'),('Workshop'),('Live');

INSERT INTO  Localizacao(logradouro, Numero,Barro, Cidade, UF,CEP ) VALUES 
('Av. Miguel Ignácio Curi',111,'Artur Alvim','São Paulo','SP','08295-005');

INSERT INTO Usuario(Nome,Email,Senha,DataNascimento,IdAcesso) VALUES
('Gustavo','gustavo@gmail.com','12345678','2004-07-12T00:00:00',1);

INSERT INTO Eventos (DataEvento,Capacidade,IdLocalizacao,IdCategoria) VALUES
('2020-09-27T18:00:00',100,1,2);

