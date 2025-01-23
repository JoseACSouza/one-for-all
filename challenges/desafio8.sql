 SELECT art.artista AS artista, 
 a.album AS album
 FROM SpotifyClone.albuns AS a
 INNER JOIN SpotifyClone.artistas AS art
 ON art.artista_id = a.artista_id
 WHERE artista IN('Elis Regina')
 GROUP BY a.album, art.artista
 ORDER BY album, artista;