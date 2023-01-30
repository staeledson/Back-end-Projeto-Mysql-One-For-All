SELECT 
art.nome_artista AS 'artista',
al.nome_album AS 'album',
COUNT(seg.artista_id) AS 'seguidores'
FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS al ON al.artista_id = art.artista_id
INNER JOIN SpotifyClone.Seguindo_artistas AS seg ON seg.artista_id = al.artista_id 
GROUP BY al.nome_album, art.artista_id
ORDER BY COUNT(seg.artista_id) DESC, art.nome_artista, al.nome_album;