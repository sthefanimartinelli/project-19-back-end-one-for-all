SELECT s.name AS cancao, COUNT(uh.song_id) AS reproducoes 
	FROM songs AS s
    INNER JOIN user_history AS uh ON uh.song_id = s.id
    GROUP BY cancao
    ORDER BY reproducoes DESC, cancao ASC
    LIMIT 2;