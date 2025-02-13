/*Chloe's code*/

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