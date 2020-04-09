--table for users (reviewers)
CREATE TABLE USERS (
    username varchar(255) not null,
    location varchar(255) DEFAULT 'Unknown',
    bio varchar(255) DEFAULT 'User has not set a bio.',
    PRIMARY KEY (username)
);

--table for content to be reviewed
CREATE TABLE CONTENT (
    contId int not null AUTO_INCREMENT,
    title varchar(255) not null,
    genre varchar(255),
    description varchar(255),
    year_released int,
	maturity_rating varchar(255),
    producer varchar(255),
    CONSTRAINT chk_cont CHECK (year_released > 0 AND maturity_rating in ('R', 'PG-13', 'PG', 'G', 'TV-Y', 'TV-Y7', 'TV-G', 'TV-PG', 'TV-14', 'TV-MA', 'PA', null) AND genre in ('Action', 'Adventure', 'Animation', 'Biography', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Family', 'Fantasy', 'History', 'Horror', 'Music', 'Musical', 'Mystery', 'Romance', 'Sci-Fi', 'Short Film', 'Sport', 'Superhero', 'Thriller', 'War', 'Western', 'Game Show', 'News', 'Reality TV', 'Talk Show', 'Alternative', 'Country', 'Electronic', 'Hip Hop', 'Latin', 'Pop', 'Blues', 'R&B', 'Rock', 'Reggae', 'Polka', 'Christian', 'Metal', 'Jazz', 'Classical', 'Funk', 'House')),
    PRIMARY KEY (contId)
);

--table for movie content
CREATE TABLE MOVIES (
    contId int not null,
    budget int,
    runtime int,
    CONSTRAINT chk_film CHECK (budget > 0 AND runtime > 0),
    FOREIGN KEY (contId) REFERENCES CONTENT(contId),
    PRIMARY KEY (contId)
);

--table for show content
CREATE TABLE SHOWS (
    contId int not null,
    numSeasons int,
	episodeLength int,
    CONSTRAINT chk_show CHECK (numSeasons > 0 AND episodeLength > 0),
    FOREIGN KEY (contId) REFERENCES CONTENT(contId),
    PRIMARY KEY (contId)
);

--table for album content
CREATE TABLE ALBUMS (
    contId int not null,
    total_length int,
    CHECK (total_length > 0),
    FOREIGN KEY (contId) REFERENCES CONTENT(contId),
    PRIMARY KEY (contId)
);

--table for album songs
CREATE TABLE SONGS (
    albumId int not null,
    song varchar(255) not null,
    FOREIGN KEY (albumId) REFERENCES CONTENT(contId),
    PRIMARY KEY (albumId, song)
);

--table for content contributors
CREATE TABLE CONTRIBUTORS (
    contribId int not null AUTO_INCREMENT,
    fname varchar(255) not null,
    lname varchar(255) not null,
    birthdate date,
    hometown varchar(255) DEFAULT 'Unknown',
    CHECK (birthdate < CURDATE()),
    PRIMARY KEY (contribId)
);

--table for awarding organizations
CREATE TABLE ORGANIZATIONS (
    orgId int not null AUTO_INCREMENT,
    orgName varchar(255) not null,
    awardName varchar(255) not null,
    year_est int,
    country varchar(255),
    awards_for varchar(255),
    CHECK (year_est > 0),
    PRIMARY KEY (orgId)
);

--table holding reviews written by users for content
CREATE TABLE REVIEWS (
    author varchar(255) not null,
    contId int not null,
    word varchar(255) not null,
    time_submitted timestamp DEFAULT CURRENT_TIMESTAMP(),
    FOREIGN KEY (author) REFERENCES USERS(username) ON DELETE CASCADE,
    FOREIGN KEY (contId) REFERENCES CONTENT(contId) ON DELETE CASCADE,
    PRIMARY KEY (author, contId)
);

--table for contributors starring in content
CREATE TABLE ROLES (
    contId int not null,
    contribId int not null,
	role varchar(255) not null,
    starringAs varchar(255),
	CHECK (role in ('Actor', 'Director', 'Writer', 'Creator', 'Producer', 'Artist')),
    FOREIGN KEY (contId) REFERENCES CONTENT(contId),
    FOREIGN KEY (contribId) REFERENCES CONTRIBUTORS(contribId),
    PRIMARY KEY (contId, contribId)
);

--table for awards given to content by organizations
CREATE TABLE AWARDS (
    contId int not null,
    contribId int not null,
    orgId int not null,
    purpose varchar(255) not null,
    year_awarded int,
    CHECK (year_awarded > 0),
    FOREIGN KEY (contId) REFERENCES CONTENT(contId),
    FOREIGN KEY (contribId) REFERENCES CONTRIBUTORS(contribId),
    FOREIGN KEY (orgId) REFERENCES ORGANIZATIONS(orgId),
    PRIMARY KEY (contId, contribId, orgId)
);
