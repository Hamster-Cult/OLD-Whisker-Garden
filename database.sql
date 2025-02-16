/*Chloe's code*/
CREATE TABLE user (
    user_id SERIAL PRIMARY KEY,
    plant_id INT NOT NULL,
    username VARCHAR(20) NOT NULL,
    level INT NOT NULL CHECK (level >= 0),
    exp INT NOT NULL CHECK (exp >= 0)
);

CREATE TABLE mood_log (
    mood_id SERIAL PRIMARY KEY,
    mood_date DATE NOT NULL CHECK (mood_date <= CURRENT_DATE),
    mood_time TIME NOT NULL,
    mood_rating SMALLINT NOT NULL CHECK (mood_rating BETWEEN 1 AND 5),
    mood_text TEXT NULL
);

CREATE TABLE goals (
    goal_id SERIAL PRIMARY KEY,
    plant_id INT NOT NULL,
    goal_name VARCHAR(50) NOT NULL,
    goal_desc TEXT NULL,
    goal_achievement BOOLEAN NOT NULL
);

CREATE TABLE entries (
    entry_id SERIAL PRIMARY KEY,
    entry VARCHAR(255) NULL,
    entry_date DATE NOT NULL,
    entry_time TIME NOT NULL,
    rating INT NULL CHECK (rating >= 0 AND rating <= 5)
)

CREATE TABLE user_entries (
    user_id INT NOT NULL,
    entry_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (entry_id) REFERENCES entries(entry_id)
)

CREATE TABLE garden (
    garden_slot SERIAL PRIMARY KEY,
    plant_id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    arhived BOOLEAN NOT NULL,
    maturity INT NOT NULL,
    last watered DATE NOT NULL,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
)

CREATE TABLE plant (
    plant_id SERIAL PRIMARY KEY,
    plant_type VARCHAR(20) NOT NULL,
)
