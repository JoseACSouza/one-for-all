SELECT COUNT(*) AS musicas_no_historico
 FROM SpotifyClone.historico
 WHERE pessoa_usuaria_id IN(1);