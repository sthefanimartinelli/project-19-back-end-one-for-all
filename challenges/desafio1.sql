DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  id INT PRIMARY KEY AUTO_INCREMENT,
  type VARCHAR(50) NOT NULL UNIQUE,
  price DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE artists(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL UNIQUE
) engine = InnoDB;

CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  signature_date DATE NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans (id)
) engine = InnoDB;

CREATE TABLE albums(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  year_launch YEAR NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists (id)
) engine = InnoDB;

CREATE TABLE songs(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  duration_seg INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists (id),
  FOREIGN KEY (album_id) REFERENCES albums (id)
) engine = InnoDB;

CREATE TABLE user_history(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  playback_date DATETIME NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (song_id) REFERENCES songs (id)
) engine = InnoDB;

CREATE TABLE following_artist(
  user_id INT NOT NULL,
  following_artist_id INT,
  CONSTRAINT UNIQUE (user_id, following_artist_id),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (following_artist_id) REFERENCES artists (id)
) engine = InnoDB;

INSERT INTO
  SpotifyClone.plans (id, type, price)
VALUES
  (1, 'gratuito', 0.00),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99),
  (4, 'pessoal', 6.99);

INSERT INTO
  SpotifyClone.artists (id, name)
VALUES
  (1, 'Beyoncé'),
  (2, 'Queen'),
  (3, 'Elis Regina'),
  (4, 'Baco Exu do Blues'),
  (5, 'Blind Guardian'),
  (6, 'Nina Simone');

INSERT INTO
  SpotifyClone.albums (id, name, artist_id, year_launch)
VALUES
  (1, 'Renaissance', 1, 2022),
  (2, 'Jazz', 2, 1978),
  (3, 'Hot Space', 2, 1982),
  (4, 'Falso Brilhante', 3, 1998),
  (5, 'Vento de Maio', 3, 2001),
  (6, 'QVVJFA?', 4, 2003),
  (7, 'Somewhere Far Beyond', 5, 2007),
  (8, 'I Put A Spell On You', 6, 2012);

INSERT INTO
  SpotifyClone.users (id, name, age, plan_id, signature_date)
VALUES
  (1, 'Barbara Liskov', 82, 1, '2019-10-20'),
  (2, 'Robert Cecil Martin', 58, 1, '2017-01-06'),
  (3, 'Ada Lovelace', 37, 2, '2017-12-30'),
  (4, 'Martin Fowler', 46, 2, '2017-01-17'),
  (5, 'Sandi Metz', 58, 2, '2018-04-29'),
  (6, 'Paulo Freire', 19, 3, '2018-02-14'),
  (7, 'Bell Hooks', 26, 3, '2018-01-05'),
  (8, 'Christopher Alexander', 85, 4, '2019-06-05'),
  (9, 'Judith Butler', 45, 4, '2020-05-13'),
  (10, 'Jorge Amado', 58, 4, '2017-02-17');

INSERT INTO
  SpotifyClone.songs (id, name, artist_id, duration_seg, album_id)
VALUES
  (1, 'Samba em Paris', 4, 267, 6),
  (2, "VIRGO'S GROOVE", 1, 369, 1),
  (3, 'Feeling Good', 6, 100, 8),
  (
    4,
    'O Medo de Amar é o Medo de Ser Livre',
    3,
    207,
    5
  ),
  (5, 'Under Pressure', 2, 152, 3),
  (6, 'BREAK MY SOUL', 1, 279, 1),
  (7, "Don't Stop Me Now", 2, 203, 2),
  (8, "The Bard's Song", 5, 244, 7),
  (9, "ALIEN SUPERSTAR", 1, 116, 1),
  (10, 'Como Nossos Pais', 3, 105, 4);

INSERT INTO
  SpotifyClone.user_history (user_id, song_id, playback_date)
VALUES
  (1, 1, "2022-02-28 10:45:55"),
(1, 2, "2020-05-02 05:30:35"),
(1, 3, "2020-03-06 11:22:33"),
(2, 3, "2022-08-05 08:05:17"),
(2, 4, "2020-01-02 07:40:33"),
(3, 3, "2020-11-13 16:55:13"),
(3, 2, "2020-12-05 18:38:30"),
(4, 1, "2021-08-15 17:10:10"),
(5, 1, "2022-01-09 01:44:33"),
(5, 5, "2020-08-06 15:23:43"),
(6, 4, "2017-01-24 00:31:17"),
(6, 6, "2017-10-12 12:35:20"),
(7, 7, "2011-12-15 22:30:49"),
(8, 7, "2012-03-17 14:56:41"),
(9, 8, "2022-02-24 21:14:22"),
(10, 9, "2015-12-13 08:30:22");

INSERT INTO
  SpotifyClone.following_artist (user_id, following_artist_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 1),
  (6, 6),
  (7, 6),
  (8, NULL),
  (9, 3),
  (10, 2);