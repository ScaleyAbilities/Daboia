#
# TABLE STRUCTURE FOR: stocks
#

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `userid` int(11) NOT NULL,
  `stocksymbol` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT 0,
  PRIMARY KEY (`userid`,`stocksymbol`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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


