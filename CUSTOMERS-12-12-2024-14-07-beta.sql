/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CUSTOMERS`
--

DROP TABLE IF EXISTS `CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMERS`
--

LOCK TABLES `CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `CUSTOMERS` DISABLE KEYS */;
INSERT INTO `CUSTOMERS` VALUES
(1,'Fabiola','Mitchell','214 Kitty Lights\nLake Hertha, MI 45219','038.735.8381',NULL,'vincent.greenfelder@example.org',NULL),
(2,'Destiny','Price','5941 Devonte Row Apt. 895\nLake Ladarius, NC 9','(513)404-3178',NULL,'josiane.lind@example.com',NULL),
(3,'Shanon','Feil','31415 Letha Ramp Apt. 891\nBartonville, MD 348','04513098121',NULL,'stacey.kessler@example.net',NULL),
(4,'Tiana','Johnson','9705 Donnell Inlet Apt. 319\nWardchester, NH 5','102.459.5323',NULL,'lance60@example.com',NULL),
(5,'Elsie','Medhurst','2271 Mraz Common Suite 978\nFeilview, LA 90637','339.922.4047',NULL,'brayan05@example.net',NULL),
(6,'Ardella','Emard','5800 Lebsack Point Suite 241\nVandervortfurt, ','1-162-678-7214x6396',NULL,'lemke.athena@example.com',NULL),
(7,'Vada','Wyman','1991 Franz Circles\nSchmittmouth, CT 45881','1-663-212-7887x1474',NULL,'bskiles@example.org',NULL),
(8,'Anais','Moore','119 Shanie Point Apt. 035\nLake Nickfort, PA 7','(112)162-3759x092',NULL,'bernier.golda@example.com',NULL),
(9,'Gertrude','Heaney','27634 Wyman Drives\nWardtown, DE 63226-1439','521-973-9139',NULL,'glockman@example.net',NULL),
(10,'Tianna','Carter','1180 Destiny Isle\nJordyport, AK 53569','1-689-536-2279x0549',NULL,'raul80@example.com',NULL),
(11,'Catherine','Fay','93280 Dorian Cliff Apt. 771\nWest Kayli, SD 23','513-969-9949',NULL,'mona87@example.com',NULL),
(12,'Nora','King','3588 Harmony Shores\nKosstown, AZ 45409','1-117-932-3082',NULL,'loy67@example.org',NULL),
(13,'Jazmyne','Gibson','6919 Sporer Crest Apt. 718\nWest Antonetta, WI','545-001-2960x31906',NULL,'deonte.bartell@example.org',NULL),
(14,'Dasia','Gleichner','2928 Maud Cliff\nLemkeberg, ND 06462','368.744.1526x9094',NULL,'eabshire@example.org',NULL),
(15,'Ressie','Gutkowski','68323 Pietro Mountain Suite 710\nWest Lorenza,','1-628-017-1736',NULL,'catherine.fay@example.org',NULL),
(16,'Roberta','Kessler','8879 Heathcote Coves Apt. 550\nWest Louie, RI ','(189)752-1960x3463',NULL,'roger58@example.com',NULL),
(17,'Baby','Kirlin','7523 Braden Prairie Apt. 792\nMelliefort, GA 0','600-442-8586x85505',NULL,'arath@example.org',NULL),
(18,'Pinkie','Brown','632 Harry Mountain\nOttisside, KY 94682-8456','643-172-8845x729',NULL,'kassulke.sheldon@example.com',NULL),
(19,'Kaylie','Crona','57836 Kris Camp Suite 935\nRunolfsdottirville,','031-362-2925',NULL,'emely69@example.org',NULL),
(20,'Shany','Quigley','82118 Emil Field\nAmeliaton, MD 34426-0257','919.370.1193x28355',NULL,'evelyn.auer@example.com',NULL),
(21,'Hailee','Lind','982 Raegan Stravenue\nSouth Robert, LA 93569-1','06562898928',NULL,'shanie73@example.net',NULL),
(22,'Ora','Hessel','0141 Israel Divide Apt. 219\nNorth Agnes, DE 6','097.791.3955x7585',NULL,'doyle.tremblay@example.org',NULL),
(23,'Filomena','Gleason','524 Felix Brooks\nLuechester, MN 39404-9560','+55(9)4431296076',NULL,'lillian.rippin@example.com',NULL),
(24,'Amie','Predovic','366 Senger Field\nDaphnefort, TX 77782-2322','+82(0)2144872380',NULL,'zkoch@example.net',NULL),
(25,'Natalia','Marquardt','347 Pagac Tunnel Apt. 057\nNew Walker, OK 0760','(112)321-5556x9454',NULL,'zbosco@example.net',NULL),
(26,'Nora','Klocko','44656 Leannon Springs Apt. 473\nNew Marianne, ','02613093972',NULL,'franecki.lorenz@example.net',NULL),
(27,'Citlalli','Volkman','342 Moen Alley Apt. 467\nAbbottside, OR 43839','1-481-327-6540',NULL,'juana.conroy@example.com',NULL),
(28,'Vida','Hirthe','1378 Estevan Turnpike\nMurrayton, UT 00232-386','904-665-3886x337',NULL,'erempel@example.net',NULL),
(29,'Alverta','Kuhic','9854 Schuster Oval Suite 620\nHannahmouth, DC ','(436)077-9384x88489',NULL,'penelope.lebsack@example.com',NULL),
(30,'Zoila','Harris','197 O\'Hara Alley Suite 544\nNorth Brendan, AK ','(071)137-3228',NULL,'reta.heller@example.net',NULL),
(31,'Mary','Mueller','937 Pfannerstill Ridge Apt. 525\nStanfordmouth','360.492.1938x2296',NULL,'cole.buford@example.org',NULL),
(32,'Janis','Armstrong','94455 Arvel Locks\nWest Shemarton, WV 84530','(541)321-3244x492',NULL,'bettye.reilly@example.org',NULL),
(33,'Eugenia','Hudson','931 Fletcher Shoal\nErdmantown, UT 51573','(965)462-4823',NULL,'tlubowitz@example.org',NULL),
(34,'Kimberly','DuBuque','460 Gerlach Meadows Suite 638\nJedhaven, MO 44','(451)455-9334x057',NULL,'cole.dasia@example.org',NULL),
(35,'Rosalyn','Greenholt','126 Spencer Locks Apt. 888\nAlisonberg, MS 891','(133)551-5364x4739',NULL,'white.olga@example.net',NULL),
(36,'Holly','Bode','839 Matilde Hill\nSabinaberg, HI 79869','1-867-630-5904',NULL,'deanna92@example.org',NULL),
(37,'Jessica','Prohaska','347 Lowe Run\nWinnifredchester, WA 10331-5143','(939)412-0875x81744',NULL,'chadrick77@example.org',NULL),
(38,'Alexandra','Mertz','242 Quentin Stream\nNorth Danyka, ID 17631-466','(689)838-9605x875',NULL,'lelia.koepp@example.org',NULL),
(39,'Viola','Funk','24916 Donato Inlet Suite 013\nNorbertofort, LA','(546)880-4850x598',NULL,'yhansen@example.org',NULL),
(40,'Zena','Grant','11489 Runte Plains\nBayerfort, MO 65150','580-740-2465x9924',NULL,'hudson.destinee@example.com',NULL),
(41,'Jane','Rau','47485 Tillman Corners\nWilhelminetown, DC 8787','1-553-101-0104',NULL,'wschroeder@example.com',NULL),
(42,'Ardella','Farrell','9400 Mante Unions Suite 026\nSouth Jakeville, ','080.619.6218x04013',NULL,'nconsidine@example.net',NULL),
(43,'Alivia','Collins','6405 Metz Tunnel Apt. 978\nEdythestad, TX 2589','(695)921-2803',NULL,'reinger.kian@example.org',NULL),
(44,'Maribel','Cormier','72749 Colin Fields\nDorotheachester, DC 93122-','279.268.5643x04537',NULL,'bernard47@example.net',NULL),
(45,'Malinda','Mueller','85854 Janick Lodge Suite 856\nPort Breannashir','1-641-887-7048x537',NULL,'aabshire@example.net',NULL),
(46,'Norene','Streich','2911 Leila Path Apt. 386\nSouth Bradchester, A','205.895.1325x76583',NULL,'novella20@example.org',NULL),
(47,'Eva','Lowe','37264 Hickle Drive Suite 967\nPort Luz, NC 504','343.970.3570',NULL,'brent.nader@example.org',NULL),
(48,'Maudie','Moore','460 Fadel Alley\nNorth Floridaport, UT 69961','+64(5)7411803631',NULL,'nhettinger@example.net',NULL),
(49,'Carole','Goodwin','202 Prince Stravenue Apt. 194\nNevaville, MN 7','+31(6)1959417606',NULL,'vallie.schmeler@example.net',NULL),
(50,'Josiane','Okuneva','04660 Roma Road\nSouth Bradford, NV 69034','(906)298-6754',NULL,'abelardo59@example.com',NULL);
/*!40000 ALTER TABLE `CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-12 14:07:32
