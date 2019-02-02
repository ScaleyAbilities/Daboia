use scaley_abilities

DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS stocks;
DROP TABLE IF EXISTS logs;
DROP TABLE IF EXISTS logs_work;
DROP TABLE IF EXISTS users;


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
    type ENUM('completed', 'pending', 'trigger', 'canceled') NOT NULL,
    transactiontime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (userid) REFERENCES users(id)
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
    quoteservertime DATETIME,
    cryptokey TEXT,
    FOREIGN KEY (workid) REFERENCES logs_work(id),
    FOREIGN KEY (userid) REFERENCES users(id)
);

INSERT INTO `users` (`id`, `balance`, `username`) VALUES (1, '485.52', 'mitchell.wyman');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (2, '46.14', 'lily.kuhn');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (3, '30962.90', 'fritz.o\'hara');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (4, '17.44', 'joanny87');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (5, '32.72', 'boyer.adrain');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (6, '50720.67', 'jakubowski.kale');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (7, '561108.25', 'ehowe');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (8, '14.49', 'rachel46');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (9, '3754555.67', 'jed92');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (10, '11711712.33', 'glover.armani');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (11, '4642023.36', 'lang.nikita');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (12, '15.84', 'dariana77');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (13, '827.24', 'green.walker');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (14, '28578.08', 'houston.macejkovic');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (15, '6009538.24', 'rowe.leora');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (16, '17.89', 'delores70');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (17, '39.52', 'jerrod75');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (18, '10.65', 'ophelia99');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (19, '1936.50', 'mmorissette');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (20, '5.14', 'rsipes');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (21, '2564.43', 'pdicki');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (22, '10.03', 'lucio.gorczany');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (23, '85.35', 'paolo.reynolds');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (24, '19.71', 'toni44');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (25, '692155.70', 'douglas.eden');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (26, '1083326.20', 'adeline.murray');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (27, '215210.99', 'thora.o\'hara');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (28, '580414342.75', 'qpagac');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (29, '11.09', 'west.nash');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (30, '811.14', 'samantha.lubowitz');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (31, '4.05', 'nicholaus.kihn');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (32, '457140.17', 'ctromp');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (33, '878747536.25', 'farrell.hyman');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (34, '11.32', 'furman90');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (35, '170508.57', 'barton.kip');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (36, '177.56', 'schaefer.kamren');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (37, '34.80', 'yasmeen.barrows');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (38, '284.66', 'penelope.gaylord');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (39, '15.23', 'lera.marvin');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (40, '626.54', 'alysa10');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (41, '5.12', 'lysanne.stracke');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (42, '3675.07', 'fprosacco');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (43, '2458.38', 'haag.althea');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (44, '35013708.35', 'lesch.dangelo');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (45, '3.63', 'kohler.palma');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (46, '8.27', 'myrtis.rath');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (47, '187.93', 'camron.reichel');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (48, '1784.02', 'walker.jerrod');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (49, '8.10', 'palma.roberts');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (50, '6194.12', 'weston.shields');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (51, '2452.33', 'dannie.cormier');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (52, '197044.29', 'emelie08');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (53, '185704863.93', 'lamar.wyman');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (54, '43264680.63', 'jerde.al');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (55, '8515006.71', 'enoch08');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (56, '6.31', 'petra68');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (57, '21.69', 'aryanna.mertz');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (58, '495275.45', 'pkihn');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (59, '67967.90', 'alanis54');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (60, '146711118.95', 'emmerich.clotilde');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (61, '17.45', 'bfarrell');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (62, '585.34', 'mwill');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (63, '2506.26', 'roma86');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (64, '3560863.17', 'tyrel77');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (65, '12.70', 'tommie.mills');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (66, '60542.47', 'orlo.rempel');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (67, '13.46', 'elton67');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (68, '17714.21', 'newton.heathcote');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (69, '3.68', 'muller.zakary');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (70, '701433.63', 'carson.cartwright');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (71, '30735.97', 'terry.melany');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (72, '12.29', 'nitzsche.assunta');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (73, '8.13', 'obergnaum');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (74, '72.39', 'ankunding.heaven');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (75, '8.44', 'sim.bartell');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (76, '7.87', 'camilla91');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (77, '6.84', 'nia71');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (78, '11.03', 'yost.lowell');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (79, '8.91', 'beier.noemi');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (80, '9.23', 'elian52');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (81, '7.38', 'malinda.reilly');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (82, '13.20', 'dayne.bernier');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (83, '4972507.47', 'ahand');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (84, '3618329.26', 'felton.fay');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (85, '6.49', 'blanda.cheyanne');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (86, '15.26', 'alverta.hoeger');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (87, '9.09', 'marjory83');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (88, '34179.86', 'runte.leora');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (89, '2944.06', 'buck.weber');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (90, '33.66', 'ansel.lesch');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (91, '6507.73', 'orlando.buckridge');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (92, '337412.75', 'yesenia.effertz');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (93, '23815.68', 'bailey68');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (94, '1414.10', 'emmanuel08');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (95, '25294599.39', 'miles.rowe');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (96, '19.83', 'cconnelly');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (97, '43.72', 'laisha14');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (98, '3.49', 'yschuster');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (99, '35470408.62', 'irwin.wiegand');
INSERT INTO `users` (`id`, `balance`, `username`) VALUES (100, '27965224.85', 'marian.von');

INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'cons', 969);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'elig', 546);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'eum', 369);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'inci', 984);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'natu', 491);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'nihi', 974);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'omni', 900);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'opti', 520);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'perf', 83);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'qui', 28);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'quo', 891);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'rem', 664);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'repu', 661);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'sed', 868);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (1, 'ut', 694);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'accu', 491);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'eius', 780);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'est', 426);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'et', 985);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'hic', 19);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'magn', 678);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'maxi', 833);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'mole', 755);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'odio', 948);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'offi', 420);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'quas', 884);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (2, 'vel', 978);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'corp', 604);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'dict', 883);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'even', 825);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'illo', 171);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'ipsa', 489);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'nemo', 469);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'quae', 318);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'qui', 784);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'sint', 602);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'ulla', 169);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'ut', 155);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'veri', 685);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (3, 'volu', 861);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'enim', 559);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'faci', 738);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'nesc', 362);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'quam', 61);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'quod', 947);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'quos', 428);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'recu', 873);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (4, 'volu', 55);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (5, 'eos', 432);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (5, 'est', 137);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (5, 'mole', 558);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (5, 'prae', 415);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (5, 'temp', 833);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (5, 'ut', 447);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'accu', 783);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'even', 692);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'faci', 293);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'mole', 552);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'non', 98);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'qui', 795);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (6, 'repe', 813);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'corr', 378);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'eum', 590);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'iste', 245);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'modi', 596);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'quia', 338);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'sit', 66);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (7, 'veni', 540);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'aspe', 789);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'assu', 145);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'cum', 658);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'dolo', 787);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'et', 192);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'expl', 886);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'fugi', 237);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'omni', 857);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'quas', 333);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'quis', 890);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'recu', 581);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'sed', 347);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'tene', 494);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (8, 'volu', 721);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (9, 'corr', 984);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (9, 'mole', 970);
INSERT INTO `stocks` (`userid`, `stocksymbol`, `amount`) VALUES (9, 'sit', 272);

INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1301, 2, 'quia', 'buy', '70.05', 0, '2.97', 'canceled', '1980-11-15 02:42:29');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1302, 8, 'inci', 'buy', '2340549.47', 2, '10853410.47', 'trigger', '1974-06-04 03:57:42');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1303, 5, 'inve', 'buy', '5.42', 2826642, '1718179.92', 'pending', '2017-09-23 04:20:32');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1304, 7, 'ut', 'sell', '306481543.25', 6625445, '6928529.66', 'trigger', '1986-07-07 23:18:53');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1305, 8, 'nemo', 'setsell', '38035.29', 2, '14.43', 'trigger', '2018-03-27 06:06:11');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1306, 5, 'illo', 'setbuy', '13867409.99', 8463752, '219350.40', 'canceled', '1986-10-10 13:51:08');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1307, 2, 'non', 'sell', '7511.03', 49, '36.14', 'completed', '1970-08-20 12:11:55');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1308, 2, 'prae', 'setsell', '1924806.47', 19173519, '1.51', 'completed', '1975-05-01 04:23:27');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1309, 6, 'aliq', 'setsell', '88964.43', 189393, '53862930.30', 'trigger', '2010-05-30 22:47:59');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1310, 3, 'pers', 'sell', '8.29', 129, '1.44', 'completed', '1979-05-25 01:19:46');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1311, 2, 'ulla', 'buy', '2.87', 5636347, '12028989.37', 'trigger', '1995-01-11 06:49:32');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1312, 3, 'eaqu', 'buy', '489442.21', 834617686, '3914285.50', 'trigger', '1999-03-02 16:18:15');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1313, 7, 'dolo', 'setsell', '370312299.60', 48792, '2.00', 'trigger', '1989-06-17 12:34:33');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1314, 2, 'prae', 'sell', '39481216.49', 164757, '26198398.55', 'completed', '1989-12-25 22:35:34');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1315, 4, 'maio', 'setsell', '44203.40', 73761, '0.15', 'trigger', '2017-03-17 12:37:24');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1316, 1, 'duci', 'setsell', '67296.57', 5800809, '4.99', 'pending', '1972-10-26 04:58:41');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1317, 5, 'vel', 'sell', '1.61', 1, '100878.90', 'canceled', '2010-12-06 18:59:52');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1318, 3, 'qui', 'setbuy', '4585.67', 82, '2636.87', 'pending', '2007-10-04 23:31:41');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1319, 9, 'expe', 'setsell', '0.98', 37442, '20.92', 'completed', '1989-04-15 04:48:46');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1320, 3, 'aut', 'setbuy', '445867.15', 6, '236132.86', 'pending', '1990-11-07 15:58:28');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1322, 5, 'quis', 'buy', '0.83', 7334427, '7.67', 'pending', '1973-04-08 20:26:27');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1323, 7, 'ut', 'sell', '41.64', 764, '0.79', 'canceled', '2018-07-21 18:43:55');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1324, 1, 'corr', 'setbuy', '5.61', 1, '76168.15', 'trigger', '2011-10-20 12:52:21');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1325, 2, 'temp', 'setbuy', '2536.06', 421076959, '283.25', 'trigger', '2003-02-12 10:28:07');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1326, 1, 'face', 'sell', '32.58', 324014, '2.83', 'canceled', '1994-03-17 14:33:28');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1327, 5, 'arch', 'buy', '2799.14', 470, '176199.31', 'trigger', '1995-01-18 04:33:10');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1329, 6, 'ipsa', 'setbuy', '679168.98', 4955201, '3716246.67', 'completed', '2008-04-03 13:47:51');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1330, 2, 'numq', 'setbuy', '6.97', 20190, '1598.23', 'pending', '1984-08-01 16:36:03');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1331, 4, 'dolo', 'setbuy', '241359966.21', 95, '2.54', 'pending', '2018-04-20 19:07:58');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1332, 8, 'sapi', 'buy', '659537.56', 1341684, '338582.13', 'trigger', '1991-08-17 04:44:18');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1333, 9, 'even', 'setbuy', '448792.79', 193361, '677986.19', 'trigger', '1976-01-10 04:11:35');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1334, 9, 'repr', 'setbuy', '2.82', 6261, '44.26', 'pending', '1970-03-09 06:00:12');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1335, 6, 'mole', 'sell', '113.26', 2, '437.12', 'pending', '1980-12-23 07:41:34');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1336, 3, 'dolo', 'setsell', '39842.73', 1526, '1.93', 'completed', '2011-04-24 07:57:56');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1337, 5, 'quia', 'sell', '23689.33', 54158, '416045.32', 'completed', '2003-08-09 23:05:25');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1339, 3, 'eaqu', 'sell', '0.75', 634018, '7277.51', 'trigger', '1995-07-03 16:32:27');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1340, 2, 'iste', 'setbuy', '8770260.99', 656480976, '78234421.25', 'completed', '1998-01-31 13:45:34');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1341, 1, 'blan', 'setsell', '0.58', 44242136, '1679.33', 'canceled', '1998-11-16 20:02:52');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1342, 9, 'volu', 'setsell', '1786.23', 19, '32357.27', 'canceled', '2003-12-08 21:51:22');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1343, 6, 'solu', 'buy', '2.85', 49307400, '20.97', 'pending', '1976-07-01 15:04:08');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1344, 9, 'exer', 'setbuy', '5818.30', 33099, '103.25', 'completed', '2014-03-18 17:24:45');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1345, 8, 'arch', 'setsell', '234.61', 6896874, '1.02', 'pending', '1988-08-14 00:08:51');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1346, 6, 'haru', 'buy', '3701644.63', 58, '37600678.92', 'pending', '1984-04-14 17:07:57');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1349, 2, 'eaqu', 'setbuy', '0.77', 93654247, '1941.25', 'canceled', '1984-07-25 22:53:04');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1350, 5, 'eaqu', 'buy', '516682.85', 397, '24.75', 'trigger', '1989-06-02 18:24:05');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1352, 4, 'dict', 'sell', '3.21', 8, '2738.55', 'pending', '2003-10-11 15:07:13');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1353, 4, 'id', 'buy', '235.92', 23753072, '26.35', 'pending', '1982-04-17 10:05:34');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1354, 9, 'aute', 'setsell', '74.88', 499, '12108415.40', 'completed', '1996-11-25 17:43:01');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1355, 2, 'ut', 'buy', '2.70', 0, '73456764.01', 'pending', '1970-04-15 18:14:49');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1356, 5, 'quib', 'sell', '31.04', 10, '161065.75', 'canceled', '1980-08-21 23:56:40');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1357, 1, 'quid', 'setbuy', '2.46', 6, '7458817.72', 'canceled', '2018-10-31 21:37:32');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1358, 5, 'impe', 'setbuy', '31.34', 64141176, '757499.67', 'completed', '1980-04-28 06:47:34');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1359, 7, 'ea', 'sell', '1633623.21', 518, '9.59', 'canceled', '1991-10-01 10:47:18');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1360, 2, 'eos', 'buy', '121.20', 339559, '28026003.44', 'canceled', '1997-02-12 14:43:48');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1361, 3, 'iust', 'buy', '18.68', 2322, '631004.23', 'canceled', '2008-09-03 07:58:33');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1362, 7, 'solu', 'setsell', '1965996.97', 475351222, '19.33', 'canceled', '1999-09-05 19:25:45');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1363, 9, 'aut', 'setbuy', '320.13', 33609337, '382.85', 'pending', '2007-12-28 17:03:17');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1364, 1, 'reru', 'buy', '34.93', 33863, '527.68', 'trigger', '1989-03-12 14:30:09');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1365, 7, 'dele', 'setbuy', '30.39', 584, '44558577.21', 'trigger', '2003-01-23 15:37:23');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1366, 7, 'enim', 'sell', '835159.66', 34593, '397.20', 'trigger', '1994-08-24 05:59:49');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1367, 8, 'assu', 'sell', '0.48', 565742, '409.37', 'trigger', '1984-10-15 09:57:41');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1368, 3, 'hic', 'buy', '5.32', 0, '3.76', 'trigger', '1978-02-21 15:32:06');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1369, 1, 'beat', 'buy', '8449.79', 20197514, '17491017.62', 'pending', '1979-04-30 19:31:22');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1370, 2, 'haru', 'buy', '9567.49', 1650, '470.63', 'pending', '1994-04-24 13:25:43');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1371, 2, 'arch', 'sell', '14.13', 4, '4033.27', 'trigger', '1994-07-19 07:15:11');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1372, 8, 'haru', 'sell', '325142.08', 2, '148.59', 'trigger', '1971-04-22 15:42:04');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1374, 4, 'eum', 'setbuy', '36794.86', 360377, '250.68', 'canceled', '2014-01-25 20:59:52');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1375, 2, 'mole', 'sell', '1068304.02', 753238, '762135601.75', 'trigger', '2002-12-27 07:19:34');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1376, 7, 'volu', 'buy', '1.68', 32655, '559328.22', 'pending', '1993-03-18 22:21:14');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1377, 4, 'alia', 'buy', '2.54', 2, '1.52', 'pending', '2005-04-18 16:34:51');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1378, 4, 'aliq', 'setsell', '67458.69', 3996390, '1998.02', 'pending', '1978-07-24 10:51:26');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1379, 1, 'est', 'setbuy', '35003.52', 1, '77.50', 'completed', '2003-06-19 11:07:26');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1381, 9, 'vel', 'sell', '12867.49', 582, '2774239.19', 'pending', '1989-06-30 17:32:23');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1382, 4, 'nihi', 'sell', '23828517.72', 3449634, '0.42', 'pending', '2013-01-27 09:35:59');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1383, 6, 'arch', 'buy', '30702.77', 6108, '37017.15', 'completed', '2000-01-11 05:06:54');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1384, 5, 'aut', 'buy', '8350.66', 9986, '25973542.73', 'completed', '1984-09-25 01:31:32');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1385, 3, 'aper', 'buy', '76934001.49', 7, '47707.75', 'trigger', '1995-01-15 09:26:40');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1386, 5, 'impe', 'setsell', '17836.24', 3, '607816.62', 'trigger', '1974-05-06 22:13:13');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1387, 7, 'earu', 'sell', '616219.71', 1761, '3013.89', 'canceled', '2002-01-05 19:21:07');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1388, 7, 'iust', 'sell', '386.76', 1965, '27765.32', 'pending', '1992-12-31 01:51:21');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1389, 4, 'volu', 'setbuy', '0.61', 5956, '1.25', 'completed', '1979-12-27 18:41:11');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1390, 1, 'qui', 'sell', '62568381.96', 109, '2.43', 'pending', '2003-11-22 19:58:58');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1391, 1, 'qui', 'setsell', '1.39', 36286921, '49.88', 'trigger', '1974-02-04 04:03:21');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1392, 4, 'quia', 'setsell', '7673400.70', 15738793, '303688.06', 'completed', '1998-12-03 05:14:33');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1396, 6, 'aut', 'sell', '3495.83', 2, '25070.75', 'completed', '1986-05-14 17:18:31');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1397, 4, 'nisi', 'buy', '5367.51', 47124407, '1698905.40', 'trigger', '1988-07-06 07:14:32');
INSERT INTO `transactions` (`id`, `userid`, `stocksymbol`, `command`, `balancechange`, `stockamount`, `stockprice`, `type`, `transactiontime`) VALUES (1399, 4, 'anim', 'sell', '1.99', 10, '3.04', 'trigger', '1984-09-08 03:55:27');
