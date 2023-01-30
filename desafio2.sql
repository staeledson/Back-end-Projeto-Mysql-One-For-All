SELECT
COUNT(DISTINCT mu.musica_id) AS cancoes,
COUNT(DISTINCT ar.artista_id) AS artistas,
COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.Musicas AS mu
INNER JOIN SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al;