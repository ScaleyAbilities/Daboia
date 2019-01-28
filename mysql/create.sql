use scaley_abilities

-- sudo docker-compose up database
-- mysql -h 127.0.0.1 -u scaley -p
-- -> source mysql/create.sql

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0,
    userid VARCHAR(30) NOT NULL UNIQUE PRIMARY KEY
);

CREATE TABLE triggers(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid VARCHAR(30) NOT NULL REFERENCES users(userid),
    command VARCHAR(20) NOT NULL,
    stocksymbol CHAR(4) NOT NULL REFERENCES stocks(stocksymbol),
    price INT NOT NULL CHECK (price > 0),
    quantity INT NOT NULL DEFAULT 0,
    triggertime DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid VARCHAR(30) NOT NULL REFERENCES users(userid),
    userbalance DECIMAL(15,2) NOT NULL REFERENCES users(balance),
    stocksymbol CHAR(4) NOT NULL REFERENCES stocks(stocksymbol),
    command VARCHAR(20) NOT NULL,
    balancechange DECIMAL(15,2),
    stockamount INT REFERENCES triggers(quantity),
    pendingflag BOOLEAN NOT NULL DEFAULT 0,
    transactiontime DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stocks(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid VARCHAR(30) NOT NULL REFERENCES users(userid),
    stocksymbol CHAR(4) NOT NULL,
    amount INT DEFAULT 0 CHECK(amount >= 0)
);