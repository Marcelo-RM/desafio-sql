-- 01 Buscar o nome e o ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 02 Buscar o nome, ano e duração dos filmes, ordenados por ano em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC;

-- 03 Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 04 Buscar os filmes lançados em 1997, trazendo o nome, ano e duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 05 Buscar os filmes lançados após o ano 2000, trazendo o nome, ano e duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 06 Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 07 Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 08 Buscar os atores do gênero masculino, retornando PrimeiroNome, UltimoNome e Genero
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

-- 09 Buscar os atores do gênero feminino, retornando PrimeiroNome, UltimoNome e Genero, ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10 Buscar o nome do filme e o gênero
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
-- 12 Buscar o nome do filme e os atores, trazendo PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
