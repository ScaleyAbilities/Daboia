use scaley_abilities

-- sudo docker-compose up database
-- mysql -h 127.0.0.1 -u scaley -p
-- -> source mysql/create.sql

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    balance INT NOT NULL DEFAULT 0,
    username VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE triggers(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(id),
    command VARCHAR(10) NOT NULL,
    price INT NOT NULL CHECK (price > 0),
    quantity INT NOT NULL DEFAULT 0
);

CREATE TABLE transactions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(10) NOT NULL,
    stock_id VARCHAR(10) NOT NULL REFERENCES stocks(stock_id)
);

CREATE TABLE stocks(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT REFERENCES users(id),
    stock_id VARCHAR(10),
    amount INT DEFAULT 0
);