#
# TABLE STRUCTURE FOR: ACCOUNTS
#

DROP TABLE IF EXISTS `ACCOUNTS`;

CREATE TABLE `ACCOUNTS` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(45) NOT NULL,
  `payment_method_code` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `fk_ACCOUNTS_PAYMENT_METHODS1_idx` (`payment_method_code`),
  KEY `fk_ACCOUNTS_CUSTOMERS1_idx` (`customer_id`),
  CONSTRAINT `fk_ACCOUNTS_CUSTOMERS1` FOREIGN KEY (`customer_id`) REFERENCES `CUSTOMERS` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ACCOUNTS_PAYMENT_METHODS1` FOREIGN KEY (`payment_method_code`) REFERENCES `PAYMENT_METHODS` (`payment_method_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: CUSTOMERS
#

DROP TABLE IF EXISTS `CUSTOMERS`;

CREATE TABLE `CUSTOMERS` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `cell_mobile` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) NOT NULL,
  `other_details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `CUSTOMERS` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `cell_mobile`, `email_address`, `other_details`) VALUES (0, 'Ilene', 'Mayert', '274 Hazel Burgs\nSteubermouth, MD 84921-0993', '(278)042-5484', NULL, 'roger43@example.com', NULL);


#
# TABLE STRUCTURE FOR: CUSTOMER_ITEM_PURCHASES
#

DROP TABLE IF EXISTS `CUSTOMER_ITEM_PURCHASES`;

CREATE TABLE `CUSTOMER_ITEM_PURCHASES` (
  `purchase_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: CUSTOMER_ITEM_RENTALS
#

DROP TABLE IF EXISTS `CUSTOMER_ITEM_RENTALS`;

CREATE TABLE `CUSTOMER_ITEM_RENTALS` (
  `item_rental_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: FINANCIAL_TRANSACTIONS
#

DROP TABLE IF EXISTS `FINANCIAL_TRANSACTIONS`;

CREATE TABLE `FINANCIAL_TRANSACTIONS` (
  `transaction_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: INVENTORY_ITEMS
#

DROP TABLE IF EXISTS `INVENTORY_ITEMS`;

CREATE TABLE `INVENTORY_ITEMS` (
  `item_id` int(11) NOT NULL,
  `item_type_code` int(11) DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `number_in_stocks` int(11) NOT NULL,
  `rental_sale_both` enum('rental','sale','both') NOT NULL,
  `rental_daily_rate` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_INVENTORY_ITEMS_INVENTORY_ITEM_TYPES1_idx` (`item_type_code`),
  CONSTRAINT `fk_INVENTORY_ITEMS_INVENTORY_ITEM_TYPES1` FOREIGN KEY (`item_type_code`) REFERENCES `INVENTORY_ITEM_TYPES` (`item_type_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: INVENTORY_ITEM_TYPES
#

DROP TABLE IF EXISTS `INVENTORY_ITEM_TYPES`;

CREATE TABLE `INVENTORY_ITEM_TYPES` (
  `item_type_code` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`item_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: PAYMENT_METHODS
#

DROP TABLE IF EXISTS `PAYMENT_METHODS`;

CREATE TABLE `PAYMENT_METHODS` (
  `payment_method_code` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `PAYMENT_METHODS` (`payment_method_code`, `description`) VALUES (0, 'voluptatem');


#
# TABLE STRUCTURE FOR: PURCHASE_STATUS_CODES
#

DROP TABLE IF EXISTS `PURCHASE_STATUS_CODES`;

CREATE TABLE `PURCHASE_STATUS_CODES` (
  `purchase_status_code` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`purchase_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

#
# TABLE STRUCTURE FOR: TRANSACTION_TYPES
#

DROP TABLE IF EXISTS `TRANSACTION_TYPES`;

CREATE TABLE `TRANSACTION_TYPES` (
  `transaction_type_code` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

