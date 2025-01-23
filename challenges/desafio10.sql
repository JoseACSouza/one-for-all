-- Descomente e altere as linhas abaixo:

CREATE TABLE SpotifyClone.fav_cancoes 
(
    pessoa_usuaria_id	INT,
    cancao_id	INT,
    PRIMARY KEY ( pessoa_usuaria_id,  cancao_id ),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.pessoasUsuarias(pessoa_usuaria_id),
    FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancoes(cancao_id)
);

INSERT INTO SpotifyClone.fav_cancoes (pessoa_usuaria_id, cancao_id) VALUES
	(1, 3),
	(1, 6),
	(1, 10),
	(2, 4),
	(3, 1),
	(3, 3),
	(4, 7),
	(4, 4),
	(5, 10),
	(5, 2),
	(6, 4),
	(7, 7),
	(8, 3);
