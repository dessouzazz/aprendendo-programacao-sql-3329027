
---------
SELECT 
  t.TrackId AS ID, 
  t.Name AS Musica, 
  al.Title AS Album
FROM tracks t
INNER JOIN albums al ON t.AlbumId = al.AlbumId
ORDER BY t.TrackId;

------------

WITH combo AS(
  SELECT 
    t.TrackId AS ID, 
    t.Name AS Musica, 
    al.Title AS Album
  FROM tracks t
  INNER JOIN albums al ON t.AlbumId = al.AlbumId
)

SELECT * from combo;