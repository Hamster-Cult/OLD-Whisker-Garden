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
