use scaley_abilities

-- source mysql/drop_tables.sql

DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS stocks;
DROP TABLE IF EXISTS logs;
DROP TABLE IF EXISTS logs_work;
DROP TABLE IF EXISTS users;

-- sudo docker-compose up database
-- mysql -h 127.0.0.1 -u scaley -p
-- -> source mysql/create.sql

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0,
    username VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE stocks(
    userid INT UNSIGNED NOT NULL,
    stocksymbol CHAR(4) NOT NULL,
    amount INT DEFAULT 0,
    PRIMARY KEY (userid, stocksymbol),
    FOREIGN KEY (userid) REFERENCES users(id)
);

CREATE TABLE transactions(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid INT UNSIGNED NOT NULL,
    stocksymbol CHAR(4),
    command VARCHAR(20) NOT NULL,
    balancechange DECIMAL(15,2),
    stockamount INT,
    stockprice DECIMAL(15,2),
    type ENUM('completed', 'pending', 'trigger') NOT NULL,
    transactiontime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (userid) REFERENCES users(id),
    INDEX txn_time (transactiontime)
);

CREATE TABLE logs_work(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	created DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE logs(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    logtype ENUM('command', 'quote', 'transaction', 'system', 'error', 'debug') NOT NULL,
    timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    server VARCHAR(10) NOT NULL,
    workid INT UNSIGNED NOT NULL,
    userid INT UNSIGNED,
    command VARCHAR(20),
    amount DECIMAL(15,2),
    stocksymbol CHAR(4),
    message TEXT,
    filename TEXT,
    quoteservertime VARCHAR(20),
    cryptokey TEXT,
    FOREIGN KEY (workid) REFERENCES logs_work(id),
    FOREIGN KEY (userid) REFERENCES users(id)
);
