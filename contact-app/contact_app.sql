-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: contact_app
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_user_id_foreign` (`user_id`),
  CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Blanda Inc','185 Beier Common Suite 850\nSchadenville, AR 44590-0506','stracke.com','marcelo.grant@yahoo.com','2022-07-10 05:11:26','2022-07-10 05:11:26',1),(2,'Pouros, Erdman and Erdman','4504 Trinity Ramp\nLoweview, VT 46220','towne.org','ebailey@gmail.com','2022-07-10 05:11:29','2022-07-10 05:11:29',2),(3,'Witting, Harris and Cormier','346 Christ Estates\nTomasfort, MT 39546-4901','lockman.com','merle12@yahoo.com','2022-07-10 05:11:30','2022-07-10 05:11:30',3),(4,'Kreiger-Ziemann','589 Zulauf Route\nVonRuedenstad, NM 32695-5730','rowe.com','conroy.carmen@swift.biz','2022-07-10 05:11:31','2022-07-10 05:11:31',4),(5,'Koss and Sons','435 Pietro Shoals\nFayton, WY 38272','kuphal.info','jonatan.herzog@hotmail.com','2022-07-10 05:11:31','2022-07-10 05:11:31',5),(6,'Crona, Hills and Kilback','619 Rolfson Drives Apt. 721\nRoderickstad, AR 36154','bins.com','grant90@cassin.com','2022-07-10 05:11:32','2022-07-10 05:11:32',6),(7,'Fahey-Jacobs','6864 Virginie Locks\nLake Chestertown, SC 88707','walter.com','qharvey@zboncak.com','2022-07-10 05:11:32','2022-07-10 05:11:32',7),(8,'Ziemann-Corkery','3791 Auer Plaza Apt. 786\nNorth Jamaal, FL 00854','strosin.net','wmarvin@gmail.com','2022-07-10 05:11:33','2022-07-10 05:11:33',8),(9,'Abbott Group','39507 Kerluke Groves Apt. 536\nSouth Golden, LA 86990','block.org','jo34@swift.com','2022-07-10 05:11:33','2022-07-10 05:11:33',9),(10,'Leannon Inc','93345 Davion Wells\nNew Donnell, WI 87628-3817','goodwin.com','kiley02@kuhn.org','2022-07-10 05:11:35','2022-07-10 05:11:35',10);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_company_id_foreign` (`company_id`),
  KEY `contacts_user_id_foreign` (`user_id`),
  CONSTRAINT `contacts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Lloyd','Weimann','+16027087637','jovany.hackett@gmail.com','1708 Cathy Walks\nSouth Calistastad, TN 59044-8796','2022-07-10 05:11:27','2022-07-10 05:11:27',1,11),(2,'Kylee','Barrows','+14429557411','leann.price@windler.com','903 Enola Lake Apt. 588\nAugustaton, MA 68218-7718','2022-07-10 05:11:28','2022-07-10 05:11:28',1,12),(3,'Bethany','Prohaska','+1 (540) 587-0877','paxton.kerluke@yahoo.com','48352 Nikolaus Extensions Suite 405\nAltenwerthtown, NC 88034','2022-07-10 05:11:29','2022-07-10 05:11:29',1,13),(4,'Gunner','Swift','314-304-8100','zula33@pacocha.info','510 Abner Union\nLake Emmanuel, UT 80918-9503','2022-07-10 05:11:29','2022-07-10 05:11:29',1,14),(5,'Kristopher','Kris','541.832.6610','noe54@gmail.com','133 Harris Summit Suite 776\nWest Idellberg, OH 93182-2102','2022-07-10 05:11:29','2022-07-10 05:11:29',1,15),(6,'Turner','Koss','1-820-735-6538','mckayla47@yahoo.com','836 Fritsch Avenue Apt. 791\nSouth Albertoside, AK 92186-1882','2022-07-10 05:11:30','2022-07-10 05:11:30',2,16),(7,'Alberto','Lind','(774) 846-6610','ygaylord@yahoo.com','606 Maddison Cliffs\nKarsonfurt, AK 49790-0576','2022-07-10 05:11:30','2022-07-10 05:11:30',2,17),(8,'Anthony','Bauch','+1 (270) 565-7565','daniella37@lindgren.com','302 Chandler Parks Apt. 124\nLake Sheabury, AL 14640-8876','2022-07-10 05:11:30','2022-07-10 05:11:30',2,18),(9,'Mozelle','Auer','740.846.1963','misty96@hotmail.com','88358 Houston Port\nNorth Sasha, NY 60430','2022-07-10 05:11:30','2022-07-10 05:11:30',2,19),(10,'Tod','Bosco','+1.820.278.7249','trisha.rempel@stanton.com','8496 Valerie Loaf Apt. 267\nNorth Darian, AZ 44883-2309','2022-07-10 05:11:30','2022-07-10 05:11:30',2,20),(11,'Stan','Hagenes','+1 (203) 614-8188','juston.graham@gmail.com','47864 Faustino Street Suite 149\nStoltenbergshire, MI 95953','2022-07-10 05:11:31','2022-07-10 05:11:31',3,21),(12,'Alberto','Aufderhar','458-899-9760','vromaguera@beahan.com','2309 Jayson Pass Apt. 411\nNew Annamaeburgh, AZ 58933','2022-07-10 05:11:31','2022-07-10 05:11:31',3,22),(13,'Alexanne','Schneider','+1-972-639-3650','aratke@armstrong.com','69376 Kassulke Lakes\nBotsfordburgh, UT 31871','2022-07-10 05:11:31','2022-07-10 05:11:31',3,23),(14,'Evangeline','Bailey','+1.425.817.6501','dsteuber@yahoo.com','19872 Dino Garden Apt. 149\nSteuberbury, MN 10941','2022-07-10 05:11:31','2022-07-10 05:11:31',3,24),(15,'Coty','Pfeffer','+1.616.419.9893','swyman@greenholt.info','9372 Ullrich Prairie Apt. 420\nEast Danyka, AR 15159','2022-07-10 05:11:31','2022-07-10 05:11:31',3,25),(16,'Vanessa','Ledner','1-561-340-1106','syble46@ryan.biz','3103 Johathan Walks Suite 226\nPort Garthshire, HI 58786-9780','2022-07-10 05:11:31','2022-07-10 05:11:31',4,26),(17,'Ardith','Parisian','+16068829628','dimitri89@yahoo.com','84706 Langosh Station Suite 300\nLake Sonia, ME 19731-1421','2022-07-10 05:11:31','2022-07-10 05:11:31',4,27),(18,'Jasper','Rowe','+1-817-296-0023','fdickens@hotmail.com','871 Bayer Estate Apt. 471\nNew Bridgetteton, DC 31839','2022-07-10 05:11:31','2022-07-10 05:11:31',4,28),(19,'Monroe','Sanford','1-364-336-6037','rachelle.jones@stiedemann.com','978 Sanford Neck Suite 102\nWest Malvinabury, DC 47360-5952','2022-07-10 05:11:31','2022-07-10 05:11:31',4,29),(20,'Octavia','Rath','1-985-446-8622','elza.borer@yahoo.com','19582 Margie Causeway\nBrionnatown, WI 62041-6285','2022-07-10 05:11:31','2022-07-10 05:11:31',4,30),(21,'Hillard','Mosciski','754-679-0934','neva.gulgowski@waters.net','56324 Kutch Mill Apt. 753\nLake Casper, TN 30152','2022-07-10 05:11:32','2022-07-10 05:11:32',5,31),(22,'Bennett','Treutel','+15853333045','chance71@beahan.net','582 Desmond Haven\nMoenfort, LA 97005-9657','2022-07-10 05:11:32','2022-07-10 05:11:32',5,32),(23,'Ila','Lowe','1-865-787-8303','eheathcote@hand.com','5703 Franecki Shoals Apt. 413\nPort Kennith, WV 60781-5989','2022-07-10 05:11:32','2022-07-10 05:11:32',5,33),(24,'Conrad','Roob','+1-726-465-6014','lynn.heathcote@yahoo.com','34054 Lakin Fork\nCristburgh, CT 70383-4676','2022-07-10 05:11:32','2022-07-10 05:11:32',5,34),(25,'Mattie','Champlin','+1-762-344-9770','alice.dietrich@crona.com','3452 Nelda Rue Suite 137\nSwiftshire, IL 12418','2022-07-10 05:11:32','2022-07-10 05:11:32',5,35),(26,'Violet','Willms','(279) 582-6059','elda92@yahoo.com','450 Letha Fork Suite 906\nGreenholtborough, NC 71273-2599','2022-07-10 05:11:32','2022-07-10 05:11:32',6,36),(27,'Meda','Volkman','+1.361.416.1531','treutel.jo@medhurst.org','19793 Stokes Canyon\nEast Mitchellmouth, TN 85554-2903','2022-07-10 05:11:32','2022-07-10 05:11:32',6,37),(28,'Clinton','Kub','+1-610-330-4179','fanny77@romaguera.org','23364 Friedrich Lodge Suite 528\nTedmouth, WA 68575','2022-07-10 05:11:32','2022-07-10 05:11:32',6,38),(29,'Wellington','Bashirian','+1 (989) 727-9712','jewell.lemke@yahoo.com','90308 Trantow Unions\nKrystinaburgh, MT 52516-0437','2022-07-10 05:11:32','2022-07-10 05:11:32',6,39),(30,'Lyda','White','(856) 649-4169','ralph.yundt@yahoo.com','12647 Violette Green Suite 608\nAlainaside, ID 48486-0931','2022-07-10 05:11:32','2022-07-10 05:11:32',6,40),(31,'Gianni','Grady','1-985-923-2132','christophe.schneider@gmail.com','794 Nienow Corners Suite 294\nPort Alexandrea, ME 49224','2022-07-10 05:11:33','2022-07-10 05:11:33',7,41),(32,'Nicola','Gottlieb','269.494.1670','zechariah.jacobi@schmeler.com','1999 Kristopher Mews\nLeannonland, IA 91593','2022-07-10 05:11:33','2022-07-10 05:11:33',7,42),(33,'Madyson','Jast','+18436446000','xarmstrong@okuneva.com','399 Von Hill Apt. 258\nTristianville, VT 76665','2022-07-10 05:11:33','2022-07-10 05:11:33',7,43),(34,'Emily','Jones','+1-580-472-2625','johnston.natasha@hotmail.com','29060 Kaya Lights\nEdgarville, IN 33693-8108','2022-07-10 05:11:33','2022-07-10 05:11:33',7,44),(35,'Arden','Brakus','630.536.2477','tillman.raleigh@gmail.com','83377 Margaretta Corner Apt. 455\nBartonstad, TX 45854-9588','2022-07-10 05:11:33','2022-07-10 05:11:33',7,45),(36,'Rylee','Mosciski','(380) 916-1013','doris.lang@adams.net','789 Missouri Rest Suite 832\nLake Conradstad, AL 53659-6736','2022-07-10 05:11:33','2022-07-10 05:11:33',8,46),(37,'Paris','Boyle','+1-562-585-6725','vquigley@hotmail.com','6163 Erna Harbor Apt. 971\nFaheyfort, AL 06275-3059','2022-07-10 05:11:33','2022-07-10 05:11:33',8,47),(38,'Myra','Kilback','(908) 303-8860','jyost@hotmail.com','2918 Orn Cliff\nNorth Mitchelview, MD 94080','2022-07-10 05:11:33','2022-07-10 05:11:33',8,48),(39,'Georgianna','Fritsch','785-783-6178','daren.senger@beier.biz','17133 Marcelina Branch Suite 730\nDeckowfurt, ID 44182','2022-07-10 05:11:33','2022-07-10 05:11:33',8,49),(40,'Domenick','Rogahn','(878) 668-1248','okeefe.jennifer@heidenreich.org','9685 Shields Locks Apt. 390\nRozellafort, MN 83324','2022-07-10 05:11:33','2022-07-10 05:11:33',8,50),(41,'Halie','Kihn','+12623176281','bwest@hotmail.com','61763 Adam Neck\nNew Judd, NY 41032','2022-07-10 05:11:35','2022-07-10 05:11:35',9,51),(42,'Zetta','Hermann','(479) 369-6988','iconn@hotmail.com','185 Roob Spring Apt. 490\nKiehnhaven, CO 98827-1098','2022-07-10 05:11:35','2022-07-10 05:11:35',9,52),(43,'Greyson','Rogahn','(360) 878-7287','sonia67@yahoo.com','11560 Helene Land Suite 384\nOsinskimouth, ME 71252','2022-07-10 05:11:35','2022-07-10 05:11:35',9,53),(44,'Berneice','Hagenes','+1-618-987-0368','tyrell61@oberbrunner.com','6671 VonRueden Island\nWest Eudoraport, SD 73091','2022-07-10 05:11:35','2022-07-10 05:11:35',9,54),(45,'Augusta','Will','+1.629.932.0329','kasandra.homenick@hills.com','442 Lueilwitz Camp\nJacyntheland, MI 82884','2022-07-10 05:11:35','2022-07-10 05:11:35',9,55),(46,'Hayden','Durgan','689.301.7004','bartoletti.ally@gmail.com','214 Crist Mills\nVonRuedenchester, GA 86675-5399','2022-07-10 05:11:35','2022-07-10 05:11:35',10,56),(47,'Sherman','Gutkowski','+1.231.365.7535','armstrong.norbert@hickle.biz','910 Weimann Creek Suite 216\nMadonnastad, ND 24876-6085','2022-07-10 05:11:35','2022-07-10 05:11:35',10,57),(48,'Francesca','Weber','872.771.1888','delia.rowe@hotmail.com','729 Swaniawski Junction\nGagebury, NM 46399','2022-07-10 05:11:35','2022-07-10 05:11:35',10,58),(49,'Theo','Paucek','434-231-0678','mmarquardt@hotmail.com','848 Muriel Ways Apt. 121\nNew Neilstad, WV 84964-5833','2022-07-10 05:11:35','2022-07-10 05:11:35',10,59),(50,'Lee','Yundt','+1 (650) 455-9888','eveline.dare@gmail.com','61628 Vincenza Crest\nPeggieland, NV 59562','2022-07-10 05:11:35','2022-07-10 05:11:35',10,60);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_06_23_174621_create_companies_table',1),(6,'2022_06_23_191545_create_contacts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maurice','Keebler','Hills LLC','Totam quaerat dicta aspernatur numquam vero. Repudiandae minima non consequatur quaerat omnis. Harum velit omnis distinctio porro unde hic eaque. Eum est accusamus consequatur suscipit.',NULL,'hwhite@example.com','2022-07-10 05:11:25','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QJbQEDD6gk','2022-07-10 05:11:25','2022-07-10 05:11:25'),(2,'Mohammed','Kshlerin','Wiegand-Wisoky','Voluptas iste dolores quae dolores quam distinctio fugiat. Ex corporis quas blanditiis dignissimos. Quasi voluptas illo mollitia inventore alias accusantium. Non delectus aut quod non vitae.',NULL,'kdurgan@example.net','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OaO1rxpGfR','2022-07-10 05:11:26','2022-07-10 05:11:26'),(3,'Einar','Daniel','Haley Ltd','Illum perferendis ipsum enim quod quo assumenda. Cupiditate nesciunt laudantium odit sint soluta quis rerum. Voluptatem reprehenderit id eligendi molestiae aut consequatur.',NULL,'cgleason@example.net','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VToS53M1Qw','2022-07-10 05:11:26','2022-07-10 05:11:26'),(4,'Baron','Koch','Bahringer LLC','Veniam non laboriosam architecto magni sed deserunt occaecati molestiae. Laudantium dolores sed nulla ad.',NULL,'sleannon@example.com','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zrba7Bx1no','2022-07-10 05:11:26','2022-07-10 05:11:26'),(5,'Mortimer','West','Parisian-Kuphal','Et animi nostrum aliquam qui soluta facere quibusdam. Veniam eveniet distinctio vel dolorum porro sequi et. Quos qui impedit ullam dolores alias quo tempora.',NULL,'slebsack@example.com','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','NkIrfnqhrm','2022-07-10 05:11:26','2022-07-10 05:11:26'),(6,'Christine','Johnson','O\'Connell Ltd','Totam voluptas et sequi. Voluptas ab sunt voluptas a delectus soluta. Voluptatum optio blanditiis quibusdam error perspiciatis sint reiciendis. Et qui libero ex. Eveniet voluptatem et quia.',NULL,'lessie17@example.com','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Q80cLzjiio','2022-07-10 05:11:26','2022-07-10 05:11:26'),(7,'Heather','Bednar','Halvorson-Mueller','Possimus inventore voluptatem illum. Voluptates tenetur nostrum autem. Rerum dicta eligendi est culpa animi.',NULL,'sincere.nicolas@example.com','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','k5mSFgnGV9','2022-07-10 05:11:26','2022-07-10 05:11:26'),(8,'Lester','Wolf','Feil-Lubowitz','Aliquid ratione placeat ipsam et facere fugiat. Quia reiciendis rem ut non aliquid. Sed culpa et sit doloribus sit eveniet distinctio laudantium. Provident consequatur quia dolorem possimus.',NULL,'lloyd.boyle@example.net','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ONvh6jPgs7','2022-07-10 05:11:26','2022-07-10 05:11:26'),(9,'Ella','Bogan','Klein, Bechtelar and Blanda','Soluta dignissimos veritatis voluptas vel. Nam a aliquam harum distinctio. Odio et sunt nihil ut explicabo autem. Omnis et vel ducimus vel.',NULL,'zoila.greenfelder@example.org','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TXVZcrNIe4','2022-07-10 05:11:26','2022-07-10 05:11:26'),(10,'Phyllis','Okuneva','Keeling, Sauer and Quigley','In voluptatem nulla blanditiis minima praesentium qui. Odio quasi hic ratione omnis. Soluta eaque sint porro vero explicabo facere voluptate. Explicabo eius ut libero sunt.',NULL,'mueller.lloyd@example.org','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WzhibWqA7h','2022-07-10 05:11:26','2022-07-10 05:11:26'),(11,'Donnie','Barrows','Nolan Group','Pariatur maiores fugiat sunt placeat iste voluptatum. Quibusdam laudantium voluptates inventore pariatur ea ex.',NULL,'nikki.renner@example.com','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gNdeRlwwJ9','2022-07-10 05:11:26','2022-07-10 05:11:26'),(12,'Cleve','O\'Reilly','Yundt, Bruen and Tromp','Voluptas quia pariatur reiciendis temporibus qui quae delectus. Perferendis officia facilis error omnis accusantium. Porro architecto mollitia cupiditate harum ex ad molestias.',NULL,'gcarter@example.com','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uyvqO3b9Jc','2022-07-10 05:11:26','2022-07-10 05:11:26'),(13,'Alexandra','Little','Kreiger-Robel','Numquam reiciendis ut maiores accusantium. Dolores illo quam voluptas dolor. Dolorem quibusdam commodi dicta fugiat. Eligendi non sed doloremque est.',NULL,'felicia86@example.org','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zWaKUmCWXz','2022-07-10 05:11:26','2022-07-10 05:11:26'),(14,'Rafaela','Gleichner','Parker-Beer','Voluptas reiciendis ut ullam velit rerum autem. Rerum aut totam aut eos. Quam dolore minus harum amet molestiae. Sit esse dicta laudantium non sed magnam qui est.',NULL,'dach.twila@example.net','2022-07-10 05:11:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6uiE8s1kYP','2022-07-10 05:11:26','2022-07-10 05:11:26'),(15,'Lilian','Donnelly','Lesch and Sons','Dolore dolore itaque est maiores. Minima aut ut pariatur. Praesentium iure aut et temporibus in nemo iste.',NULL,'jarrett29@example.net','2022-07-10 05:11:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3RMHbsdTkf','2022-07-10 05:11:27','2022-07-10 05:11:27'),(16,'Evelyn','Bosco','Nader, Stiedemann and Cruickshank','Dolor alias sunt tenetur adipisci nam dicta doloribus. Dolor beatae totam necessitatibus.',NULL,'dlittle@example.org','2022-07-10 05:11:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mkz0fnxAZs','2022-07-10 05:11:29','2022-07-10 05:11:29'),(17,'Frida','Rippin','Towne Ltd','Consequatur ea at placeat corporis est. Aut ducimus velit qui earum dolorem inventore. Quos molestias odio officiis eaque.',NULL,'mcclure.jade@example.org','2022-07-10 05:11:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Hw6PeIQpuf','2022-07-10 05:11:29','2022-07-10 05:11:29'),(18,'Nikki','Von','Quigley-Reynolds','Est dolor id aut adipisci consectetur. Non labore ducimus voluptas earum. Incidunt qui aut sit soluta temporibus. Sint esse quibusdam officia omnis dolor.',NULL,'hoppe.agnes@example.net','2022-07-10 05:11:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nC51PIdyvH','2022-07-10 05:11:29','2022-07-10 05:11:29'),(19,'Rosella','Kautzer','Hessel, Senger and Mante','Suscipit voluptas aut voluptas occaecati ipsum. Et dolorem perspiciatis laboriosam voluptatem tempore ut. Eveniet architecto sit quo est. Enim numquam at quas similique delectus labore.',NULL,'mpfeffer@example.net','2022-07-10 05:11:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LcMLD2r5jW','2022-07-10 05:11:30','2022-07-10 05:11:30'),(20,'Roslyn','Little','Sporer Inc','Ipsam ipsam exercitationem atque nesciunt nihil enim consequatur. Quo voluptas exercitationem harum porro aut quisquam quisquam. Expedita suscipit officiis sint labore enim quam ullam.',NULL,'anastasia25@example.org','2022-07-10 05:11:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JgzE6PjgDJ','2022-07-10 05:11:30','2022-07-10 05:11:30'),(21,'Dan','Kertzmann','Ward PLC','Hic rerum maiores sed quam aliquam. Illum aperiam nesciunt quia fuga dolorem. Asperiores incidunt accusantium nemo amet vel facilis ipsam.',NULL,'thiel.omer@example.net','2022-07-10 05:11:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pjprKrxDCJ','2022-07-10 05:11:30','2022-07-10 05:11:30'),(22,'Alvena','Breitenberg','Stamm Inc','Minima dolores vel non. Aut vitae sunt sit. Magni et deleniti alias delectus inventore quam minima.',NULL,'flatley.brionna@example.net','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2K4LcFBL9l','2022-07-10 05:11:31','2022-07-10 05:11:31'),(23,'Nedra','Abbott','Koelpin-Blick','Laudantium accusantium incidunt vero voluptatem. Numquam voluptas laboriosam hic neque fugiat et. Quo quo minus et.',NULL,'manuela05@example.com','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1izS8BJ4ma','2022-07-10 05:11:31','2022-07-10 05:11:31'),(24,'Vanessa','Cummings','Kris, Kling and Grady','Ut laudantium ipsam ex quia. Inventore quisquam molestias mollitia illum occaecati eligendi. Labore eligendi ut harum temporibus voluptate veritatis.',NULL,'hintz.gillian@example.org','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Gn39a2xzAy','2022-07-10 05:11:31','2022-07-10 05:11:31'),(25,'Jovany','Hane','Hansen, Beier and Walsh','Illo officia rem magnam ea fugiat ea ut. Doloribus modi perferendis quis voluptatem. Voluptatem non unde saepe quia necessitatibus cum omnis.',NULL,'juliana21@example.org','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','B7TDMjngh6','2022-07-10 05:11:31','2022-07-10 05:11:31'),(26,'Florence','Balistreri','Rodriguez Inc','Velit pariatur mollitia cum et quia eos. Vero sunt in laborum culpa voluptates excepturi quidem. Esse reiciendis in autem aut velit ullam nesciunt. Dolores hic et et illum qui optio.',NULL,'borer.herminia@example.net','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9nHap2BhfW','2022-07-10 05:11:31','2022-07-10 05:11:31'),(27,'April','White','Hickle and Sons','Quos libero at id quibusdam. Amet voluptatem aut sit laboriosam. Debitis eaque cumque maiores expedita hic perspiciatis non.',NULL,'aletha.spencer@example.org','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dhb0EN85hX','2022-07-10 05:11:31','2022-07-10 05:11:31'),(28,'Terry','Jast','Stroman PLC','Repellat voluptate maiores beatae explicabo officia et. A aut et sed dolore et placeat. Facere neque quos quaerat voluptas ex.',NULL,'eichmann.seth@example.org','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tJtl51XesH','2022-07-10 05:11:31','2022-07-10 05:11:31'),(29,'Manuela','Ratke','Lesch-Mayer','Cum unde iure ipsa. Molestiae hic possimus et laborum aut voluptatem aut qui. Culpa sapiente consequatur quisquam. Qui blanditiis consequatur a.',NULL,'cora.russel@example.net','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9xI4M6btSw','2022-07-10 05:11:31','2022-07-10 05:11:31'),(30,'Camilla','Carter','Jenkins-Franecki','At porro rerum qui omnis fuga. Enim voluptas ex consequatur perferendis sequi non. Dolores dolor dolorem quibusdam aspernatur. Temporibus cum laborum omnis ut velit.',NULL,'marie82@example.com','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WM2Bf5nAuG','2022-07-10 05:11:31','2022-07-10 05:11:31'),(31,'Morton','Langworth','Haley-Wolf','Natus consequatur doloremque ad qui eum labore nisi. At quod consequatur est eligendi.',NULL,'rae.mills@example.org','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Vplnf5d3aQ','2022-07-10 05:11:31','2022-07-10 05:11:31'),(32,'Alfreda','Schinner','Daugherty, Stanton and West','Est unde iusto doloremque quos sed tempore et. Molestiae non deleniti consequatur error autem nihil illum omnis. Explicabo odio et ipsa ipsum quisquam. Quia at consectetur excepturi aut voluptas.',NULL,'maximus93@example.net','2022-07-10 05:11:31','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TFmtc3x6aC','2022-07-10 05:11:31','2022-07-10 05:11:31'),(33,'Cydney','Fahey','Streich, Hermann and Nicolas','Porro voluptatem voluptate corrupti nesciunt neque libero recusandae adipisci. Neque repudiandae fugiat possimus aut corrupti nulla. Commodi similique omnis saepe vitae. Autem placeat qui commodi.',NULL,'gerlach.trinity@example.com','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1yJpBtQ4v4','2022-07-10 05:11:32','2022-07-10 05:11:32'),(34,'Eleanore','Schoen','Walter LLC','Modi magnam totam fuga aut quis cumque. Quasi deleniti vero molestiae eligendi eos. Praesentium quo et et reprehenderit odit enim repellat.',NULL,'adrian16@example.org','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WRVLnThSXC','2022-07-10 05:11:32','2022-07-10 05:11:32'),(35,'Devon','Stark','Sporer, Gislason and Schimmel','Qui aut dolor sit vero. Ut aut blanditiis aut et illum qui. Qui veniam illum qui fugiat et possimus. Est enim est tempora aut est.',NULL,'shanel18@example.com','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PAUGvqqFzQ','2022-07-10 05:11:32','2022-07-10 05:11:32'),(36,'Camila','Lakin','Stamm-Mayer','Nihil recusandae facere reprehenderit in id. Dolorem eaque ut quis ut. Exercitationem odit enim repudiandae corporis non. Laborum ratione aliquam aut aut similique dolore.',NULL,'hodkiewicz.morton@example.net','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VowDakBqDK','2022-07-10 05:11:32','2022-07-10 05:11:32'),(37,'Armand','Schuster','Zemlak, Zemlak and Abbott','Dolor harum numquam sunt in et ipsa ut. Voluptate nobis consequatur dolores eaque. Quis quam voluptatem laudantium iure aut corrupti esse.',NULL,'shanahan.martine@example.net','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yBjYot4V2G','2022-07-10 05:11:32','2022-07-10 05:11:32'),(38,'Madisen','Koch','Pouros Group','Earum et qui amet dolor repellendus. Quia et molestias quisquam occaecati debitis facere. Id et commodi quasi animi modi debitis quidem. Reprehenderit unde rerum fugiat et esse non quos.',NULL,'saul13@example.org','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2t7kDxMwUA','2022-07-10 05:11:32','2022-07-10 05:11:32'),(39,'Lloyd','Nader','Kertzmann, Heaney and Kemmer','Optio commodi nam dolor vel ratione debitis aut explicabo. Id saepe iusto quasi debitis voluptas. Dolores veniam fuga accusamus blanditiis aliquid praesentium. Voluptas provident sed rerum molestias.',NULL,'octavia.krajcik@example.org','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xc4McLAmeH','2022-07-10 05:11:32','2022-07-10 05:11:32'),(40,'Kane','Cummerata','Grant, Wisoky and Leffler','Incidunt dicta tenetur perferendis. Cumque hic et nesciunt consequatur eveniet temporibus asperiores. Est quis praesentium ducimus rem reprehenderit.',NULL,'celestino68@example.com','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','z3s8pCAftQ','2022-07-10 05:11:32','2022-07-10 05:11:32'),(41,'Jeanne','Jacobi','VonRueden and Sons','Quos vel odio quidem provident. Recusandae quam sit adipisci nostrum vel. Autem inventore nobis alias sit repudiandae. Placeat provident accusamus accusantium quisquam.',NULL,'kirlin.patrick@example.com','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','s61TtK45wR','2022-07-10 05:11:32','2022-07-10 05:11:32'),(42,'Flo','Jacobi','Ledner, Stanton and Sporer','Et est explicabo iure porro. Facere inventore sed dicta et. Quo qui ipsa nostrum sequi dicta qui adipisci molestiae. Voluptatibus ut atque tempora quibusdam necessitatibus iste dolores sit.',NULL,'isabell.kozey@example.com','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','60A1oWUxYt','2022-07-10 05:11:32','2022-07-10 05:11:32'),(43,'Fletcher','Goyette','Strosin-Hackett','Laboriosam voluptate voluptatem similique quia. Occaecati nemo aspernatur qui fugiat voluptates hic ut.',NULL,'treva21@example.org','2022-07-10 05:11:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tTKgcqzaNQ','2022-07-10 05:11:32','2022-07-10 05:11:32'),(44,'Zella','Haag','Rogahn-Runolfsson','Sit aut quae dolores et. Minus aut minima quos molestiae ea quod ut. Doloremque inventore pariatur atque odio aspernatur accusamus.',NULL,'eoconnell@example.com','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Byc6PE8Wf1','2022-07-10 05:11:33','2022-07-10 05:11:33'),(45,'Jayda','Schuppe','Dooley Group','Sequi cupiditate magnam quia natus ratione sunt. Debitis officiis qui consectetur maxime quos. A molestiae numquam iure non perspiciatis dolore. Ad corporis blanditiis beatae ut voluptatem.',NULL,'paula.willms@example.org','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','n9otgHJzuP','2022-07-10 05:11:33','2022-07-10 05:11:33'),(46,'Jaida','Cronin','Okuneva, Swaniawski and Harvey','Delectus hic distinctio cumque porro minima. Est optio facere aut cupiditate ut. Illo incidunt omnis laborum praesentium quis. Odit odio aut voluptatum id ad. Odio placeat maiores numquam atque.',NULL,'oondricka@example.org','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yYPYnz9THk','2022-07-10 05:11:33','2022-07-10 05:11:33'),(47,'Marion','Bergstrom','Hessel-Simonis','Facilis ut hic voluptas quo. Ut quaerat minima consectetur iusto perspiciatis vel excepturi ab. Excepturi est natus hic itaque. Quia et amet vel. Odio sequi eos harum modi.',NULL,'mohr.clementine@example.net','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','avRUcAX9XR','2022-07-10 05:11:33','2022-07-10 05:11:33'),(48,'Amari','Carter','Carroll Group','Quidem minus dolorum exercitationem. Reiciendis vero autem quia minus itaque quidem quis. Unde nisi inventore corrupti nisi est non.',NULL,'towne.domingo@example.org','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jfV4NIT5cP','2022-07-10 05:11:33','2022-07-10 05:11:33'),(49,'Vivian','Balistreri','Heaney, Bauch and Koss','In unde autem voluptatibus consequatur corrupti. Officiis accusantium sit voluptate vero saepe.',NULL,'breitenberg.beaulah@example.org','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','McNnp0G7PF','2022-07-10 05:11:33','2022-07-10 05:11:33'),(50,'Meggie','Windler','Wisoky-Champlin','Repudiandae vel quaerat sequi pariatur hic et. Minima commodi totam qui sint hic. Mollitia error fuga at sint ut incidunt incidunt deleniti. Aut iusto officiis inventore itaque sint aspernatur.',NULL,'medhurst.libby@example.com','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JXLnWH1a0w','2022-07-10 05:11:33','2022-07-10 05:11:33'),(51,'Antonia','Schimmel','Ondricka-Hyatt','Iusto non quas quo temporibus. Libero earum sit et et distinctio. In expedita voluptatem et aperiam modi. Qui nostrum rem velit voluptatem recusandae non consectetur.',NULL,'heidi06@example.org','2022-07-10 05:11:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vQJL3KJU0Z','2022-07-10 05:11:33','2022-07-10 05:11:33'),(52,'Neil','Bashirian','Pfannerstill-Farrell','Reprehenderit officia voluptas voluptas ea et vel soluta. Quo minima tempore debitis ut in amet. Aut nihil aliquid quod velit aut dolor.',NULL,'hand.destin@example.com','2022-07-10 05:11:34','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zTbhaS0rBu','2022-07-10 05:11:34','2022-07-10 05:11:34'),(53,'Gage','Pollich','Greenfelder, Strosin and Walsh','Illum et officiis tenetur nemo deleniti. Quia et est iste in dolor ut autem similique. Rem esse quae enim corrupti facere adipisci id. Tempore id officiis non debitis illum odio.',NULL,'gaylord.ozella@example.net','2022-07-10 05:11:34','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BaN2TN3gtX','2022-07-10 05:11:34','2022-07-10 05:11:34'),(54,'Taya','Schamberger','Bayer, Barrows and Mayer','Itaque et soluta dolores quod dicta pariatur. Cupiditate quos aut voluptate. Labore autem et et maiores ducimus corporis. Quos cumque blanditiis in dolorum sit rem.',NULL,'nfunk@example.com','2022-07-10 05:11:34','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fDcsZH8zw7','2022-07-10 05:11:34','2022-07-10 05:11:34'),(55,'Aurelia','Boyle','Doyle Ltd','Quae consequatur reiciendis eum mollitia sequi consequatur optio. Odio voluptates quae quidem dolores molestias. Et sed vero est aut et ut.',NULL,'welch.erling@example.com','2022-07-10 05:11:34','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HH0redTGU1','2022-07-10 05:11:34','2022-07-10 05:11:34'),(56,'Felipa','Schaefer','Johns, Blanda and Hirthe','Ratione enim in ea culpa. Id omnis voluptatem consequuntur voluptatem iusto. Corporis necessitatibus doloremque omnis sit. Animi sed ut magni nihil voluptatem est.',NULL,'oda57@example.org','2022-07-10 05:11:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','igLYi7isk8','2022-07-10 05:11:35','2022-07-10 05:11:35'),(57,'Elenora','Farrell','Schroeder-Murray','Ducimus libero libero eveniet sit. Eius libero hic at distinctio laudantium saepe velit. Aut et est voluptatem reprehenderit doloremque. Animi sit aspernatur et sit magnam.',NULL,'kristopher36@example.com','2022-07-10 05:11:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','v5mSVbqdwO','2022-07-10 05:11:35','2022-07-10 05:11:35'),(58,'Dale','Green','Beahan, Keeling and Jacobs','Ipsa libero sed rem. Quo deserunt quo perferendis corrupti. Dicta vitae magnam sint ut.',NULL,'casandra25@example.net','2022-07-10 05:11:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WGpFcOMQD5','2022-07-10 05:11:35','2022-07-10 05:11:35'),(59,'Rubie','Hansen','Gerlach LLC','Provident sed quia ad nulla quidem magnam consectetur. Vel nihil quam culpa fugiat reprehenderit. Sint nemo aut dolor ullam quisquam et.',NULL,'stanton33@example.net','2022-07-10 05:11:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3mIEUpi3Or','2022-07-10 05:11:35','2022-07-10 05:11:35'),(60,'Ayana','Kuphal','Collins, Ryan and Koss','Ab beatae molestiae et ducimus eligendi praesentium. Nihil ut deserunt qui itaque dolorem qui aperiam.',NULL,'kunde.glenda@example.com','2022-07-10 05:11:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','f7T5eLV1zi','2022-07-10 05:11:35','2022-07-10 05:11:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15 18:15:06
