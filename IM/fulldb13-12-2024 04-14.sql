#
# TABLE STRUCTURE FOR: ACCOUNTS
#

DROP TABLE IF EXISTS `ACCOUNTS`;

CREATE TABLE `ACCOUNTS` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(45) NOT NULL,
  `payment_method_code` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `account_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `fk_ACCOUNTS_PAYMENT_METHODS1_idx` (`payment_method_code`),
  KEY `fk_ACCOUNTS_CUSTOMERS1_idx` (`customer_id`),
  CONSTRAINT `fk_ACCOUNTS_CUSTOMERS1` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ACCOUNTS_PAYMENT_METHODS1` FOREIGN KEY (`payment_method_code`) REFERENCES `PAYMENT_METHODS` (`payment_method_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (1, 'Emmitt Aufderhar', 1, 1, 'Id quaerat sint quis laboriosam.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (2, 'Jasper White MD', 2, 2, 'Quo ut nobis voluptates suscipit dignissimos ');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (3, 'Vinnie Mayert', 3, 3, 'Libero vel sequi recusandae vel nam.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (4, 'Gregory Schiller', 4, 4, 'Repellendus illo officiis autem et enim delec');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (5, 'Florence Harris', 5, 5, 'Consectetur ut optio quae nemo praesentium su');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (6, 'Winston Swift', 6, 6, 'Molestiae asperiores quos eos ipsam corporis ');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (7, 'Prof. Paris Hintz Sr.', 7, 7, 'Nostrum totam voluptates qui qui molestiae au');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (8, 'Cecile Goldner DVM', 8, 8, 'Ut qui minima aperiam et.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (9, 'Prof. Nikko Blick', 9, 9, 'Sit magnam ut deserunt eaque ut est nobis max');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (10, 'Enoch Hessel', 10, 10, 'Perferendis deserunt ea adipisci eos quia.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (11, 'Dr. Jason Lakin IV', 11, 11, 'Eos neque sit autem fugit labore.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (12, 'Damian Abernathy', 12, 12, 'Animi animi aspernatur rerum et velit necessi');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (13, 'Francisco Labadie', 13, 13, 'Iusto autem mollitia distinctio repudiandae d');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (14, 'Rogelio Farrell', 14, 14, 'Assumenda nihil iusto totam ipsum.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (15, 'Marshall Schneider', 15, 15, 'Et corporis optio omnis.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (16, 'Briana Streich', 16, 16, 'Voluptatem commodi deserunt perferendis possi');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (17, 'Jace White', 17, 17, 'Iusto quos autem quaerat id id cumque deserun');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (18, 'Casandra Swaniawski', 18, 18, 'Illum pariatur ipsam incidunt expedita sit de');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (19, 'Fermin Graham', 19, 19, 'Rerum quia natus consectetur.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (20, 'Prof. Durward O\'Conner', 20, 20, 'Unde autem dolor eligendi aspernatur velit id');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (21, 'Mr. Ephraim Runolfsdottir DDS', 21, 21, 'Natus veniam suscipit eos illum magnam.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (22, 'Ervin Pfeffer', 22, 22, 'Ex aperiam dolor eum eos.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (23, 'Rickie Weissnat', 23, 23, 'Minima sit aut est.');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (24, 'Nathanael Kessler', 24, 24, 'Molestiae natus placeat quasi quae deleniti h');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (25, 'Lexie West', 25, 25, 'Facilis minima deleniti iste.');


#
# TABLE STRUCTURE FOR: CUSTOMERS
#

DROP TABLE IF EXISTS `CUSTOMERS`;

CREATE TABLE `CUSTOMERS` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `cell_mobile` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) NOT NULL,
  `other_details` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (1, 'Sarai', 'Greenfelder', '004 Durgan Crossroad\nPierreshire, ND 83576', '474.949.6646', NULL, 'rowan66@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (2, 'Golden', 'Jacobi', '1548 Kuhlman Route\nAmiyaside, AZ 74261-3342', '1-029-109-0771', NULL, 'tiffany.rogahn@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (3, 'Dashawn', 'Weissnat', '888 White Crossing Apt. 083\nEast Carmellaville, WI 15749', '(470)498-2810x01235', NULL, 'kaci82@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (4, 'Zackary', 'Konopelski', '4458 Wintheiser Pass Apt. 311\nWest Wendellview, WV 56237', '(034)370-2861', NULL, 'florine27@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (5, 'Okey', 'Heaney', '770 Karelle Well Apt. 139\nHavenborough, WY 00668-5984', '222.286.7472x26643', NULL, 'abby65@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (6, 'Soledad', 'Bartoletti', '137 Denesik Station Suite 211\nMervinstad, VT 62371', '706.556.7230', NULL, 'carli73@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (7, 'Adam', 'Little', '2607 Walker Fork Suite 006\nSouth Joannefort, AZ 37530-6694', '(965)405-2793x686', NULL, 'lyric02@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (8, 'Lewis', 'Runolfsson', '7670 Beahan Run\nWest Dameon, KS 84334-5972', '1-832-824-2655x22010', NULL, 'buddy92@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (9, 'Mariane', 'Witting', '893 Little Rapids Apt. 221\nKreigerberg, OH 56467', '1-369-130-4279x9679', NULL, 'ariel92@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (10, 'Aileen', 'Schamberger', '296 Allison Loop\nRusselborough, ND 55295', '402-703-9278', NULL, 'narmstrong@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (11, 'Donny', 'Strosin', '79570 Bailey Prairie\nWilliamsonmouth, FL 01813', '+13(2)3146925747', NULL, 'matteo29@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (12, 'Austyn', 'Mann', '865 Hoeger Garden Suite 892\nWalshhaven, NH 09522', '292.200.6751', NULL, 'zfunk@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (13, 'Libby', 'Sanford', '908 DuBuque Drive\nPort Baylee, MS 81813', '(109)881-6674x7832', NULL, 'lydia.hammes@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (14, 'Samantha', 'Gutmann', '787 Auer Ridge Suite 386\nElsatown, AK 75494', '(752)984-0698', NULL, 'bruen.ransom@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (15, 'Giovanni', 'Welch', '9608 Feeney Groves Apt. 530\nProhaskaborough, MS 89871-4413', '(880)648-6825', NULL, 'marietta.walsh@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (16, 'Malvina', 'Lesch', '78498 Jerrell Pike\nCamilaland, NH 32854-3215', '(696)375-0331', NULL, 'qcormier@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (17, 'Jules', 'Kris', '396 Hayden Run\nPadbergberg, KY 38092-1562', '1-627-475-2204', NULL, 'turcotte.ramiro@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (18, 'Guadalupe', 'Kerluke', '3905 Rogahn Square\nMadgemouth, MS 62636', '09055381477', NULL, 'william.gleason@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (19, 'Kyra', 'Lubowitz', '23063 Astrid Via\nSouth Julian, NV 66781', '1-263-525-1956', NULL, 'felipa09@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (20, 'Tod', 'Roob', '5107 Brant Tunnel Apt. 031\nEast Garfieldton, NH 20445', '638.434.2227', NULL, 'hmueller@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (21, 'Bernard', 'Boyer', '270 Christelle Lights\nEast Jonathan, NJ 98862-5471', '(143)744-3751x4390', NULL, 'jhaley@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (22, 'Fatima', 'Schumm', '721 Amir Pike Apt. 386\nD\'Amoreport, PA 77251', '950-082-8112x653', NULL, 'gerald05@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (23, 'Lonny', 'Dicki', '4179 Conroy Shoals\nJamiemouth, LA 17119', '1-879-020-9819', NULL, 'pamela94@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (24, 'Wilhelm', 'Altenwerth', '645 Lindsay Shore\nNew Earnestfort, SC 49231', '+56(9)1455755875', NULL, 'solon.gaylord@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (25, 'Brianne', 'Leffler', '02911 Vernice Spur\nNew Addiechester, DE 17979-6515', '+75(7)0929419244', NULL, 'lbeatty@example.org', NULL);


#
# TABLE STRUCTURE FOR: CUSTOMER_ITEM_PURCHASES
#

DROP TABLE IF EXISTS `CUSTOMER_ITEM_PURCHASES`;

CREATE TABLE `CUSTOMER_ITEM_PURCHASES` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_status_code` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_quanity` int(11) NOT NULL,
  `amount_due` double NOT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `fk_PURCHASE_STATUS_CODES_has_CUSTOMERS_CUSTOMERS1_idx` (`customer_id`),
  KEY `fk_PURCHASE_STATUS_CODES_has_CUSTOMERS_PURCHASE_STATUS_CODE_idx` (`purchase_status_code`),
  KEY `fk_CUSTOMER_ITEM_PURCHASES_INVENTORY_ITEMS1_idx` (`item_id`),
  CONSTRAINT `fk_CUSTOMER_ITEM_PURCHASES_INVENTORY_ITEMS1` FOREIGN KEY (`item_id`) REFERENCES `INVENTORY_ITEMS` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PURCHASE_STATUS_CODES_has_CUSTOMERS_CUSTOMERS1` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PURCHASE_STATUS_CODES_has_CUSTOMERS_PURCHASE_STATUS_CODES` FOREIGN KEY (`purchase_status_code`) REFERENCES `PURCHASE_STATUS_CODES` (`purchase_status_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (1, 1, 1, 1, '1975-04-01', 519126, '0');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (2, 2, 2, 2, '2012-12-21', 499916548, '229.4702672');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (3, 3, 3, 3, '2009-11-08', 570985317, '17883883.520651');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (4, 4, 4, 4, '2015-08-03', 0, '4.14348');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (5, 5, 5, 5, '2015-02-16', 0, '238.9088');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (6, 6, 6, 6, '1987-08-03', 4567, '73943.52');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (7, 7, 7, 7, '1978-06-22', 85, '4102620.012189');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (8, 8, 8, 8, '1975-03-21', 0, '46216.0236303');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (9, 9, 9, 9, '2014-12-22', 8, '1174');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (10, 10, 10, 10, '2013-12-07', 874, '42');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (11, 11, 11, 11, '2005-09-06', 58203365, '49398424.443574');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (12, 12, 12, 12, '1975-11-04', 1, '45');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (13, 13, 13, 13, '1981-11-09', 55, '170.97250963');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (14, 14, 14, 14, '1985-09-28', 9, '144');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (15, 15, 15, 15, '1977-11-27', 97585, '684.473140937');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (16, 16, 16, 16, '2011-02-19', 61266, '4611607.2');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (17, 17, 17, 17, '2014-03-12', 49, '0');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (18, 18, 18, 18, '1999-02-14', 5497, '6');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (19, 19, 19, 19, '1988-10-11', 993, '1716.079154821');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (20, 20, 20, 20, '2013-03-23', 102, '505.343541751');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (21, 21, 21, 21, '2014-10-26', 0, '15.9774689');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (22, 22, 22, 22, '2013-01-13', 4, '49');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (23, 23, 23, 23, '1991-01-10', 347528361, '75602.651453');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (24, 24, 24, 24, '2015-10-31', 57519, '842.4837516');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (25, 25, 25, 25, '2014-11-07', 49066444, '10961.164876039');


#
# TABLE STRUCTURE FOR: CUSTOMER_ITEM_RENTALS
#

DROP TABLE IF EXISTS `CUSTOMER_ITEM_RENTALS`;

CREATE TABLE `CUSTOMER_ITEM_RENTALS` (
  `item_rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rental_date_out` date NOT NULL,
  `rental_date_returned` date NOT NULL,
  `amount_due` float NOT NULL,
  `other_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_rental_id`),
  KEY `fk_CUSTOMER_ITEM_RENTALS_INVENTORY_ITEMS1_idx` (`item_id`),
  KEY `fk_CUSTOMER_ITEM_RENTALS_CUSTOMERS1_idx` (`customer_id`),
  CONSTRAINT `fk_CUSTOMER_ITEM_RENTALS_CUSTOMERS1` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CUSTOMER_ITEM_RENTALS_INVENTORY_ITEMS1` FOREIGN KEY (`item_id`) REFERENCES `INVENTORY_ITEMS` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (1, 1, 1, '1984-12-31', '2023-08-09', '4.48166', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (2, 2, 2, '2018-11-03', '1983-04-02', '288.81', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (3, 3, 3, '1997-07-24', '1995-10-22', '45226300', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (4, 4, 4, '1981-08-08', '1999-07-12', '916635', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (5, 5, 5, '1994-08-15', '1986-08-17', '296627000', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (6, 6, 6, '1986-05-27', '1997-01-13', '7.1011', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (7, 7, 7, '2023-05-18', '1987-10-21', '95678', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (8, 8, 8, '2013-02-18', '2020-02-04', '19110400', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (9, 9, 9, '2018-03-14', '1988-12-30', '14558800', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (10, 10, 10, '1991-10-15', '1983-12-21', '63.8848', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (11, 11, 11, '2007-03-20', '2004-12-21', '379221', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (12, 12, 12, '1986-01-08', '1972-12-18', '33133.1', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (13, 13, 13, '1986-06-30', '2016-01-17', '15.2', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (14, 14, 14, '1974-07-05', '1986-01-03', '305.95', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (15, 15, 15, '2017-08-29', '2024-04-03', '55.2728', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (16, 16, 16, '1983-07-21', '2002-05-08', '376.649', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (17, 17, 17, '2023-07-04', '1986-01-21', '17206.8', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (18, 18, 18, '1970-07-16', '2015-03-17', '5.0506', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (19, 19, 19, '1999-08-20', '1973-10-10', '23137', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (20, 20, 20, '2006-12-20', '1998-04-21', '77074.7', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (21, 21, 21, '2007-07-04', '2021-04-19', '38131.8', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (22, 22, 22, '2024-06-08', '1996-10-08', '2.326', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (23, 23, 23, '2004-05-31', '1984-03-05', '448.27', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (24, 24, 24, '2004-09-29', '1980-03-30', '191752', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (25, 25, 25, '2011-11-29', '1985-08-27', '14863700', NULL);


#
# TABLE STRUCTURE FOR: FINANCIAL_TRANSACTIONS
#

DROP TABLE IF EXISTS `FINANCIAL_TRANSACTIONS`;

CREATE TABLE `FINANCIAL_TRANSACTIONS` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `item_rental_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `previous_transaction_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type_code` int(11) DEFAULT NULL,
  `transaction_amount` double NOT NULL,
  `comment` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_FINANCIAL_TRANSACTIONS_CUSTOMER_ITEM_PURCHASES1_idx` (`purchase_id`),
  KEY `fk_FINANCIAL_TRANSACTIONS_FINANCIAL_TRANSACTIONS1_idx` (`previous_transaction_id`),
  KEY `fk_FINANCIAL_TRANSACTIONS_TRANSACTION_TYPES1_idx` (`transaction_type_code`),
  KEY `fk_FINANCIAL_TRANSACTIONS_ACCOUNTS1_idx` (`account_id`),
  KEY `fk_FINANCIAL_TRANSACTIONS_CUSTOMER_ITEM_RENTALS1_idx` (`item_rental_id`),
  CONSTRAINT `fk_FINANCIAL_TRANSACTIONS_ACCOUNTS1` FOREIGN KEY (`account_id`) REFERENCES `ACCOUNTS` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FINANCIAL_TRANSACTIONS_CUSTOMER_ITEM_PURCHASES1` FOREIGN KEY (`purchase_id`) REFERENCES `CUSTOMER_ITEM_PURCHASES` (`purchase_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FINANCIAL_TRANSACTIONS_CUSTOMER_ITEM_RENTALS1` FOREIGN KEY (`item_rental_id`) REFERENCES `CUSTOMER_ITEM_RENTALS` (`item_rental_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FINANCIAL_TRANSACTIONS_FINANCIAL_TRANSACTIONS1` FOREIGN KEY (`previous_transaction_id`) REFERENCES `FINANCIAL_TRANSACTIONS` (`transaction_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FINANCIAL_TRANSACTIONS_TRANSACTION_TYPES1` FOREIGN KEY (`transaction_type_code`) REFERENCES `TRANSACTION_TYPES` (`transaction_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: INVENTORY_ITEMS
#

DROP TABLE IF EXISTS `INVENTORY_ITEMS`;

CREATE TABLE `INVENTORY_ITEMS` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_code` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `number_in_stocks` int(11) NOT NULL,
  `rental_sale_both` enum('rental','sale','both') NOT NULL,
  `rental_daily_rate` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_INVENTORY_ITEMS_INVENTORY_ITEM_TYPES1_idx` (`item_type_code`),
  CONSTRAINT `fk_INVENTORY_ITEMS_INVENTORY_ITEM_TYPES1` FOREIGN KEY (`item_type_code`) REFERENCES `INVENTORY_ITEM_TYPES` (`item_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (1, 1, 'Vero omnis blanditiis qui magnam commodi voluptate ut.', 452071611, 'both', NULL, 2);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (2, 2, 'Sapiente dolorem aut est ut.', 545465, 'sale', NULL, 6);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (3, 3, 'Harum totam assumenda possimus est.', 89014, 'sale', NULL, 23);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (4, 4, 'Quae aut nulla voluptas.', 1, 'both', NULL, 11996475);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (5, 5, 'Temporibus pariatur cupiditate quam et.', 9298, 'rental', NULL, 149655);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (6, 6, 'Et repellendus excepturi explicabo quisquam ut illo dolores.', 4, 'both', NULL, 354);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (7, 7, 'Consequatur rem ea animi dolor dignissimos.', 672454417, 'sale', NULL, 9);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (8, 8, 'Quibusdam nulla a et aut.', 18524285, 'sale', NULL, 45918805);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (9, 9, 'Nihil assumenda veritatis tempora consequuntur aut.', 4408078, 'both', NULL, 622);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (10, 10, 'Sequi neque maiores laboriosam illum et et.', 53, 'rental', NULL, 4908);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (11, 11, 'Unde ducimus quo omnis.', 2, 'rental', NULL, 3747924);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (12, 12, 'Enim ipsa distinctio magnam enim.', 313206428, 'both', NULL, 1);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (13, 13, 'Eum dolor possimus occaecati.', 3854, 'both', NULL, 2759);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (14, 14, 'Vel veritatis excepturi dolorem.', 25691, 'sale', NULL, 57);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (15, 15, 'Qui aut non quis repudiandae dolores.', 4, 'both', NULL, 43714592);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (16, 16, 'Enim veritatis voluptatum quibusdam voluptatum.', 487287, 'sale', NULL, 7);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (17, 17, 'Molestiae aut error velit quod eum perspiciatis.', 0, 'rental', NULL, 2099);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (18, 18, 'Quia explicabo voluptate voluptatem.', 812580, 'both', NULL, 5);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (19, 19, 'Laboriosam facere suscipit rerum fugiat at dolore non.', 81608, 'sale', NULL, 3784);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (20, 20, 'Nemo quisquam optio voluptas quod nulla.', 70, 'sale', NULL, 58);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (21, 21, 'Nobis nihil debitis magnam voluptas.', 76572777, 'rental', NULL, 17916886);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (22, 22, 'Eius doloribus voluptas numquam adipisci optio aut aut quis.', 843310, 'sale', NULL, 2935);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (23, 23, 'Et eos error quia veniam quaerat eaque sequi.', 914203, 'sale', NULL, 1);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (24, 24, 'Ut molestiae qui voluptatem quis in.', 81661, 'both', NULL, 16367047);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (25, 25, 'Placeat itaque at aut autem.', 606, 'sale', NULL, 6219);


#
# TABLE STRUCTURE FOR: INVENTORY_ITEM_TYPES
#

DROP TABLE IF EXISTS `INVENTORY_ITEM_TYPES`;

CREATE TABLE `INVENTORY_ITEM_TYPES` (
  `item_type_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`item_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (1, 'Quod alias possimus sunt iure tenetur laudantium voluptatem.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (2, 'Perferendis dolorum vitae voluptatem.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (3, 'Corporis veritatis itaque non saepe.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (4, 'Omnis id minus quia magni itaque est.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (5, 'Nulla autem voluptas ad soluta.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (6, 'Corporis repellendus nemo voluptas quaerat quia.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (7, 'Saepe enim voluptas sunt sed.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (8, 'Non et officiis dolorem dolore.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (9, 'Ullam natus explicabo ut adipisci molestiae quis provident.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (10, 'Nobis nesciunt hic voluptates voluptas et totam voluptatum.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (11, 'Provident animi ipsa sunt cupiditate voluptates sit voluptas.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (12, 'In aliquam enim non quo inventore et provident.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (13, 'Officiis est consequatur facere rem qui distinctio.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (14, 'Rerum et omnis in ea.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (15, 'Ipsa modi quis consequatur qui.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (16, 'Odit et qui commodi.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (17, 'Consectetur eius ipsa earum et quae vitae.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (18, 'Repellat voluptatem molestiae tempore harum quo impedit temporibus.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (19, 'Voluptas doloremque optio voluptatem ut dolorem reprehenderit impedit quas.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (20, 'Ipsum eligendi facilis excepturi dolor.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (21, 'Quidem voluptatem incidunt architecto doloribus.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (22, 'Velit corrupti quia suscipit aut distinctio blanditiis.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (23, 'Aut maxime ut quo eos sint aut ad.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (24, 'Quas aliquid suscipit est voluptatem quisquam fugiat.');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (25, 'Mollitia est aut saepe aperiam iure eveniet facilis.');


#
# TABLE STRUCTURE FOR: PAYMENT_METHODS
#

DROP TABLE IF EXISTS `PAYMENT_METHODS`;

CREATE TABLE `PAYMENT_METHODS` (
  `payment_method_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_method_code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (1, 'Et voluptas expedita temporibus adipisci atqu');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (2, 'Qui repudiandae ea totam aperiam numquam et.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (3, 'Dolorum pariatur fuga accusantium.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (4, 'Porro nemo at sint quidem.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (5, 'Quis sit voluptas expedita quia amet facilis ');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (6, 'Quo qui in debitis aut tenetur modi error.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (7, 'Fuga commodi debitis odit.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (8, 'Est ut ut architecto ea.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (9, 'Rerum maxime deserunt deserunt unde dolorum e');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (10, 'Eveniet nesciunt occaecati ipsam provident re');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (11, 'Alias eos cumque qui nihil voluptatem aut.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (12, 'Est laborum corporis a cum.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (13, 'Vero cum dolor et dignissimos.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (14, 'Sed qui voluptates voluptate occaecati rerum ');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (15, 'Suscipit ex blanditiis esse consequuntur volu');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (16, 'Dolor tempore reiciendis maiores.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (17, 'Et fugit eaque aspernatur et aut.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (18, 'Quae vel voluptate enim voluptatem atque cons');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (19, 'In sint ex aut sequi incidunt et.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (20, 'Error fugit vero soluta aperiam.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (21, 'Dolorem reprehenderit molestiae in et.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (22, 'Fugit beatae voluptatem dignissimos rerum cul');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (23, 'Vitae voluptatem illo adipisci vitae.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (24, 'Ut placeat et perferendis et blanditiis nemo ');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (25, 'Tempore debitis nobis beatae rerum et.');


#
# TABLE STRUCTURE FOR: PURCHASE_STATUS_CODES
#

DROP TABLE IF EXISTS `PURCHASE_STATUS_CODES`;

CREATE TABLE `PURCHASE_STATUS_CODES` (
  `purchase_status_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`purchase_status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (1, 'Illo voluptatibus voluptatem ratione dolorum et minus.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (2, 'Et dolores laboriosam iure qui assumenda ea.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (3, 'Officia qui et esse aspernatur dolor.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (4, 'Aut officiis debitis illo sunt non officiis.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (5, 'Nemo magnam assumenda non non et quidem nihil.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (6, 'Quisquam placeat omnis neque ex quia omnis quo cupiditate.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (7, 'Consequuntur est non unde adipisci rerum voluptas numquam ipsam.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (8, 'Recusandae tempore fuga harum voluptatem.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (9, 'Doloribus dolores neque voluptas quia.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (10, 'Et voluptatem veritatis delectus iste qui voluptas.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (11, 'Non ea veritatis quo magnam in quia.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (12, 'Architecto itaque error asperiores et.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (13, 'Qui quia quo quibusdam et voluptatem harum voluptates.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (14, 'Et omnis quia vero et dolorum nisi aperiam.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (15, 'Qui delectus adipisci sit ex nostrum dolorum inventore.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (16, 'Vel repudiandae vel excepturi.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (17, 'Ut et animi velit.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (18, 'Dolores alias quia necessitatibus ut harum consectetur enim.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (19, 'Tempora sint quia minima qui repellendus consequatur ut optio.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (20, 'Adipisci expedita ut vero.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (21, 'Iure nulla et et eum sapiente.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (22, 'Non reiciendis et quo nihil nemo quis voluptatibus.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (23, 'Perferendis voluptates quia error fugit numquam fugiat animi.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (24, 'Et provident neque possimus.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (25, 'Voluptatum adipisci recusandae reprehenderit provident sint illum accusantium cum.');


#
# TABLE STRUCTURE FOR: TRANSACTION_TYPES
#

DROP TABLE IF EXISTS `TRANSACTION_TYPES`;

CREATE TABLE `TRANSACTION_TYPES` (
  `transaction_type_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`transaction_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (1, 'Dolorem cumque debitis libero recusandae harum eligendi quisquam.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (2, 'Et eius molestiae nulla aut autem deleniti.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (3, 'Consequatur est temporibus inventore blanditiis et consequatur.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (4, 'Ipsam modi nihil quia qui consectetur.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (5, 'Incidunt tempora hic consequatur suscipit nobis deserunt cum.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (6, 'Consequatur et laborum quam sit.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (7, 'Provident sunt reprehenderit excepturi.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (8, 'Corrupti pariatur minima quis molestiae odit qui.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (9, 'Ipsa quis ipsam molestias porro nulla ut.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (10, 'Repellat quis qui quisquam accusamus.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (11, 'Consectetur architecto eum deleniti sapiente provident.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (12, 'Culpa porro consequatur eaque deserunt perferendis officia.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (13, 'Magni dicta fuga fuga aliquam pariatur sapiente accusamus.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (14, 'Debitis voluptatum et perferendis consequuntur.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (15, 'Tempore ad qui perferendis adipisci repudiandae.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (16, 'Quia harum optio voluptatem nostrum consequatur nesciunt pariatur.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (17, 'Sequi nostrum accusamus dolores autem.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (18, 'Voluptatem velit quae vel.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (19, 'A consectetur dolor provident perferendis officiis dolor recusandae.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (20, 'Aut saepe suscipit repellendus ipsa.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (21, 'Optio et sunt id alias expedita tempore.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (22, 'Distinctio eaque dolore et sint dignissimos delectus quo.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (23, 'Quidem ut dignissimos adipisci qui ea eum quis.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (24, 'Autem aperiam consectetur ea minima ipsum impedit laudantium id.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (25, 'Est quam rerum in quibusdam repellat officia illo.');


