USE codeup_test_db;
    CREATE TABLE albums (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist_name VARCHAR(50),
        name_record VARCHAR(150),
        release_date INT,
        sales FLOAT,
        genre VARCHAR(50),
        PRIMARY KEY (id)
    )
