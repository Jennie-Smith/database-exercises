USE codeup_test_db;
-- INSERT INTO quotes (author_first_name, author_last_name, content)
-- VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');
-- (`id`, `artist`, `album_name`, `release_date`, `sales`, `genre`)
--     The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';
-- year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'Caption' FROM albums WHERE artist = 'The Beatles';

-- The genre for Nevermind
SELECT * FROM albums WHERE genre = 'Nevermind';
-- get no rows

-- Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date BETWEEN '1990' AND '2000';

-- Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales < '20.000000';

-- All the albums with a genre of "Rock".
-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums WHERE genre = 'Rock';