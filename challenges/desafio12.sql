SELECT a.name AS artista,
CASE
	WHEN COUNT(fs.fav_song_id) >= 5 THEN 'A'
    WHEN COUNT(fs.fav_song_id) >= 3 AND COUNT(fs.fav_song_id) <= 4 THEN 'B'
    WHEN COUNT(fs.fav_song_id) >= 1 AND COUNT(fs.fav_song_id) <= 2 THEN 'C'
	ELSE '-'
    END AS ranking
FROM artists AS a
LEFT JOIN songs AS s ON s.artist_id = a.id
LEFT JOIN fav_songs AS fs ON fs.fav_song_id = s.id
GROUP BY artista
ORDER BY COUNT(fs.fav_song_id) DESC, artista;