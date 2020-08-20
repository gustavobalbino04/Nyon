CREATE DATABASE Nyous;

CREATE TABLE Acesso(
	IdAcesso INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR(50)NOT NULL

);
CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50) NOT NULL
);
CREATE TABLE Localizacao(
	IdLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
	Logradouro VARCHAR(100) NOT NULL,
	Numero VARCHAR(20),
	Complemento VARCHAR(50),
	Barro VARCHAR(50),
	Cidade VARCHAR(50),
	UF CHAR(2),
	CEP VARCHAR(10)
);
CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100)NOT NULL,
	Email VARCHAR(100)NOT NULL,
	Senha VARCHAR(100)NOT NULL,
	DataNascimento DATETIME,
	--FK
	IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso)

);
CREATE TABLE Eventos(
   IdEvento INT PRIMARY KEY IDENTITY NOT NULL,
   DataEvento DATETIME NOT NULL,
   AcessoRestrito BINARY DEFAULT 0,
   Capacidade INT NOT NULL,
   Descricao VARCHAR(255),

   --FK
   IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao(IdLocalizacao),
   IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria)

	
);
CREATE TABLE Presenca(
	IdPresenca INT PRIMARY KEY IDENTITY NOT NULL,
	Corfirmacao BIT DEFAULT NULL,

	--FK
	IdEvento INT FOREIGN KEY REFERENCES Eventos(IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);
CREATE TABLE Convite(
	IdConvite INT PRIMARY KEY IDENTITY NOT NULL,
	Corfirmacao BIT DEFAULT NULL,

	--FK
	IdEvento INT FOREIGN KEY REFERENCES Eventos (IdEvento),
	IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);
