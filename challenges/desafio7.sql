 SELECT art.artista AS artista, 
 a.album AS album,
 COUNT(fa.artista_id) AS pessoas_seguidoras
 FROM SpotifyClone.albuns AS a
 INNER JOIN SpotifyClone.artistas AS art
 ON art.artista_id = a.artista_id
 INNER JOIN SpotifyClone.artistasFavoritos AS fa
 ON fa.artista_id = a.artista_id
 GROUP BY a.album, art.artista, fa.artista_id
 ORDER BY pessoas_seguidoras DESC, art.artista, a.album;