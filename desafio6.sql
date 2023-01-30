SELECT 
MIN(pl.preco) as 'faturamento_minimo',
MAX(pl.preco) as 'faturamento_maximo',
ROUND(AVG(pl.preco), 2) AS 'faturamento_medio',
SUM(pl.preco) AS 'faturamento_total'
FROM SpotifyClone.Planos as pl
INNER JOIN SpotifyClone.Usuarios ON Usuarios.plano_id = pl.plano_id;