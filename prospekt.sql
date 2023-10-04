-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: prospektcreator
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `csv_data`
--

DROP TABLE IF EXISTS `csv_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csv_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Produktname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Produktbeschreibung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Preis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Angebot_in_prozent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `Angebotsdatum` date DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csv_data`
--

LOCK TABLES `csv_data` WRITE;
/*!40000 ALTER TABLE `csv_data` DISABLE KEYS */;
INSERT INTO `csv_data` VALUES (109,'Apples','This is a short description of the product. It provides some insights into what the product offers','1.50','10','2001-12-20','apple_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(110,'Oranges','This is a short description of the product. It provides some insights into what the product offers','2.00','20','2002-12-20','orange_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(111,'Bananas','This is a short description of the product. It provides some insights into what the product offers','1.00','5','2003-12-20','banana_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(112,'Grapes','This is a short description of the product. It provides some insights into what the product offers','3.00','15','2004-12-20','grape_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(113,'Pineapple','This is a short description of the product. It provides some insights into what the product offers','2.50','10','2005-12-20','pineapple_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(114,'Watermelon','This is a short description of the product. It provides some insights into what the product offers','1.00','5','2006-12-20','watermelon_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(115,'Strawberries','This is a short description of the product. It provides some insights into what the product offers','4.00','20','2007-12-20','strawberry_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(116,'Blueberries','This is a short description of the product. It provides some insights into what the product offers','3.50','15','2008-12-20','blueberry_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(117,'Raspberries','This is a short description of the product. It provides some insights into what the product offers','3.50','10','2009-12-20','raspberry_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(118,'Mango','This is a short description of the product. It provides some insights into what the product offers','2.00','5','2010-12-20','mango_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(119,'Peaches','This is a short description of the product. It provides some insights into what the product offers','2.50','10','2011-12-20','peach_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(120,'Plums','This is a short description of the product. It provides some insights into what the product offers','1.50','5','2012-12-20','plum_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(121,'Cherries','This is a short description of the product. It provides some insights into what the product offers','4.00','20','2013-12-20','cherry_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(122,'Grapefruit','This is a short description of the product. It provides some insights into what the product offers','2.00','10','2014-12-20','grapefruit_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(123,'Lemons','This is a short description of the product. It provides some insights into what the product offers','1.50','5','2015-12-20','lemon_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(124,'Limes','This is a short description of the product. It provides some insights into what the product offers','1.50','5','2016-12-20','lime_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(125,'Kiwi','This is a short description of the product. It provides some insights into what the product offers','2.50','10','2017-12-20','kiwi_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(126,'Pears','This is a short description of the product. It provides some insights into what the product offers','2.00','5','2018-12-20','pear_image.jpg','2023-09-28 20:22:14','2023-09-28 20:22:14'),(127,'Apples','This is a short description of the product. It provides some insights into what the product offers','1.50','10','2001-12-20','apple_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(128,'Oranges','This is a short description of the product. It provides some insights into what the product offers','2.00','20','2002-12-20','orange_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(129,'Bananas','This is a short description of the product. It provides some insights into what the product offers','1.00','5','2003-12-20','banana_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(130,'Grapes','This is a short description of the product. It provides some insights into what the product offers','3.00','15','2004-12-20','grape_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(131,'Pineapple','This is a short description of the product. It provides some insights into what the product offers','2.50','10','2005-12-20','pineapple_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(132,'Watermelon','This is a short description of the product. It provides some insights into what the product offers','1.00','5','2006-12-20','watermelon_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(133,'Strawberries','This is a short description of the product. It provides some insights into what the product offers','4.00','20','2007-12-20','strawberry_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(134,'Blueberries','This is a short description of the product. It provides some insights into what the product offers','3.50','15','2008-12-20','blueberry_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(135,'Raspberries','This is a short description of the product. It provides some insights into what the product offers','3.50','10','2009-12-20','raspberry_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(136,'Mango','This is a short description of the product. It provides some insights into what the product offers','2.00','5','2010-12-20','mango_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(137,'Peaches','This is a short description of the product. It provides some insights into what the product offers','2.50','10','2011-12-20','peach_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(138,'Plums','This is a short description of the product. It provides some insights into what the product offers','1.50','5','2012-12-20','plum_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(139,'Cherries','This is a short description of the product. It provides some insights into what the product offers','4.00','20','2013-12-20','cherry_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(140,'Grapefruit','This is a short description of the product. It provides some insights into what the product offers','2.00','10','2014-12-20','grapefruit_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(141,'Lemons','This is a short description of the product. It provides some insights into what the product offers','1.50','5','2015-12-20','lemon_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(142,'Limes','This is a short description of the product. It provides some insights into what the product offers','1.50','5','2016-12-20','lime_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(143,'Kiwi','This is a short description of the product. It provides some insights into what the product offers','2.50','10','2017-12-20','kiwi_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23'),(144,'Pears','This is a short description of the product. It provides some insights into what the product offers','2.00','5','2018-12-20','pear_image.jpg','2023-10-03 04:33:23','2023-10-03 04:33:23');
/*!40000 ALTER TABLE `csv_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_22_183328_create_csv_data_table',1),(6,'2023_09_26_211216_create_watchlists_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlists`
--

DROP TABLE IF EXISTS `watchlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlists`
--

LOCK TABLES `watchlists` WRITE;
/*!40000 ALTER TABLE `watchlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03  9:04:01
