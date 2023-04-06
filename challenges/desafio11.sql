SELECT al.name AS album, COUNT(fs.fav_song_id) AS favoritadas
FROM albums AS al
INNER JOIN songs AS s ON s.album_id = al.id
INNER JOIN fav_songs AS fs ON fs.fav_song_id = s.id
GROUP BY al.name
ORDER BY favoritadas DESC, album
LIMIT 3;