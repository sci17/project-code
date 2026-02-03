#
# TABLE STRUCTURE FOR: ACCOUNTS
#

DROP TABLE IF EXISTS `ACCOUNTS`;

CREATE TABLE `ACCOUNTS` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(45) NOT NULL,
  `payment_method_code` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `fk_ACCOUNTS_PAYMENT_METHODS1_idx` (`payment_method_code`),
  KEY `fk_ACCOUNTS_CUSTOMERS1_idx` (`customer_id`),
  CONSTRAINT `fk_ACCOUNTS_CUSTOMERS1` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ACCOUNTS_PAYMENT_METHODS1` FOREIGN KEY (`payment_method_code`) REFERENCES `PAYMENT_METHODS` (`payment_method_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (57, 'Zelma', 44, 7, 'y');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (58, 'Torey', 10, 8, 'x');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (67, 'Marielle', 23, 17, 'm');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (74, 'Emely', 7, 24, 'n');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (83, 'Rosalind', 25, 33, 'p');
INSERT INTO `ACCOUNTS` (`account_id`, `account_name`, `payment_method_code`, `customer_id`, `account_details`) VALUES (95, 'Briana', 34, 45, 'u');


#
# TABLE STRUCTURE FOR: CUSTOMERS
#

DROP TABLE IF EXISTS `CUSTOMERS`;

