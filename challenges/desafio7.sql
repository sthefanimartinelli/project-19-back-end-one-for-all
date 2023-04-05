SELECT a.name AS artista, al.name AS album, COUNT(fa.following_artist_id) AS pessoas_seguidoras
	FROM artists AS a
    INNER JOIN albums AS al ON al.artist_id = a.id
    INNER JOIN following_artist AS fa ON fa.following_artist_id = a.id
    GROUP BY album, artista
    ORDER BY pessoas_seguidoras DESC, artista, album;