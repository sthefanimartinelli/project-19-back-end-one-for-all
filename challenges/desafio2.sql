SELECT COUNT(DISTINCT s.id) AS cancoes, COUNT(DISTINCT a.id) AS artistas, COUNT(DISTINCT al.id) AS albuns
FROM songs AS s
INNER JOIN artists AS a ON a.id = s.artist_id
INNER JOIN albums AS al ON al.artist_id = s.artist_id;