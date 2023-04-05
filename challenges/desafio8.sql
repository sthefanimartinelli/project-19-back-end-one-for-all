SELECT 
    a.name AS artista, al.name AS album
FROM
    artists AS a
        INNER JOIN
    albums AS al ON al.artist_id = a.id
WHERE
    a.name = 'Elis Regina'
ORDER BY album;