-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"

SELECT
  t.TrackId AS id,
  t.Name AS musica,
  al.Title AS album,
  ar.Name AS artista
FROM tracks t 
INNER JOIN albums al ON t.AlbumId = al.AlbumId
INNER JOIN artists ar ON al.ArtistId = ar.ArtistId
WHERE artista LIKE '%Nação%' 
AND al.Title NOT LIKE 'Da Lama Ao Caos';