CREATE TABLE `CUSTOMERS` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `cell_mobile` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) NOT NULL,
  `other_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (1, 'Fabiola', 'Mitchell', '214 Kitty Lights\nLake Hertha, MI 45219', '038.735.8381', NULL, 'vincent.greenfelder@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (2, 'Destiny', 'Price', '5941 Devonte Row Apt. 895\nLake Ladarius, NC 9', '(513)404-3178', NULL, 'josiane.lind@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (3, 'Shanon', 'Feil', '31415 Letha Ramp Apt. 891\nBartonville, MD 348', '04513098121', NULL, 'stacey.kessler@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (4, 'Tiana', 'Johnson', '9705 Donnell Inlet Apt. 319\nWardchester, NH 5', '102.459.5323', NULL, 'lance60@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (5, 'Elsie', 'Medhurst', '2271 Mraz Common Suite 978\nFeilview, LA 90637', '339.922.4047', NULL, 'brayan05@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (6, 'Ardella', 'Emard', '5800 Lebsack Point Suite 241\nVandervortfurt, ', '1-162-678-7214x6396', NULL, 'lemke.athena@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (7, 'Vada', 'Wyman', '1991 Franz Circles\nSchmittmouth, CT 45881', '1-663-212-7887x1474', NULL, 'bskiles@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (8, 'Anais', 'Moore', '119 Shanie Point Apt. 035\nLake Nickfort, PA 7', '(112)162-3759x092', NULL, 'bernier.golda@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (9, 'Gertrude', 'Heaney', '27634 Wyman Drives\nWardtown, DE 63226-1439', '521-973-9139', NULL, 'glockman@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (10, 'Tianna', 'Carter', '1180 Destiny Isle\nJordyport, AK 53569', '1-689-536-2279x0549', NULL, 'raul80@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (11, 'Catherine', 'Fay', '93280 Dorian Cliff Apt. 771\nWest Kayli, SD 23', '513-969-9949', NULL, 'mona87@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (12, 'Nora', 'King', '3588 Harmony Shores\nKosstown, AZ 45409', '1-117-932-3082', NULL, 'loy67@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (13, 'Jazmyne', 'Gibson', '6919 Sporer Crest Apt. 718\nWest Antonetta, WI', '545-001-2960x31906', NULL, 'deonte.bartell@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (14, 'Dasia', 'Gleichner', '2928 Maud Cliff\nLemkeberg, ND 06462', '368.744.1526x9094', NULL, 'eabshire@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (15, 'Ressie', 'Gutkowski', '68323 Pietro Mountain Suite 710\nWest Lorenza,', '1-628-017-1736', NULL, 'catherine.fay@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (16, 'Roberta', 'Kessler', '8879 Heathcote Coves Apt. 550\nWest Louie, RI ', '(189)752-1960x3463', NULL, 'roger58@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (17, 'Baby', 'Kirlin', '7523 Braden Prairie Apt. 792\nMelliefort, GA 0', '600-442-8586x85505', NULL, 'arath@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (18, 'Pinkie', 'Brown', '632 Harry Mountain\nOttisside, KY 94682-8456', '643-172-8845x729', NULL, 'kassulke.sheldon@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (19, 'Kaylie', 'Crona', '57836 Kris Camp Suite 935\nRunolfsdottirville,', '031-362-2925', NULL, 'emely69@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (20, 'Shany', 'Quigley', '82118 Emil Field\nAmeliaton, MD 34426-0257', '919.370.1193x28355', NULL, 'evelyn.auer@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (21, 'Hailee', 'Lind', '982 Raegan Stravenue\nSouth Robert, LA 93569-1', '06562898928', NULL, 'shanie73@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (22, 'Ora', 'Hessel', '0141 Israel Divide Apt. 219\nNorth Agnes, DE 6', '097.791.3955x7585', NULL, 'doyle.tremblay@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (23, 'Filomena', 'Gleason', '524 Felix Brooks\nLuechester, MN 39404-9560', '+55(9)4431296076', NULL, 'lillian.rippin@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (24, 'Amie', 'Predovic', '366 Senger Field\nDaphnefort, TX 77782-2322', '+82(0)2144872380', NULL, 'zkoch@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (25, 'Natalia', 'Marquardt', '347 Pagac Tunnel Apt. 057\nNew Walker, OK 0760', '(112)321-5556x9454', NULL, 'zbosco@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (26, 'Nora', 'Klocko', '44656 Leannon Springs Apt. 473\nNew Marianne, ', '02613093972', NULL, 'franecki.lorenz@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (27, 'Citlalli', 'Volkman', '342 Moen Alley Apt. 467\nAbbottside, OR 43839', '1-481-327-6540', NULL, 'juana.conroy@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (28, 'Vida', 'Hirthe', '1378 Estevan Turnpike\nMurrayton, UT 00232-386', '904-665-3886x337', NULL, 'erempel@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (29, 'Alverta', 'Kuhic', '9854 Schuster Oval Suite 620\nHannahmouth, DC ', '(436)077-9384x88489', NULL, 'penelope.lebsack@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (30, 'Zoila', 'Harris', '197 O\'Hara Alley Suite 544\nNorth Brendan, AK ', '(071)137-3228', NULL, 'reta.heller@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (31, 'Mary', 'Mueller', '937 Pfannerstill Ridge Apt. 525\nStanfordmouth', '360.492.1938x2296', NULL, 'cole.buford@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (32, 'Janis', 'Armstrong', '94455 Arvel Locks\nWest Shemarton, WV 84530', '(541)321-3244x492', NULL, 'bettye.reilly@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (33, 'Eugenia', 'Hudson', '931 Fletcher Shoal\nErdmantown, UT 51573', '(965)462-4823', NULL, 'tlubowitz@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (34, 'Kimberly', 'DuBuque', '460 Gerlach Meadows Suite 638\nJedhaven, MO 44', '(451)455-9334x057', NULL, 'cole.dasia@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (35, 'Rosalyn', 'Greenholt', '126 Spencer Locks Apt. 888\nAlisonberg, MS 891', '(133)551-5364x4739', NULL, 'white.olga@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (36, 'Holly', 'Bode', '839 Matilde Hill\nSabinaberg, HI 79869', '1-867-630-5904', NULL, 'deanna92@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (37, 'Jessica', 'Prohaska', '347 Lowe Run\nWinnifredchester, WA 10331-5143', '(939)412-0875x81744', NULL, 'chadrick77@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (38, 'Alexandra', 'Mertz', '242 Quentin Stream\nNorth Danyka, ID 17631-466', '(689)838-9605x875', NULL, 'lelia.koepp@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (39, 'Viola', 'Funk', '24916 Donato Inlet Suite 013\nNorbertofort, LA', '(546)880-4850x598', NULL, 'yhansen@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (40, 'Zena', 'Grant', '11489 Runte Plains\nBayerfort, MO 65150', '580-740-2465x9924', NULL, 'hudson.destinee@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (41, 'Jane', 'Rau', '47485 Tillman Corners\nWilhelminetown, DC 8787', '1-553-101-0104', NULL, 'wschroeder@example.com', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (42, 'Ardella', 'Farrell', '9400 Mante Unions Suite 026\nSouth Jakeville, ', '080.619.6218x04013', NULL, 'nconsidine@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (43, 'Alivia', 'Collins', '6405 Metz Tunnel Apt. 978\nEdythestad, TX 2589', '(695)921-2803', NULL, 'reinger.kian@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (44, 'Maribel', 'Cormier', '72749 Colin Fields\nDorotheachester, DC 93122-', '279.268.5643x04537', NULL, 'bernard47@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (45, 'Malinda', 'Mueller', '85854 Janick Lodge Suite 856\nPort Breannashir', '1-641-887-7048x537', NULL, 'aabshire@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (46, 'Norene', 'Streich', '2911 Leila Path Apt. 386\nSouth Bradchester, A', '205.895.1325x76583', NULL, 'novella20@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (47, 'Eva', 'Lowe', '37264 Hickle Drive Suite 967\nPort Luz, NC 504', '343.970.3570', NULL, 'brent.nader@example.org', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (48, 'Maudie', 'Moore', '460 Fadel Alley\nNorth Floridaport, UT 69961', '+64(5)7411803631', NULL, 'nhettinger@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (49, 'Carole', 'Goodwin', '202 Prince Stravenue Apt. 194\nNevaville, MN 7', '+31(6)1959417606', NULL, 'vallie.schmeler@example.net', NULL);
INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (50, 'Josiane', 'Okuneva', '04660 Roma Road\nSouth Bradford, NV 69034', '(906)298-6754', NULL, 'abelardo59@example.com', NULL);


#
# TABLE STRUCTURE FOR: CUSTOMER_ITEM_PURCHASES
#

DROP TABLE IF EXISTS `CUSTOMER_ITEM_PURCHASES`;

CREATE TABLE `CUSTOMER_ITEM_PURCHASES` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_status_code` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (354, 11, 4, 4, '2007-11-15', 330694890, '5000.647');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (355, 2, 5, 5, '2020-06-27', 2552, '654');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (361, 2, 11, 11, '1991-03-06', 10241408, '354.01421196');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (362, 32, 12, 12, '1998-10-30', 39, '113.827');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (364, 3, 14, 14, '2014-01-07', 32621, '27862');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (366, 2, 16, 16, '1997-01-18', 5, '658.7');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (367, 7, 17, 17, '2021-12-01', 495, '93077536.2082');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (384, 36, 34, 34, '1980-12-08', 2, '2631.2225');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (386, 5, 36, 36, '1999-09-06', 58072497, '373.081431415');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (387, 6, 37, 37, '2002-09-14', 0, '74464.6175');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (388, 28, 38, 38, '1976-06-16', 1361498, '23537');
INSERT INTO `CUSTOMER_ITEM_PURCHASES` (`purchase_id`, `purchase_status_code`, `customer_id`, `item_id`, `purchase_date`, `purchase_quanity`, `amount_due`) VALUES (392, 6, 42, 42, '2019-01-29', 156, '0.33211724');


