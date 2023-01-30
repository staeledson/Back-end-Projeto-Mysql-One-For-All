SELECT 
	mu.nome_musica as cancao,
	COUNT(hr.usuario_id)
FROM SpotifyClone.Musicas AS mu
INNER JOIN SpotifyClone.Historico_reproducao as hr
	ON mu.musica_id = hr.musica_id
GROUP BY mu.nome_musica
ORDER BY COUNT(hr.usuario_id) DESC, nome_musica LIMIT 2;