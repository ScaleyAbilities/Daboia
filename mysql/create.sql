use scaley_abilities

-- sudo docker-compose up database
-- mysql -h 127.0.0.1 -u scaley -p
-- -> source mysql/create.sql

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0,
    username VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE stocks(
    userid INT NOT NULL,
    stocksymbol CHAR(4) NOT NULL,
    amount INT DEFAULT 0,
    PRIMARY KEY (userid, stocksymbol),
    FOREIGN KEY (userid) REFERENCES users(id)
);

CREATE TABLE triggers(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid INT NOT NULL,
    command VARCHAR(20) NOT NULL,
    stocksymbol CHAR(4) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    triggertime DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userid) REFERENCES users(id)
);

CREATE TABLE transactions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid INT NOT NULL,
    stocksymbol CHAR(4) NOT NULL,
    command VARCHAR(20) NOT NULL,
    balancechange DECIMAL(15,2),
    stockamount INT,
    pendingflag BOOLEAN NOT NULL DEFAULT 0,
    transactiontime DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userid) REFERENCES users(id)
);