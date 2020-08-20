SELECT * FROM Acesso;
SELECT * FROM Categoria;
SELECT * FROM Usuario;
SELECT * FROM Eventos
	INNER JOIN Categoria ON Eventos.IdCategoria = Categoria.IdCategoria
	INNER JOIN Localizacao ON Eventos.IdLocalizacao = Localizacao.IdLocalizacao;
SELECT Eventos.* , Categoria.Titulo AS NomeCategoria, Localizacao.* FROM Eventos
	INNER JOIN Categoria ON Eventos.IdCategoria = Categoria.IdCategoria
	INNER JOIN Localizacao ON Eventos.IdLocalizacao = Localizacao.IdLocalizacao;