    SELECT COUNT(c.cancao_id) AS cancoes, COUNT(art.artista_id) AS artistas, COUNT(a.album_id) AS albuns FROM SpotifyClone.cancoes AS c
    LEFT JOIN SpotifyClone.albuns AS a
    ON a.album_id = c.cancao_id
    LEFT JOIN SpotifyClone.artistas AS art
    ON art.artista_id = c.cancao_id;