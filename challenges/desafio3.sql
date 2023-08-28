 SELECT p.nome_pessoa_usuaria AS pessoa_usuaria, COUNT(*) AS musicas_ouvidas, ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos FROM SpotifyClone.historico AS h
 JOIN SpotifyClone.pessoasUsuarias AS p
 ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
 JOIN SpotifyClone.cancoes AS c
 ON c.cancao_id = h.cancao_id
 GROUP BY p.nome_pessoa_usuaria
 ORDER BY p.nome_pessoa_usuaria;