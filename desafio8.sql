SELECT 
ar.nome_artista AS 'artista',
al.nome_album AS 'album'
FROM
SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al ON ar.artista_id = al.artista_id
WHERE ar.nome_artista = 'Elis Regina';