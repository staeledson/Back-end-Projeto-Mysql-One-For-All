SELECT 
	usu.nome_usuario AS usuario,
    COUNT(hr.usuario_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(mu.duracao / 60), 2) AS total_minutos
FROM 
	SpotifyClone.Usuarios AS usu
    INNER JOIN SpotifyClone.Historico_reproducao AS hr ON usu.usuario_id = hr.usuario_id
    INNER JOIN SpotifyClone.Musicas AS mu ON hr.musica_id = mu.musica_id 
GROUP BY usu.nome_usuario
ORDER BY usu.nome_usuario;