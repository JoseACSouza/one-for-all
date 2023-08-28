 SELECT 
    c.cancao_name AS cancao, 
    COUNT(*) AS reproducoes
 FROM SpotifyClone.historico AS h
 INNER JOIN SpotifyClone.cancoes AS c
 ON c.cancao_id = h.cancao_id
 GROUP BY h.cancao_id
 ORDER BY reproducoes DESC, cancao ASC
 LIMIT 2;