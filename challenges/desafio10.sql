CREATE TABLE fav_songs(
	user_id INT NOT NULL,
    fav_song_id INT NOT NULL,
    CONSTRAINT UNIQUE (user_id, fav_song_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (fav_song_id) REFERENCES songs (id)
) engine = InnoDB;

INSERT INTO SpotifyClone.fav_songs (user_id, fav_song_id)
VALUES
	(1,9),(1,10),(1,3),(2,7),(3,6),(3,9),(4,4),(4,7),(5,3),(5,2),(8,7),(9,4),(10,9);