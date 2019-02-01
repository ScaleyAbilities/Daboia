
DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0,
    username VARCHAR(30) NOT NULL UNIQUE
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


