SELECT u.name AS pessoa_usuaria, COUNT(uh.song_id) AS musicas_ouvidas, ROUND(SUM(s.duration_seg)/60, 2) AS total_minutos
FROM users AS u
INNER JOIN user_history AS uh ON uh.user_id = u.id
INNER JOIN songs AS s ON s.id = uh.song_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;