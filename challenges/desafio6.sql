 SELECT MIN(p.valor_plano) AS faturamento_minimo, 
    MAX(p.valor_plano) AS faturamento_maximo,
    ROUND(AVG(valor_plano), 2) AS faturamento_medio,
    SUM(valor_plano) AS faturamento_total
 FROM SpotifyClone.planos AS p
 LEFT JOIN SpotifyClone.pessoasUsuarias AS u
 ON u.plano_id = p.plano_id;