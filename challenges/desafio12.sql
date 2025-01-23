 SELECT a.artista,
 CASE
        WHEN COUNT(fc.cancao_id) >= 5  THEN 'A'
        WHEN COUNT(fc.cancao_id) = 3 OR COUNT(fc.cancao_id) = 4  THEN 'B'
        WHEN COUNT(fc.cancao_id) = 1 OR COUNT(fc.cancao_id) = 2 THEN 'C'
        ELSE '-'
    END AS ranking
 FROM SpotifyClone.fav_cancoes AS fc
 JOIN SpotifyClone.cancoes AS c
 ON c.cancao_id = fc.cancao_id
 RIGHT JOIN SpotifyClone.artistas AS a
 ON c.artista_id = a.artista_id
 GROUP BY artista
 ORDER BY COUNT(fc.cancao_id) DESC, artista;