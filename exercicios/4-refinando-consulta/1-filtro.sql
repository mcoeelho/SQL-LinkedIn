-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"

SELECT
t.TrackId as ID,
t.Name as Musica,
al.Title as Album,
ar.Name as Artista
FROM
tracks as t
INNER JOIN albums as al ON t.AlbumId = al.AlbumId
INNER JOIN artists as ar ON al.ArtistId = ar.ArtistId
WHERE
Artista LIKE '%Nação%'
AND Album NOT LIKE 'Da Lama Ao Caos';