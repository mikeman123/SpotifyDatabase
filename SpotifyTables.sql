DROP TABLE LIKES;
DROP TABLE FOLLOW;
DROP TABLE STREAMS;
DROP TABLE PLAYLIST_SONG;
DROP TABLE SONG;
DROP TABLE PLAYLIST;
DROP TABLE ALBUM;
DROP TABLE ARTIST;
DROP TABLE USERS;

CREATE TABLE USERS(
    userID              INT IDENTITY(1,1) PRIMARY KEY,
    firstName           VARCHAR(100) NOT NULL,
    lastName            VARCHAR(100) NOT NULL,
    email               VARCHAR(100) NOT NULL UNIQUE, 
    username            VARCHAR(100) NOT NULL UNIQUE, 
    password            VARCHAR(100) NOT NULL,
    subscriptionType    VARCHAR(100) NOT NULL
);

CREATE TABLE ARTIST(
    artistID            INT IDENTITY(1,1) PRIMARY KEY,
    firstName           VARCHAR(100) NOT NULL,
    lastName            VARCHAR(100) NOT NULL,
    email               VARCHAR(100) NOT NULL UNIQUE, 
    username            VARCHAR(100) NOT NULL UNIQUE, 
    password            VARCHAR(100) NOT NULL
);

CREATE TABLE ALBUM(
    albumID             INT IDENTITY(1,1) PRIMARY KEY,
    artistID            INT NOT NULL REFERENCES ARTIST(artistID),
    title               VARCHAR(100) NOT NULL,
    releaseDate         DATE NOT NULL
);

CREATE TABLE PLAYLIST(
    playlistID          INT IDENTITY(1,1) PRIMARY KEY,
    userID              INT NOT NULL REFERENCES USERS(userID),
    name                VARCHAR(100) NOT NULL
);

CREATE TABLE SONG(
    songID              INT IDENTITY(1,1) PRIMARY KEY,
    artistID            INT NOT NULL REFERENCES ARTIST(artistID),
    albumID             INT NOT NULL REFERENCES ALBUM(albumID),
    title               VARCHAR(100) NOT NULL,
    genre               VARCHAR(100) NOT NULL,
    duration            FLOAT NOT NULL,
    playCount           INT NOT NULL, 
    songFile            VARCHAR(100) NOT NULL UNIQUE 
);

CREATE TABLE PLAYLIST_SONG(
    playlist_SongID     INT IDENTITY(1,1) PRIMARY KEY,
    playlistID          INT NOT NULL REFERENCES PLAYLIST(playlistID),
    songID              INT NOT NULL REFERENCES SONG(songID)
);

CREATE TABLE STREAMS(
    streamID            INT IDENTITY(1,1) PRIMARY KEY,
    userID              INT NOT NULL REFERENCES USERS(userID),
    songID              INT NOT NULL REFERENCES SONG(songID)
);

CREATE TABLE FOLLOW(
    followID            INT IDENTITY(1,1) PRIMARY KEY,
    userID              INT NOT NULL REFERENCES USERS(userID),
    artistID            INT NOT NULL REFERENCES ARTIST(artistID),
);

CREATE TABLE LIKES(
    likeID              INT IDENTITY(1,1) PRIMARY KEY,
    userID              INT NOT NULL REFERENCES USERS(userID),
    songID              INT NOT NULL REFERENCES SONG(songID),
);
