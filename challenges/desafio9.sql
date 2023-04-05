SELECT COUNT(uh.song_id) AS musicas_no_historico
FROM user_history AS uh
INNER JOIN users AS u ON u.id = uh.user_id
WHERE u.name = "Barbara Liskov"
GROUP BY uh.user_id;