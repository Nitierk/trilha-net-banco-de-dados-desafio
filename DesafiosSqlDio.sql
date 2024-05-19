/*1 - Buscar o nome e ano dos filmes*/

SELECT NOME, ANO FROM Filmes


/*2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano*/

SELECT NOME, ANO FROM Filmes
ORDER BY ANO

/*3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração*/

SELECT * FROM Filmes 
WHERE NOME = 'De Volta para o Futuro'

/*4 - Buscar os filmes lançados em 1997*/

SELECT * FROM FILMES 
WHERE ANO = 1997

/* 5 - Buscar os filmes lançados APÓS o ano 2000 */

SELECT * FROM FILMES
WHERE ANO > 2000

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */

SELECT * FROM FILMES
WHERE DURACAO > 100 AND DURACAO > 150
ORDER BY DURACAO

/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/

SELECT ANO, COUNT(*) AS 'Quantidade' FROM FILMES 
GROUP BY ANO
ORDER BY COUNT(*) DESC

/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'


/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


/* 10 - Buscar o nome do filme e o gênero */

SELECT F.NOME, G.GENERO FROM FILMES F
JOIN FilmesGenero FG ON FG.IdFilme = F.ID
JOIN Generos G ON G.ID = FG.IdGenero


/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */

SELECT F.NOME, G.GENERO FROM FILMES F
JOIN FilmesGenero FG ON FG.IdFilme = F.ID
JOIN Generos G ON G.ID = FG.IdGenero
WHERE G.Genero = 'Mistério'

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/

SELECT F.NOME, A.PRIMEIRONOME, A.UltimoNome, E.PAPEL
FROM FILMES F
JOIN ElencoFilme E ON E.IdFilme = F.Id
JOIN Atores A ON A.Id = E.ID