#
# TABLE STRUCTURE FOR: CUSTOMER_ITEM_RENTALS
#

DROP TABLE IF EXISTS `CUSTOMER_ITEM_RENTALS`;

CREATE TABLE `CUSTOMER_ITEM_RENTALS` (
  `item_rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `rental_date_out` date NOT NULL,
  `rental_date_returned` date NOT NULL,
  `amount_due` float NOT NULL,
  `other_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_rental_id`),
  KEY `fk_CUSTOMER_ITEM_RENTALS_INVENTORY_ITEMS1_idx` (`item_id`),
  KEY `fk_CUSTOMER_ITEM_RENTALS_CUSTOMERS1_idx` (`customer_id`),
  CONSTRAINT `fk_CUSTOMER_ITEM_RENTALS_CUSTOMERS1` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CUSTOMER_ITEM_RENTALS_INVENTORY_ITEMS1` FOREIGN KEY (`item_id`) REFERENCES `INVENTORY_ITEMS` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (1, 1, 401, '1979-10-17', '1990-06-21', '24588800', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (2, 2, 402, '2021-04-06', '2016-09-28', '5', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (3, 3, 403, '1974-04-10', '1995-03-09', '266692000', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (4, 4, 404, '2007-12-16', '1970-10-05', '8.99', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (5, 5, 405, '1977-05-11', '2002-05-25', '3331.42', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (6, 6, 406, '1982-08-25', '2012-11-07', '1954690', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (7, 7, 407, '2005-11-22', '1984-11-08', '81.4397', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (8, 8, 408, '2017-04-18', '1974-04-04', '4441770', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (9, 9, 409, '1995-02-17', '2005-05-10', '20.4', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (10, 10, 410, '1991-02-05', '1994-02-06', '12247.4', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (11, 11, 411, '2022-03-25', '2005-02-11', '3682.97', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (12, 12, 412, '1974-02-03', '1981-10-10', '1407.1', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (13, 13, 413, '1992-11-08', '1970-12-17', '91590300', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (14, 14, 414, '1977-09-28', '1996-04-26', '525940', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (15, 15, 415, '1981-08-15', '1998-09-14', '1117720', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (16, 16, 416, '1993-10-16', '2016-05-20', '55293500', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (17, 17, 417, '1981-06-08', '2014-02-18', '332.466', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (18, 18, 418, '2023-12-02', '2005-12-06', '9005.15', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (19, 19, 419, '1975-12-26', '1971-05-02', '350', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (20, 20, 420, '2010-06-16', '2006-03-26', '736.605', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (21, 21, 421, '2000-09-16', '2004-03-01', '11250.7', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (22, 22, 422, '2001-01-05', '2001-11-10', '2367360', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (23, 23, 423, '1983-03-26', '2006-07-15', '29609500', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (24, 24, 424, '1985-07-19', '1987-11-18', '82.7165', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (25, 25, 425, '1992-01-13', '1981-03-24', '4241.99', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (26, 26, 426, '2005-09-03', '2006-09-09', '0', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (27, 27, 427, '2020-12-09', '1974-08-14', '610887', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (28, 28, 428, '1980-01-16', '1982-10-14', '16807', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (29, 29, 429, '1989-08-03', '1970-12-02', '52.0586', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (30, 30, 430, '2006-06-13', '2015-04-23', '61793200', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (31, 31, 431, '2001-12-06', '1985-10-11', '2310510', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (32, 32, 432, '1979-05-26', '2004-03-28', '281.62', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (33, 33, 433, '1970-06-15', '1988-08-31', '27190600', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (34, 34, 434, '2007-11-28', '2007-10-14', '0', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (35, 35, 435, '2010-04-28', '1985-07-29', '11590.2', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (36, 36, 436, '2017-06-17', '1992-03-01', '110.99', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (37, 37, 437, '1981-02-16', '1991-05-24', '6.55293', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (38, 38, 438, '2001-07-25', '2005-03-06', '27624400', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (39, 39, 439, '2010-05-02', '2018-10-16', '9.3629', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (40, 40, 440, '1993-05-22', '1990-07-17', '1.47703', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (41, 41, 441, '1997-04-23', '1981-08-27', '293751', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (42, 42, 442, '2008-10-01', '2001-04-27', '43.2945', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (43, 43, 443, '2008-01-07', '2010-11-21', '0', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (44, 44, 444, '1976-12-04', '2005-05-05', '68455100', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (45, 45, 445, '2024-01-10', '1998-07-03', '17671.1', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (46, 46, 446, '1985-02-07', '1995-07-27', '946.244', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (47, 47, 447, '2013-12-27', '2000-06-10', '17018.3', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (48, 48, 448, '1974-12-12', '1989-02-01', '26184700', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (49, 49, 449, '1970-04-25', '1986-05-11', '2219240', NULL);
INSERT INTO `CUSTOMER_ITEM_RENTALS` (`item_rental_id`, `customer_id`, `item_id`, `rental_date_out`, `rental_date_returned`, `amount_due`, `other_details`) VALUES (50, 50, 450, '1994-01-08', '1991-08-15', '25598.6', NULL);


#
# TABLE STRUCTURE FOR: FINANCIAL_TRANSACTIONS
#

DROP TABLE IF EXISTS `FINANCIAL_TRANSACTIONS`;

CREATE TABLE `FINANCIAL_TRANSACTIONS` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `item_rental_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `previous_transaction_id` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (354, 74, 4, 362, NULL, '1986-08-10', 13, '3.0112', 'Nulla incidunt voluptates iste sit est.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (361, 83, 11, 388, NULL, '1979-11-13', 6, '0', 'Rem blanditiis maiores sequi debitis delectus est.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (366, 74, 16, 362, NULL, '1984-10-14', 4, '119480.6793', 'Voluptatem molestias reprehenderit et vero dicta et quia.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (370, 58, 20, 384, NULL, '2016-03-29', 20, '10.622258927', 'Nihil alias voluptatem ex et omnis.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (374, 95, 24, 392, NULL, '1970-08-27', 5, '5142565.4470941', 'Atque nihil numquam illum quod praesentium.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (378, 74, 28, 362, NULL, '2009-02-20', 1, '43665963.6296', 'Et molestias tenetur sed quos sequi nisi.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (379, 83, 29, 364, NULL, '1988-06-16', 7, '73190549.935', 'Velit qui harum et sit nostrum nobis nihil odit.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (384, 74, 34, 387, NULL, '2011-07-29', 8, '1.3', 'Qui occaecati atque voluptas dolore quis et quia.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (392, 95, 42, 366, NULL, '1978-08-04', 8, '822254.02336418', 'Fuga unde tempore iste.');
INSERT INTO `FINANCIAL_TRANSACTIONS` (`transaction_id`, `account_id`, `item_rental_id`, `purchase_id`, `previous_transaction_id`, `transaction_date`, `transaction_type_code`, `transaction_amount`, `comment`) VALUES (393, 57, 43, 367, NULL, '2019-09-09', 8, '2353146.9342', 'Aut temporibus dignissimos similique et optio perspiciatis.');


#
# TABLE STRUCTURE FOR: INVENTORY_ITEMS
#

DROP TABLE IF EXISTS `INVENTORY_ITEMS`;

CREATE TABLE `INVENTORY_ITEMS` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_code` int(11) DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `number_in_stocks` int(11) NOT NULL,
  `rental_sale_both` enum('rental','sale','both') NOT NULL,
  `rental_daily_rate` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_INVENTORY_ITEMS_INVENTORY_ITEM_TYPES1_idx` (`item_type_code`),
  CONSTRAINT `fk_INVENTORY_ITEMS_INVENTORY_ITEM_TYPES1` FOREIGN KEY (`item_type_code`) REFERENCES `INVENTORY_ITEM_TYPES` (`item_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (1, 1, 'Aperiam reiciendis autem sapiente. Neque quo ', 647079, 'both', 947653, 3);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (2, 2, 'Placeat tempore odit omnis blanditiis cupidit', 1576, 'rental', 0, 154);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (3, 3, 'Molestiae ipsum vel pariatur amet. Odit tempo', 340061224, 'both', 544, 134176544);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (4, 4, 'Ducimus harum reprehenderit totam et. Beatae ', 447696, 'rental', 24131166, 44590);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (5, 5, 'Sint non ea dicta magni sapiente excepturi. Q', 313, 'rental', 11, 31024930);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (6, 6, 'Quidem et et eos omnis voluptatem aperiam ab.', 0, 'sale', 279659397, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (7, 7, 'Odio nobis architecto voluptatem quos. Dolor ', 20945085, 'sale', 395692, 33);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (8, 8, 'Corrupti beatae hic ut delectus velit amet. S', 1, 'sale', 0, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (9, 9, 'Consequuntur error voluptatum incidunt dolore', 0, 'both', 10, 88462);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (10, 10, 'Nihil rerum sit ut reiciendis error itaque. A', 7735229, 'rental', 4624, 8);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (11, 11, 'Hic consequatur asperiores ipsum officia reic', 9, 'sale', 2072, 5450603);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (12, 12, 'Vitae earum consequatur illo quasi alias even', 39720, 'both', 8322, 34);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (13, 13, 'Reprehenderit illum accusantium tenetur labor', 94187, 'rental', 97, 69994885);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (14, 14, 'Fuga earum ipsa aliquam aut commodi nam illum', 533, 'sale', 23510, 93822);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (15, 15, 'Et quia et tempora velit aut. Nostrum suscipi', 505337, 'rental', 1, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (16, 16, 'Molestiae similique ea sit. Fugit qui assumen', 6896064, 'sale', 66238340, 7455);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (17, 17, 'Quis eum voluptatem esse dignissimos et minus', 651984558, 'sale', 6913, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (18, 18, 'Exercitationem eaque ut incidunt reiciendis e', 553225138, 'sale', 20, 2751);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (19, 19, 'Dolorem accusantium sit maxime ab reprehender', 478763854, 'rental', 17, 1035);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (20, 20, 'Reiciendis eius eligendi distinctio. Pariatur', 46, 'both', 0, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (21, 21, 'Dolore perspiciatis nihil ut in et incidunt q', 0, 'both', 0, 1117687);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (22, 22, 'Nisi magnam aspernatur illum et. Vel porro id', 8209498, 'sale', 0, 21166);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (23, 23, 'Facilis cum ratione nam et. Magnam est volupt', 34374, 'rental', 236909, 1677193);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (24, 24, 'Qui quos eaque molestiae voluptatum. Sint dol', 623781633, 'rental', 228118, 2);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (25, 25, 'Quis repellendus molestias et temporibus dolo', 87298, 'both', 0, 43150);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (26, 26, 'Voluptatem iste sed magnam nesciunt rerum. Ar', 0, 'rental', 5784996, 2);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (27, 27, 'Reiciendis nobis magni rerum soluta excepturi', 7534, 'both', 6, 733032);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (28, 28, 'Dolores aut est vitae dolorem esse. Aut sed o', 51214, 'sale', 1314537, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (29, 29, 'Excepturi voluptatem soluta nam iure autem ut', 0, 'rental', 512942, 493971683);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (30, 30, 'Qui velit cupiditate iusto iure. Voluptates m', 6725, 'sale', 317475914, 849);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (31, 31, 'Ut ut culpa aut consequatur inventore delectu', 161937353, 'rental', 554420, 7395);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (32, 32, 'Optio commodi modi sint tempore quisquam omni', 7341, 'sale', 387807896, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (33, 33, 'Asperiores voluptates praesentium saepe odit ', 199237, 'sale', 549, 921524);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (34, 34, 'Inventore fugit aut delectus sit nesciunt con', 647, 'rental', 0, 74);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (35, 35, 'Tenetur minima omnis sunt. Vel pariatur quia ', 6404036, 'rental', 0, 42);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (36, 36, 'Sunt in voluptate et repellat quaerat. Rerum ', 509, 'both', 4, 258);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (37, 37, 'Minus ipsa dolorem numquam aut provident volu', 21723, 'rental', 853123357, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (38, 38, 'Necessitatibus ab sit dolores asperiores dele', 0, 'rental', 0, 234585);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (39, 39, 'Sed sapiente tempora aliquid vero id qui. Ut ', 432875722, 'both', 145544, 1);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (40, 40, 'Non voluptas corrupti praesentium dolore id a', 431, 'both', 80987, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (41, 41, 'Rerum debitis placeat illo vel. Sunt in fugit', 98048480, 'rental', 72383, 9);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (42, 42, 'Nihil mollitia nulla ex fugiat rem iure dicta', 9, 'both', 94, 412221840);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (43, 43, 'Voluptatem nobis ut pariatur similique et fug', 63, 'rental', 0, 323869713);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (44, 44, 'Eos tempore et iste doloribus magnam exceptur', 742, 'sale', 20117905, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (45, 45, 'Repudiandae et consectetur necessitatibus. Te', 12, 'rental', 10215894, 38600);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (46, 46, 'Est aut placeat fuga et doloremque. Voluptatu', 6273527, 'both', 22310, 5818044);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (47, 47, 'Ex deserunt sapiente voluptate. Fugit exercit', 32, 'sale', 100, 53121806);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (48, 48, 'Tenetur asperiores omnis autem perferendis. Q', 5, 'sale', 221989, 0);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (49, 49, 'Sapiente laborum dolores inventore. Quo volup', 2201301, 'both', 12249, 2912759);
INSERT INTO `INVENTORY_ITEMS` (`item_id`, `item_type_code`, `description`, `number_in_stocks`, `rental_sale_both`, `rental_daily_rate`, `sale_price`) VALUES (50, 50, 'Magni quis tempore architecto et. Et quos in ', 762852, 'rental', 11108, 0);


#
# TABLE STRUCTURE FOR: INVENTORY_ITEM_TYPES
#

DROP TABLE IF EXISTS `INVENTORY_ITEM_TYPES`;

CREATE TABLE `INVENTORY_ITEM_TYPES` (
  `item_type_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`item_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (1, 'Doloremque asperiores neque nobis sed. Ipsam ');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (2, 'Voluptatem sed facilis natus earum. Temporibu');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (3, 'Alias qui sint iusto commodi consequatur quas');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (4, 'Recusandae velit itaque provident nobis harum');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (5, 'Placeat mollitia reprehenderit illum ipsa fug');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (6, 'Culpa aliquid occaecati et ipsa commodi nihil');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (7, 'Vero alias ut maxime beatae id nihil. Perfere');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (8, 'Magnam fugiat eius nostrum dolore eos eaque a');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (9, 'Amet hic consequuntur libero illum quasi quis');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (10, 'Assumenda id sunt accusantium mollitia. Unde ');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (11, 'Ea quia et sequi impedit esse quis distinctio');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (12, 'Ipsum reiciendis hic doloremque nulla et exce');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (13, 'Vitae voluptatem corporis sit eveniet. Provid');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (14, 'Illum quod molestiae eveniet consequuntur. Vo');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (15, 'Dolor voluptatem in nesciunt incidunt. Doloru');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (16, 'Enim consequatur voluptas aliquam architecto ');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (17, 'Dolores et doloribus et. Nihil nihil eaque vo');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (18, 'Explicabo deleniti delectus animi saepe sit d');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (19, 'Rem commodi omnis non nihil adipisci sit. Dol');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (20, 'Corporis dolor pariatur cupiditate ut incidun');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (21, 'Consequuntur voluptatem libero qui corporis e');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (22, 'Non consequatur consectetur et est deleniti v');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (23, 'Voluptas et sit rerum est voluptas nam molest');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (24, 'Non perferendis et incidunt alias. Consequatu');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (25, 'Voluptatem quia tempora perferendis suscipit ');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (26, 'Qui reiciendis qui accusantium. Suscipit dolo');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (27, 'Dolorem porro sunt ab quae numquam nam. Quide');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (28, 'Necessitatibus ut et deleniti. Illo et cupidi');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (29, 'Nemo assumenda eos aut dolorum rerum labore e');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (30, 'Ut possimus et fugit qui sint. Ipsa est digni');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (31, 'Blanditiis unde voluptatem perspiciatis repre');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (32, 'Sed qui dolor totam ipsum. In vel animi dolor');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (33, 'Libero officiis consequatur officiis consecte');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (34, 'Vel repudiandae est nam et. Repudiandae earum');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (35, 'Itaque atque optio qui est est. Laborum quas ');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (36, 'Ducimus dolores ducimus quas soluta totam qui');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (37, 'Exercitationem quos et nesciunt consequatur e');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (38, 'Qui iste consequatur reprehenderit consequunt');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (39, 'Maxime ea aperiam qui ratione nulla qui. Nemo');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (40, 'At repudiandae blanditiis natus nulla aut. Qu');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (41, 'Tempore inventore et voluptas nisi quo. Dolor');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (42, 'Sunt animi voluptatem natus rem doloremque re');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (43, 'Et veritatis omnis aut quae quasi maxime. Eaq');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (44, 'Temporibus vero quo tempora voluptatem quasi ');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (45, 'Voluptas voluptas ducimus asperiores cupidita');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (46, 'Nesciunt ratione voluptatem qui perferendis q');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (47, 'Rerum provident beatae et a. Qui tenetur itaq');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (48, 'Nam labore aut nobis autem animi. Aut rem sim');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (49, 'Suscipit vero id consequatur tenetur. Cum con');
INSERT INTO `INVENTORY_ITEM_TYPES` (`item_type_code`, `description`) VALUES (50, 'Ducimus pariatur quia voluptates quia quia. I');


#
# TABLE STRUCTURE FOR: PAYMENT_METHODS
#

DROP TABLE IF EXISTS `PAYMENT_METHODS`;

CREATE TABLE `PAYMENT_METHODS` (
  `payment_method_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_method_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (1, 'Ipsam ea inventore dolorem odit ut debitis ac');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (2, 'Error aut quis vel.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (3, 'Dolor aut velit cumque.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (4, 'Eligendi architecto id ut architecto et.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (5, 'Cum perspiciatis consequatur est eos aspernat');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (6, 'Quae eaque mollitia commodi dolor quo odio et');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (7, 'Neque provident sunt autem tenetur quia.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (8, 'Rerum fuga consequatur rerum consequatur blan');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (9, 'Quia quia deleniti corporis nihil.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (10, 'Perferendis sed et voluptas unde.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (11, 'Qui in aut voluptates animi impedit dolore qu');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (12, 'Temporibus aliquid ducimus illum modi.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (13, 'Tempora a dolor et sint.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (14, 'Incidunt distinctio qui non ut consequuntur a');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (15, 'Excepturi cumque distinctio quia rerum.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (16, 'Consequatur aut quia nemo laborum blanditiis ');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (17, 'Eos sed similique voluptatem quia ad nemo quo');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (18, 'Consequatur omnis quia saepe ut ratione.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (19, 'Officia et voluptatem qui at.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (20, 'Et recusandae voluptas optio quam in sit.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (21, 'Amet placeat quam dolor aut.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (22, 'Tempora occaecati laboriosam consequuntur quo');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (23, 'Nihil quis id accusantium enim aliquid.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (24, 'Distinctio dolor non recusandae eius id volup');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (25, 'Est illo aut dolore minima inventore.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (26, 'Assumenda aperiam dolorem ipsum aut.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (27, 'Sequi perferendis et architecto.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (28, 'Molestiae ea ad voluptatibus assumenda ipsum ');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (29, 'Vel ut odit et.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (30, 'Quod praesentium asperiores similique omnis n');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (31, 'Accusamus voluptas voluptates aut voluptates ');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (32, 'Sit maxime recusandae distinctio quas.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (33, 'Quibusdam quia qui id quia quia.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (34, 'Ex impedit dolor omnis explicabo ipsa.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (35, 'Autem non non saepe quisquam aut quidem ut.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (36, 'Dolore omnis et quasi aliquam rerum.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (37, 'Omnis quam voluptatibus facilis voluptatem co');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (38, 'Quo magnam consequatur ipsa minus eos sit tem');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (39, 'Totam eum esse est harum.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (40, 'Quam aut at sit quis neque quas ipsam.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (41, 'Et accusantium explicabo nemo et impedit sapi');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (42, 'Dolores pariatur dolores ex est saepe.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (43, 'Eos sit excepturi iure qui voluptatem.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (44, 'Expedita placeat tenetur voluptas dolor fugia');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (45, 'Omnis ea quis ea.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (46, 'Suscipit odio nostrum quasi ea sit quidem ex.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (47, 'Accusantium in non molestias sapiente.');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (48, 'Nostrum mollitia occaecati possimus nostrum n');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (49, 'Et nemo exercitationem modi omnis perferendis');
INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (50, 'Dolor fuga a amet fugit sit.');


#
# TABLE STRUCTURE FOR: PURCHASE_STATUS_CODES
#

DROP TABLE IF EXISTS `PURCHASE_STATUS_CODES`;

CREATE TABLE `PURCHASE_STATUS_CODES` (
  `purchase_status_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`purchase_status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (1, 'Ratione nihil velit molestias et voluptatem a');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (2, 'Dolores veritatis sed molestiae aut sapiente.');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (3, 'Eum eligendi optio quis aut pariatur vitae od');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (4, 'Occaecati dolores quam dolorem eos. Rerum dol');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (5, 'Est ut non architecto repudiandae qui est vol');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (6, 'In assumenda doloribus consectetur nulla. Qui');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (7, 'Rerum veniam voluptatem tempore voluptas veni');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (8, 'Iure consequatur est animi omnis quia qui est');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (9, 'Sunt eligendi consequatur ut corrupti exercit');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (10, 'Facilis repellat eius quibusdam et natus. Min');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (11, 'Hic similique error et molestiae. Sequi omnis');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (12, 'Ullam quod et non animi. Sunt dolores est in ');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (13, 'Facere nobis ut culpa excepturi praesentium. ');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (14, 'Dolore nemo quia quaerat commodi aperiam cupi');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (15, 'Vel eos omnis eum consequatur praesentium dol');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (16, 'Quo ut aut ullam excepturi autem. Id minima d');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (17, 'Ad quo fugit iusto ut eaque. Inventore sit ex');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (18, 'Ea inventore occaecati omnis commodi. Est del');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (19, 'Porro adipisci ipsam ipsam molestias. Nisi ex');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (20, 'Quaerat itaque et quasi qui nemo sed. Natus s');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (21, 'Qui voluptate autem repudiandae veniam quibus');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (22, 'Quae corrupti doloremque quos suscipit dolore');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (23, 'Nulla consequatur qui soluta et perferendis. ');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (24, 'Cumque aut molestiae fuga laudantium. Aperiam');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (25, 'Tempore praesentium quo labore facere nihil o');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (26, 'Ut numquam voluptatem est autem non. Est modi');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (27, 'Dicta autem itaque odio temporibus. Animi qua');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (28, 'Consectetur sint illum pariatur fuga quis est');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (29, 'Atque eos consectetur ipsam excepturi consect');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (30, 'Voluptatem et unde natus modi sed eligendi id');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (31, 'Laudantium sequi exercitationem corporis. Tem');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (32, 'Quia modi voluptatem ipsum nostrum pariatur. ');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (33, 'Corrupti atque autem debitis et et dolore. Vo');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (34, 'Possimus in tempore atque dolore doloribus. D');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (35, 'Id dolores aliquam qui asperiores nesciunt. Q');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (36, 'Libero omnis quidem nulla aliquam illo. Neque');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (37, 'Repellat dolores eius debitis voluptatem. Qui');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (38, 'Tempora debitis enim consequatur commodi. Del');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (39, 'Laboriosam alias rerum eveniet blanditiis vel');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (40, 'Nostrum libero placeat consequatur et quam qu');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (41, 'Et aut qui suscipit. Autem eligendi alias est');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (42, 'Laudantium et atque mollitia vitae qui. Incid');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (43, 'Aliquam et molestiae ducimus tempora. Itaque ');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (44, 'Ad hic tenetur et voluptatum provident et. Ve');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (45, 'In temporibus ratione velit fugiat non labore');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (46, 'In accusantium eum sed. Molestiae consequatur');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (47, 'Doloremque fugiat eaque impedit quis ullam du');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (48, 'Quod nam sit libero sunt ipsa nihil. Eaque eu');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (49, 'Quibusdam fugiat in fugit et. Dolore facilis ');
INSERT INTO `PURCHASE_STATUS_CODES` (`purchase_status_code`, `description`) VALUES (50, 'Quis veritatis voluptatem distinctio dolor re');


#
# TABLE STRUCTURE FOR: TRANSACTION_TYPES
#

DROP TABLE IF EXISTS `TRANSACTION_TYPES`;

CREATE TABLE `TRANSACTION_TYPES` (
  `transaction_type_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (1, 'Earum quisquam odit minus voluptatum consecte');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (2, 'Et atque error est placeat eos. Aut accusamus');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (3, 'Quo qui deleniti vel debitis et praesentium a');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (4, 'Fugit cumque voluptate corporis iste laborios');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (5, 'Exercitationem in voluptas maxime ut providen');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (6, 'Adipisci cupiditate aut sint dicta enim iste.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (7, 'Quia aliquid quia asperiores incidunt molesti');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (8, 'Et hic unde sint tempore omnis eum et. Conseq');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (9, 'Ut optio ad et aut et. Porro fugit laudantium');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (10, 'Consectetur dolores et tempore fugiat eos ut.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (11, 'Eum pariatur quidem labore recusandae soluta ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (12, 'Quae omnis tenetur iste aspernatur. Deserunt ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (13, 'Sint in animi distinctio ut. Recusandae nam a');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (14, 'Quidem impedit aut placeat est vel ratione di');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (15, 'Nulla sunt ut itaque laboriosam omnis. Quae d');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (16, 'Natus est ut esse quia nulla sunt. Explicabo ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (17, 'Voluptatem ratione fugit voluptas nihil lauda');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (18, 'Eum iusto iusto fugiat quidem cumque. Maxime ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (19, 'Natus officiis nostrum dicta libero. Qui cons');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (20, 'Eaque mollitia autem aut omnis cupiditate cul');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (21, 'Consequuntur error aperiam vel aperiam aut qu');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (22, 'Et animi aut culpa. Quo omnis ea voluptas pos');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (23, 'Est et quibusdam qui quam deserunt ut dolores');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (24, 'Dolorum quidem et ea expedita ea et sit. Dolo');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (25, 'Consequatur nemo sapiente fugit. Consequuntur');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (26, 'Et error quos odit sint et voluptatem. Quo of');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (27, 'Eum et iste debitis assumenda harum. Ut nesci');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (28, 'Repellat voluptas sit enim ipsum velit suscip');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (29, 'Reprehenderit commodi possimus eius ut et ull');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (30, 'Deleniti sunt totam dolores nihil soluta atqu');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (31, 'Dolorum fugiat perspiciatis alias architecto ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (32, 'Ea molestias sed consectetur consequatur quis');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (33, 'Est quis perferendis et nisi possimus tempora');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (34, 'Eos suscipit veritatis molestiae facere. Mole');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (35, 'Commodi placeat ut dignissimos sunt quia sed ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (36, 'Impedit placeat nobis quia et commodi volupta');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (37, 'Similique animi veritatis veniam qui est nost');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (38, 'Optio molestiae eum aut assumenda architecto.');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (39, 'Fugit aspernatur eos ullam quo ea nesciunt mo');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (40, 'Saepe temporibus voluptates dolorem fuga nequ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (41, 'Ea iste dolor aspernatur iure debitis. Ut qui');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (42, 'Eos eligendi dolores animi molestias eveniet ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (43, 'Quo aut odio eos dolor. Ea fugiat ducimus qui');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (44, 'Tenetur possimus corporis vitae totam. Rerum ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (45, 'Eligendi cumque libero odio iste omnis aut. Q');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (46, 'Quo error explicabo ut exercitationem. Qui to');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (47, 'Dignissimos est autem sint. Fugit voluptates ');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (48, 'Animi totam consectetur qui mollitia hic omni');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (49, 'Quis est laborum repudiandae maxime. Omnis eo');
INSERT INTO `TRANSACTION_TYPES` (`transaction_type_code`, `description`) VALUES (50, 'Reiciendis veritatis enim ut nobis inventore.');


