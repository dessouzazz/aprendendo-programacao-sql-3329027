-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"

SELECT 
  t.TrackId AS ID,
  t.Name AS Musica,
  al.Title AS Album,
  ar.Name AS Artista
FROM tracks t
INNER JOIN albums al ON t.AlbumId = al.AlbumId
INNER JOIN artists ar ON al.ArtistId = ar.ArtistId;

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

SELECT 
  COUNT(t.TrackId) AS Total_de_musicas,
  ar.Name AS Artista
FROM tracks t
INNER JOIN albums al ON t.AlbumId = al.AlbumId
INNER JOIN artists ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name;

-----------------------------------------------------


WITH musica AS (
  SELECT 
    t.TrackId AS ID,
    t.Name AS Musica,
    al.Title AS Album,
    ar.Name AS Artista
  FROM tracks t
  INNER JOIN albums al ON t.AlbumId = al.AlbumId
  INNER JOIN artists ar ON al.ArtistId = ar.ArtistId
)

SELECT 
  COUNT(ID) AS Total_de_musicas,
  Artista
FROM musica
WHERE Artista = 'Caetano Veloso';