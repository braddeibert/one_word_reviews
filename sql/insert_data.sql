--insert 5 new users
INSERT INTO USERS VALUES ('MargaritaMike1999', 'Miami, Florida, USA', 'Here for a good time, not a long time #yolo');
INSERT INTO USERS VALUES ('BIGTIMETOMMIE1', 'Brooklyn, New York City, New York, USA', 'ALWAYS KEEP IT OLD SKOOL. #OS4LIFE');
INSERT INTO USERS VALUES ('JoeSmith', 'Salt Lake City, Utah, USA', 'Happily married to my wife with three little munchkins on board.');
INSERT INTO USERS VALUES ('ashleyy', 'Los Angeles, California, USA', 'basically thriving');
INSERT INTO USERS VALUES ('GrandmaSue', 'Bend, Oregon, USA', 'User has not set a bio.');

--insert 10 pieces of content (5 movies, 3 shows, 2 albums)

--movies
INSERT INTO CONTENT VALUES (1, 'The Shawshank Redemption', 'Drama', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 1994, 'R', 'Castle Rock Entertainment');
INSERT INTO CONTENT VALUES (2, 'The Dark Knight', 'Action', 'When the menace known as the Joker wreaks havoc and chaos on the Contributors of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 2008, 'PG-13', 'Warner Bros.');
INSERT INTO CONTENT VALUES (3, 'Pulp Fiction', 'Crime', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 1994, 'R', 'Miramax');
INSERT INTO CONTENT VALUES (4, 'Toy Story', 'Animation', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boys room.', 1995, 'G', 'Pixar Animation Studios');
INSERT INTO CONTENT VALUES (5, 'Shrek', 'Animation', 'A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.', 2001, 'PG', 'DreamWorks Animation');
INSERT INTO MOVIES VALUES (1, 25000000, 142);
INSERT INTO MOVIES VALUES (2, 185000000, 152);
INSERT INTO MOVIES VALUES (3, 8000000, 154);
INSERT INTO MOVIES VALUES (4, 30000000, 81);
INSERT INTO MOVIES VALUES (5, 60000000, 90);

--shows
INSERT INTO CONTENT VALUES (6, 'Breaking Bad', 'Crime', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his familys future.', 2008, 'TV-MA', 'High Bridge Productions');
INSERT INTO CONTENT VALUES (7, 'The Office', 'Comedy', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 2005, 'TV-14', 'NBC Universal Television');
INSERT INTO CONTENT VALUES (8, 'Friends', 'Comedy', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 1994, 'TV-14', 'Warner Bros. Television');
INSERT INTO SHOWS VALUES (6, 5, 49);
INSERT INTO SHOWS VALUES (7, 9, 22);
INSERT INTO SHOWS VALUES (8, 10, 22);

--albums
INSERT INTO CONTENT VALUES (9, 'Thriller', 'Pop', 'Thriller is the sixth studio album by American singer Michael Jackson, released on November 30, 1982 by Epic Records.', 1982, null, 'Epic Records');
INSERT INTO CONTENT VALUES (10, 'Unplugged', 'Rock', 'Unplugged is a 1992 album by Eric Clapton, recorded at Bray Studios, England in front of an audience for the MTV Unplugged television series.', 1992, null, 'Reprise Records');
INSERT INTO ALBUMS VALUES (9, 2539);
INSERT INTO ALBUMS VALUES (10, 3707);

--insert songs for albums
INSERT INTO SONGS VALUES (9, 'Wanna Be Startin Somethin');
INSERT INTO SONGS VALUES (9, 'Baby Be Mine');
INSERT INTO SONGS VALUES (9, 'The Girl Is Mine');
INSERT INTO SONGS VALUES (9, 'Thriller');
INSERT INTO SONGS VALUES (9, 'Beat It');
INSERT INTO SONGS VALUES (9, 'Billie Jean');
INSERT INTO SONGS VALUES (9, 'Human Nature');
INSERT INTO SONGS VALUES (9, 'P.Y.T. (Pretty Young Thing)');
INSERT INTO SONGS VALUES (9, 'The Lady in My Life');
INSERT INTO SONGS VALUES (10, 'Signe');
INSERT INTO SONGS VALUES (10, 'Before You Accuse Me');
INSERT INTO SONGS VALUES (10, 'Hey Hey');
INSERT INTO SONGS VALUES (10, 'Tears in Heaven');
INSERT INTO SONGS VALUES (10, 'Lonely Stranger');
INSERT INTO SONGS VALUES (10, 'Nobody Knows You When Youre Down and Out');
INSERT INTO SONGS VALUES (10, 'Layla');
INSERT INTO SONGS VALUES (10, 'Running on Faith');
INSERT INTO SONGS VALUES (10, 'Walkin Blues');
INSERT INTO SONGS VALUES (10, 'Alberta');
INSERT INTO SONGS VALUES (10, 'San Francisco Bay Blues');
INSERT INTO SONGS VALUES (10, 'Malted Milk');
INSERT INTO SONGS VALUES (10, 'Old Love');
INSERT INTO SONGS VALUES (10, 'Rollin and Tumblin');


--insert contributors for inserted content 
INSERT INTO CONTRIBUTORS VALUES (1, 'Tim', 'Robbins', '1958-10-16', 'West Covina, California, USA');
INSERT INTO CONTRIBUTORS VALUES (2, 'Morgan', 'Freeman', '1937-06-01', 'Memphis, Tennessee, USA');
INSERT INTO CONTRIBUTORS VALUES (3, 'Heath', 'Ledger', '1979-04-04', 'Perth, Western Australia, Australia');
INSERT INTO CONTRIBUTORS VALUES (4, 'Christian', 'Bale', '1974-01-30', 'Haverfordwest, Pembrokeshire, Wales, UK');
INSERT INTO CONTRIBUTORS VALUES (5, 'Christopher', 'Nolan', '1970-07-30', 'London, England, UK');
INSERT INTO CONTRIBUTORS VALUES (6, 'Frank', 'Darabont', '1959-01-28', 'Montbeliard, Doubs, France');
INSERT INTO CONTRIBUTORS VALUES (7, 'John', 'Travolta', '1954-02-18', 'Englewood, New Jersey, USA');
INSERT INTO CONTRIBUTORS VALUES (8, 'Uma', 'Thurman', '1970-04-29', 'Boston, Massachusetts, USA');
INSERT INTO CONTRIBUTORS VALUES (9, 'Samuel', 'Jackson', '1948-12-21', 'Washington, District of Columbia, USA');
INSERT INTO CONTRIBUTORS VALUES (10, 'Quentin', 'Tarantino', '1963-03-27', 'Knoxville, Tennessee, USA');
INSERT INTO CONTRIBUTORS VALUES (11, 'Tom', 'Hanks', '1956-07-09', 'Concord, California, USA');
INSERT INTO CONTRIBUTORS VALUES (12, 'Tim', 'Allen', '1953-06-13', 'Denver, Colorado, USA');
INSERT INTO CONTRIBUTORS VALUES (13, 'John', 'Lasseter', '1957-01-12', 'Hollywood, Los Angeles, California, USA');
INSERT INTO CONTRIBUTORS VALUES (14, 'Mike', 'Myers', '1963-05-25', 'Scarborough, Ontario, Canada');
INSERT INTO CONTRIBUTORS VALUES (15, 'Eddie', 'Murphy', '1961-04-03', 'Brooklyn, New York City, New York, USA');
INSERT INTO CONTRIBUTORS VALUES (16, 'Cameron', 'Diaz', '1972-08-30', 'San Diego, California, USA');
INSERT INTO CONTRIBUTORS VALUES (17, 'Aron', 'Warner', null, 'United States');
INSERT INTO CONTRIBUTORS VALUES (18, 'Bryan', 'Cranston', '1956-03-07', 'Hollywood, California, USA');
INSERT INTO CONTRIBUTORS VALUES (19, 'Aaron', 'Paul', '1979-08-27', 'Emmett, Idaho, USA');
INSERT INTO CONTRIBUTORS VALUES (20, 'Vince', 'Gilligan', '1967-02-10', 'Richmond, Virginia, USA');
INSERT INTO CONTRIBUTORS VALUES (21, 'Steve', 'Carell', '1962-08-16', 'Concord, Massachusetts, USA');
INSERT INTO CONTRIBUTORS VALUES (22, 'Jenna', 'Fischer', '1974-03-07', 'Fort Wayne, Indiana, USA');
INSERT INTO CONTRIBUTORS VALUES (23, 'John', 'Krasinski', '1979-10-20', 'Newton, Massachusetts, USA');
INSERT INTO CONTRIBUTORS VALUES (24, 'Ricky', 'Gervais', '1961-06-25', 'Berkshire, England, UK');
INSERT INTO CONTRIBUTORS VALUES (25, 'Greg', 'Daniels', '1963-06-13', 'Brooklyn, New York City, New York, USA');
INSERT INTO CONTRIBUTORS VALUES (26, 'Stephen', 'Merchant', '1974-11-24', 'Bristol, England, UK');
INSERT INTO CONTRIBUTORS VALUES (27, 'Rainn', 'Wilson', '1966-01-20', 'Seattle, Washington, USA');
INSERT INTO CONTRIBUTORS VALUES (28, 'Jennifer', 'Aniston', '1969-02-11', 'Sherman Oaks, California, USA');
INSERT INTO CONTRIBUTORS VALUES (29, 'Courteney', 'Cox', '1964-06-15', 'Birmingham, Alabama, USA');
INSERT INTO CONTRIBUTORS VALUES (30, 'Lisa', 'Kudrow', '1963-07-30', 'Encino, Los Angeles, California, USA');
INSERT INTO CONTRIBUTORS VALUES (31, 'Matt', 'LeBlanc', '1967-07-25', 'Newton, Massachusetts, USA');
INSERT INTO CONTRIBUTORS VALUES (32, 'Matthew', 'Perry', '1969-08-19', 'Williamstown, Massachusetts, USA');
INSERT INTO CONTRIBUTORS VALUES (33, 'David', 'Schwimmer', '1966-11-02', 'Astoria, New York, USA');
INSERT INTO CONTRIBUTORS VALUES (34, 'David', 'Crane', '1957-08-13', 'Philadelphia, Pennsylvania, USA');
INSERT INTO CONTRIBUTORS VALUES (35, 'Marta', 'Kauffman', '1956-09-21', null);
INSERT INTO CONTRIBUTORS VALUES (36, 'Michael', 'Jackson', '1958-08-29', 'Gary, Indiana, USA');
INSERT INTO CONTRIBUTORS VALUES (37, 'Eric', 'Clapton', '1945-03-30', 'Surrey, England');


--link contributors to content in ROLES table
INSERT INTO ROLES VALUES (1, 1, 'Actor', 'Andy Dufresne');
INSERT INTO ROLES VALUES (1, 2, 'Actor', 'Ellis Boyd "Red" Redding');
INSERT INTO ROLES VALUES (1, 6, 'Director', null);
INSERT INTO ROLES VALUES (2, 3, 'Actor', 'The Joker');
INSERT INTO ROLES VALUES (2, 4, 'Actor', 'Bruce Wayne');
INSERT INTO ROLES VALUES (2, 5, 'Director', null);
INSERT INTO ROLES VALUES (2, 2, 'Actor', 'Lucius Fox');
INSERT INTO ROLES VALUES (3, 7, 'Actor', 'Vincent Vega');
INSERT INTO ROLES VALUES (3, 9, 'Actor', 'Jules Winnfield');
INSERT INTO ROLES VALUES (3, 8, 'Actor', 'Mia Wallace');
INSERT INTO ROLES VALUES (3, 10, 'Director', null);
INSERT INTO ROLES VALUES (4, 11, 'Actor', 'Woody');
INSERT INTO ROLES VALUES (4, 12, 'Actor', 'Buzz Lightyear');
INSERT INTO ROLES VALUES (4, 13, 'Director', null);
INSERT INTO ROLES VALUES (5, 14, 'Actor', 'Shrek');
INSERT INTO ROLES VALUES (5, 15, 'Actor', 'Donkey');
INSERT INTO ROLES VALUES (5, 16, 'Actor', 'Fiona');
INSERT INTO ROLES VALUES (5, 17, 'Producer', null);
INSERT INTO ROLES VALUES (6, 18, 'Actor', 'Walter White');
INSERT INTO ROLES VALUES (6, 19, 'Actor', 'Jesse Pinkman');
INSERT INTO ROLES VALUES (6, 20, 'Creator', null);
INSERT INTO ROLES VALUES (7, 21, 'Actor', 'Michael Scott');
INSERT INTO ROLES VALUES (7, 22, 'Actor', 'Pam Beesly');
INSERT INTO ROLES VALUES (7, 23, 'Actor', 'Jim Halpert');
INSERT INTO ROLES VALUES (7, 27, 'Actor', 'Rainn Wilson');
INSERT INTO ROLES VALUES (7, 24, 'Creator', null);
INSERT INTO ROLES VALUES (7, 25, 'Creator', null);
INSERT INTO ROLES VALUES (7, 26, 'Creator', null);
INSERT INTO ROLES VALUES (8, 28, 'Actor', 'Rachel Green');
INSERT INTO ROLES VALUES (8, 29, 'Actor', 'Monica Geller');
INSERT INTO ROLES VALUES (8, 30, 'Actor', 'Phoebe Buffay');
INSERT INTO ROLES VALUES (8, 31, 'Actor', 'Joey Tribbiani');
INSERT INTO ROLES VALUES (8, 32, 'Actor', 'Chandler Bing');
INSERT INTO ROLES VALUES (8, 33, 'Actor', 'Dr. Ross Geller');
INSERT INTO ROLES VALUES (8, 34, 'Creator', null);
INSERT INTO ROLES VALUES (8, 35, 'Creator', null);
INSERT INTO ROLES VALUES (9, 36, 'Artist', null);
INSERT INTO ROLES VALUES (10, 37, 'Artist', null);


--insert 4 organizations
INSERT INTO ORGANIZATIONS VALUES (1, 'Academy of Motion Picture Arts and Sciences', 'Oscar', 1929, 'United States', 'Best in film');
INSERT INTO ORGANIZATIONS VALUES (2, 'Hollywood Foreign Press Association', 'Golden Globe', 1943, 'United States', 'Excellence in film and television');
INSERT INTO ORGANIZATIONS VALUES (3, 'ATAS/NATAS/IATAS', 'Emmy', 1949, 'United States', 'Excellence in the television industry');
INSERT INTO ORGANIZATIONS VALUES (4, 'The Recording Academy', 'Grammy', 1959, 'United States', 'Outstanding achievements in the music industry');


--insert awards for content/contributors
INSERT INTO AWARDS VALUES (2, 3, 1, 'Best Performance by an Actor in a Supporting Role', 2009);
INSERT INTO AWARDS VALUES (2, 3, 2, 'Best Performance by an Actor in a Supporting Role in a Motion Picture', 2009);
INSERT INTO AWARDS VALUES (3, 10, 1, 'Best Writing, Screenplay Written Directly for the Screen', 1995);
INSERT INTO AWARDS VALUES (3, 10, 2, 'Best Screenplay - Motion Feature', 1995);
INSERT INTO AWARDS VALUES (5, 17, 1, 'Best Animated Feature', 2002);
INSERT INTO AWARDS VALUES (6, 18, 2, 'Best Performance by an Actor in a Television Series - Drama', 2014);
INSERT INTO AWARDS VALUES (6, 20, 2, 'Best Television Series - Drama', 2014);
INSERT INTO AWARDS VALUES (6, 18, 3, 'Outstanding Lead Actor in a Drama Series', 2014);
INSERT INTO AWARDS VALUES (6, 19, 3, 'Outstanding Supporting Actor in a Drama Series', 2014);
INSERT INTO AWARDS VALUES (6, 20, 3, 'Outstanding Drama Series', 2014);
INSERT INTO AWARDS VALUES (7, 21, 2, 'Best Performance by an Actor in a Television Series - Comedy or Musical', 2006);
INSERT INTO AWARDS VALUES (7, 24, 3, 'Outstanding Comedy Series', 2006);
INSERT INTO AWARDS VALUES (7, 25, 3, 'Outstanding Comedy Series', 2006);
INSERT INTO AWARDS VALUES (7, 26, 3, 'Outstanding Comedy Series', 2006);
INSERT INTO AWARDS VALUES (8, 28, 2, 'Best Performance by an Actress in a Television Series - Comedy or Musical', 2003);
INSERT INTO AWARDS VALUES (8, 28, 3, 'Outstanding Lead Actress in a Comedy Series', 2002);
INSERT INTO AWARDS VALUES (8, 34, 3, 'Outstanding Comedy Series', 2002);
INSERT INTO AWARDS VALUES (8, 35, 3, 'Outstanding Comedy Series', 2002);
INSERT INTO AWARDS VALUES (9, 37, 4, 'Album of the Year', 1992);
INSERT INTO AWARDS VALUES (10, 36, 4, 'Album of the Year', 1983); 


--insert content reviews from users
INSERT INTO REVIEWS (author, contId, word) VALUES ('margaritaMike1999', 2, 'Sick');
INSERT INTO REVIEWS (author, contId, word) VALUES ('BIGTIMETOMMIE1', 3, 'CLASSIC');
INSERT INTO REVIEWS (author, contId, word) VALUES ('JoeSmith', 6, 'Illegal');
INSERT INTO REVIEWS (author, contId, word) VALUES ('ashleyy', 5, 'Dumb');
INSERT INTO REVIEWS (author, contId, word) VALUES ('GrandmaSue', 7, 'Confusing');
INSERT INTO REVIEWS (author, contId, word) VALUES ('margaritaMike1999', 6, 'Inspiring');
INSERT INTO REVIEWS (author, contId, word) VALUES ('BIGTIMETOMMIE1', 1, 'JUSTICE');
INSERT INTO REVIEWS (author, contId, word) VALUES ('JoeSmith', 10, 'Awesome');
INSERT INTO REVIEWS (author, contId, word) VALUES ('ashleyy', 4, 'Loved');
INSERT INTO REVIEWS (author, contId, word) VALUES ('GrandmaSue', 8, 'Fantastic');
INSERT INTO REVIEWS (author, contId, word) VALUES ('GrandmaSue', 6, 'Illegal');

