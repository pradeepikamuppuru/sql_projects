CREATE TABLE famous_singers (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    age INTEGER
);

CREATE TABLE singers_birthplaces (
    id INTEGER PRIMARY KEY, 
    birthplace TEXT
);

CREATE TABLE singers_spotify_performance (
    id INTEGER PRIMARY KEY,
    monthly_listeners INTEGER,
    global_rank INTEGER
);

INSERT INTO famous_singers VALUES 
    (1, "Arijit Singh", 36),
    (2, "Shreya Ghoshal", 40),
    (3, "Lata Mangeshkar", NULL),
    (4, "Kishore Kumar", NULL),
    (5, "A. R. Rahman", 57),
    (6, "Sonu Nigam", 50),
    (7, "Sunidhi Chauhan", 39);

INSERT INTO singers_birthplaces VALUES
    (1, "Jiaganj, West Bengal"),
    (2, "Murshidabad, West Bengal"),
    (3, "Indore, Madhya Pradesh"),
    (4, "Khandwa, Madhya Pradesh"),
    (5, "Chennai, Tamil Nadu"),
    (6, "Faridabad, Haryana"),
    (7, "New Delhi");

INSERT INTO singers_spotify_performance VALUES
    (1, 10000000, 200),
    (2, 8000000, 300),
    (3, 5000000, 500),
    (4, 4000000, 700),
    (5, 12000000, 150),
    (6, 7000000, 400),
    (7, 6000000, 450);

SELECT singers_spotify_performance.global_rank AS spotify_rank, famous_singers.name, famous_singers.age, singers_birthplaces.birthplace, singers_spotify_performance.monthly_listeners AS spotify_monthly_listeners 
FROM famous_singers
JOIN singers_birthplaces ON singers_birthplaces.id = famous_singers.id
JOIN singers_spotify_performance ON singers_spotify_performance.id = famous_singers.id
ORDER BY spotify_rank;
