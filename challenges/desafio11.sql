SELECT album, COUNT(*) AS favoritadas
 FROM SpotifyClone.fav_cancoes AS fc
 JOIN SpotifyClone.cancoes AS c
 ON c.cancao_id = fc.cancao_id
 JOIN SpotifyClone.albuns AS a
 ON c.album_id = a.album_id
 GROUP BY album
 ORDER BY favoritadas DESC, album
 LIMIT 3;