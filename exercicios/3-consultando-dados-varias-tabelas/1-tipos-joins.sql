-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"

SELECT *
FROM albums al
LEFT JOIN artists ar
ON al.ArtistId = ar.ArtistId;