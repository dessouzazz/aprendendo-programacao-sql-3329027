-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"

SELECT 
    al.title AS Titulo_do_album,
    ar.name AS Nome_do_artista
FROM albums al
LEFT JOIN artists ar 
ON al.ArtistId = ar.ArtistId
ORDER BY al.title;