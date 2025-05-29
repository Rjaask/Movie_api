CREATE Table movie(
    movie_id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    movie_name VARCHAR(100),
    movie_year INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE Table genre(
    genre_id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    genre_name VARCHAR(100)
);

INSERT INTO movie (movie_name, movie_year) VALUES
('Pulp Fiction', 1994),
('Jaws', 1975),
('Back to the Future', 1985),
('The Wizard of Oz', 1939),
('The Iron Giant', 1999)

INSERT INTO genre (genre_name) VALUES
('Horror'),
('Fantasy'),
('Animation'),
('Crime'),
('Romance'),
('Action'),
('Thriller')
('Comedy')