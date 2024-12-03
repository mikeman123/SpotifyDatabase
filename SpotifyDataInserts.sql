INSERT INTO USERS VALUES
('Michael', 'Desjardins', 'michaeldesjardins74@gmail.com', 'mikeman123', 'md1234!', 'free')
, ('John', 'Smith', 'johnsmith43@gmail.com', 'johnyappleseed23', 'js342!@', 'Premium')

INSERT INTO ARTIST VALUES
('Jimi', 'Hendrix', 'jimihendrix12@gmail.com', 'jimi123', 'guitarmaster123#$')
,('John', 'Mayer', 'jmayer98@gmail.com', 'johnm34', 'johnmayer!@#')

INSERT INTO ALBUM VALUES
(1, 'The Jimi Hendrix Experience', '10/21/2024')
,(2, 'Continuum', '11/3/2024')

INSERT INTO PLAYLIST VALUES
(1, 'Michaels Playlist')
,(2, 'Johns Rock Playlist')

INSERT INTO SONG VALUES
(1, 1, 'Purple Haze', 'Rock', 2.53, 127, 'C:\Users\micha\OneDrive\Desktop\Music For Spotify Database\purple-haze-official-audio.mp3')
,(2, 2, 'Gravity', 'Rock', 4.08, 1200, 'C:\Users\micha\OneDrive\Desktop\Music For Spotify Database\gravity-by-john-mayer.mp3')

INSERT INTO PLAYLIST_SONG VALUES
(1, 1)
,(1, 2)
,(2, 1)

INSERT INTO STREAMS VALUES
(1, 2)
,(2, 1)

INSERT INTO FOLLOW VALUES
(1, 2)
,(2, 1)

INSERT INTO LIKES VALUES
(1, 2)
,(2, 1)
