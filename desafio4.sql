SELECT 
	usu.nome_usuario AS usuario,
    IF((YEAR(MAX(hr.data_reproducao)) >= 2021),'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM 
	SpotifyClone.Usuarios AS usu
    INNER JOIN SpotifyClone.Historico_reproducao AS hr ON usu.usuario_id = hr.usuario_id
GROUP BY usu.nome_usuario
ORDER BY usu.nome_usuario;