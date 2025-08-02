-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"


-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

SELECT
t.TrackId id,
t.Name musica,
al.Title album,
ar.Name artista
FROM
tracks t
INNER JOIN albums al ON t.AlbumId = al.AlbumId
INNER JOIN artists ar ON ar.ArtistId = al.ArtistId;


WITH tabela_teste AS (
SELECT
t.TrackId id,
t.Name musica,
al.Title album,
ar.Name artista
FROM
tracks t
INNER JOIN albums al ON t.AlbumId = al.AlbumId
INNER JOIN artists ar ON ar.ArtistId = al.ArtistId)

SELECT
artista,
COUNT(musica) as quantidade_total_musicas
FROM
tabela_teste
WHERE
artista LIKE 'Caetano%';