DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS transactions CASCADE;
DROP TABLE IF EXISTS stocks CASCADE;
DROP TABLE IF EXISTS logs CASCADE;
DROP TABLE IF EXISTS logs_work CASCADE;

DROP TYPE IF EXISTS txn_type;
DROP TYPE IF EXISTS log_type;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0,
    username VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE stocks(
    userid INTEGER NOT NULL,
    stocksymbol CHAR(4) NOT NULL,
    amount INT DEFAULT 0,
    PRIMARY KEY (userid, stocksymbol),
    FOREIGN KEY (userid) REFERENCES users(id)
);

CREATE TYPE txn_type AS ENUM('completed', 'pending', 'trigger');

CREATE TABLE transactions(
    id SERIAL PRIMARY KEY,
    userid INTEGER NOT NULL,
    stocksymbol CHAR(4),
    command VARCHAR(20) NOT NULL,
    balancechange DECIMAL(15,2),
    stockamount INT,
    stockprice DECIMAL(15,2),
    type txn_type NOT NULL,
    transactiontime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userid) REFERENCES users(id)
);

CREATE INDEX txn_time ON transactions(transactiontime);

CREATE TABLE logs_work(
	id SERIAL PRIMARY KEY,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TYPE log_type AS ENUM('command', 'quote', 'transaction', 'system', 'error', 'debug');

CREATE TABLE logs(
    id SERIAL PRIMARY KEY,
    logtype log_type NOT NULL,
    timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    server VARCHAR(10) NOT NULL,
    workid INTEGER NOT NULL,
    userid INTEGER,
    command VARCHAR(20),
    amount DECIMAL(15,2),
    stocksymbol CHAR(4),
    message TEXT,
    filename TEXT,
    quoteservertime TIMESTAMP,
    cryptokey TEXT,
    FOREIGN KEY (workid) REFERENCES logs_work(id)
);