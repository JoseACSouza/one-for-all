 SELECT
	p.nome_pessoa_usuaria AS pessoa_usuaria, 
    IF (MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') 
    AS status_pessoa_usuaria
 FROM SpotifyClone.historico AS h
 INNER JOIN SpotifyClone.pessoasUsuarias AS p
 ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
 GROUP BY p.nome_pessoa_usuaria
 ORDER BY p.nome_pessoa_usuaria;