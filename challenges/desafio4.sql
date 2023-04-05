SELECT 
    u.name AS pessoa_usuaria,
    CASE
        WHEN YEAR(MAX(uh.playback_date)) >= 2021 THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM
    users AS u
        INNER JOIN
    user_history AS uh ON uh.user_id = u.id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;