-- MySQL dump 10.13  Distrib 5.5.9, for osx10.6 (i386)
--
-- Host: localhost    Database: poll_machine_development
-- ------------------------------------------------------
-- Server version	5.5.9

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `predefined_answer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_answers_on_uuid_and_predefined_answer_id` (`uuid`,`predefined_answer_id`),
  KEY `index_answers_on_predefined_answer_id` (`predefined_answer_id`),
  KEY `index_answers_on_question_id` (`question_id`),
  KEY `index_answers_on_uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (12,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',59,133,'2011-05-21 16:25:13','2011-05-21 16:25:13'),(13,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',60,135,'2011-05-21 16:25:13','2011-05-21 16:25:13'),(17,'c04b912c-8466-11e0-8176-70cd60fffed4',59,131,'2011-05-22 11:30:10','2011-05-22 11:30:10'),(18,'c04b912c-8466-11e0-8176-70cd60fffed4',60,135,'2011-05-22 11:30:10','2011-05-22 11:30:10'),(19,'ea8bdf46-8466-11e0-8176-70cd60fffed4',59,132,'2011-05-22 11:30:47','2011-05-22 11:30:47'),(20,'ea8bdf46-8466-11e0-8176-70cd60fffed4',60,134,'2011-05-22 11:30:47','2011-05-22 11:30:47'),(21,'baa30fcc-8469-11e0-8176-70cd60fffed4',59,133,'2011-05-22 11:51:10','2011-05-22 11:51:10'),(22,'baa30fcc-8469-11e0-8176-70cd60fffed4',60,135,'2011-05-22 11:51:10','2011-05-22 11:51:10'),(24,'8ac8d84e-8483-11e0-8176-70cd60fffed4',59,133,'2011-05-22 14:55:43','2011-05-22 14:55:43'),(25,'8ac8d84e-8483-11e0-8176-70cd60fffed4',60,135,'2011-05-22 14:55:43','2011-05-22 14:55:43'),(26,'a22b7aaa-8483-11e0-8176-70cd60fffed4',59,131,'2011-05-22 14:56:20','2011-05-22 14:56:20'),(27,'a22b7aaa-8483-11e0-8176-70cd60fffed4',60,135,'2011-05-22 14:56:20','2011-05-22 14:56:20'),(32,'42e22ed8-8486-11e0-8176-70cd60fffed4',59,131,'2011-05-22 15:21:44','2011-05-22 15:21:44'),(33,'42e22ed8-8486-11e0-8176-70cd60fffed4',60,134,'2011-05-22 15:21:44','2011-05-22 15:21:44'),(34,'b9ef4df6-8488-11e0-8176-70cd60fffed4',62,140,'2011-05-22 15:33:00','2011-05-22 15:33:00'),(35,'b9ef4df6-8488-11e0-8176-70cd60fffed4',63,146,'2011-05-22 15:33:00','2011-05-22 15:33:00'),(36,'b9ef4df6-8488-11e0-8176-70cd60fffed4',64,151,'2011-05-22 15:33:00','2011-05-22 15:33:00'),(37,'b9ef4df6-8488-11e0-8176-70cd60fffed4',65,153,'2011-05-22 15:33:00','2011-05-22 15:33:00'),(38,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',62,142,'2011-05-22 15:34:01','2011-05-22 15:34:01'),(39,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',62,141,'2011-05-22 15:34:01','2011-05-22 15:34:01'),(40,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',62,144,'2011-05-22 15:34:01','2011-05-22 15:34:01'),(41,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',63,149,'2011-05-22 15:34:01','2011-05-22 15:34:01'),(42,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',64,151,'2011-05-22 15:34:01','2011-05-22 15:34:01'),(43,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',65,157,'2011-05-22 15:34:01','2011-05-22 15:34:01'),(44,'382988fe-848d-11e0-8176-70cd60fffed4',59,132,'2011-05-22 16:04:56','2011-05-22 16:04:56'),(45,'382988fe-848d-11e0-8176-70cd60fffed4',60,134,'2011-05-22 16:04:56','2011-05-22 16:04:56'),(46,'d69bba8e-8537-11e0-9f79-70cd60fffed4',59,132,'2011-05-23 12:26:17','2011-05-23 12:26:17'),(47,'d69bba8e-8537-11e0-9f79-70cd60fffed4',60,135,'2011-05-23 12:26:17','2011-05-23 12:26:17'),(48,'d69bba8e-8537-11e0-9f79-70cd60fffed4',62,140,'2011-05-23 13:13:06','2011-05-23 13:13:06'),(49,'d69bba8e-8537-11e0-9f79-70cd60fffed4',62,139,'2011-05-23 13:13:06','2011-05-23 13:13:06'),(50,'d69bba8e-8537-11e0-9f79-70cd60fffed4',63,147,'2011-05-23 13:13:06','2011-05-23 13:13:06'),(51,'d69bba8e-8537-11e0-9f79-70cd60fffed4',64,151,'2011-05-23 13:13:06','2011-05-23 13:13:06'),(52,'d69bba8e-8537-11e0-9f79-70cd60fffed4',65,156,'2011-05-23 13:13:06','2011-05-23 13:13:06'),(53,'d69bba8e-8537-11e0-9f79-70cd60fffed4',65,155,'2011-05-23 13:13:06','2011-05-23 13:13:06'),(54,'e1e34fac-878e-11e0-8985-70cd60fffed4',62,142,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(55,'e1e34fac-878e-11e0-8985-70cd60fffed4',62,139,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(56,'e1e34fac-878e-11e0-8985-70cd60fffed4',62,144,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(57,'e1e34fac-878e-11e0-8985-70cd60fffed4',63,147,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(58,'e1e34fac-878e-11e0-8985-70cd60fffed4',64,151,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(59,'e1e34fac-878e-11e0-8985-70cd60fffed4',65,158,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(60,'e1e34fac-878e-11e0-8985-70cd60fffed4',65,157,'2011-05-26 11:54:44','2011-05-26 11:54:44'),(61,'7211f9de-878f-11e0-8985-70cd60fffed4',59,131,'2011-05-26 11:58:59','2011-05-26 11:58:59'),(62,'7211f9de-878f-11e0-8985-70cd60fffed4',60,135,'2011-05-26 11:58:59','2011-05-26 11:58:59'),(63,'7211f9de-878f-11e0-8985-70cd60fffed4',62,140,'2011-05-26 14:21:38','2011-05-26 14:21:38'),(64,'7211f9de-878f-11e0-8985-70cd60fffed4',62,144,'2011-05-26 14:21:38','2011-05-26 14:21:38'),(65,'7211f9de-878f-11e0-8985-70cd60fffed4',63,147,'2011-05-26 14:21:38','2011-05-26 14:21:38'),(66,'7211f9de-878f-11e0-8985-70cd60fffed4',64,151,'2011-05-26 14:21:38','2011-05-26 14:21:38'),(67,'7211f9de-878f-11e0-8985-70cd60fffed4',65,153,'2011-05-26 14:21:38','2011-05-26 14:21:38'),(68,'7211f9de-878f-11e0-8985-70cd60fffed4',65,157,'2011-05-26 14:21:38','2011-05-26 14:21:38'),(70,'d4a60b60-89c1-11e0-9182-70cd60fffed4',62,138,'2011-05-29 07:37:41','2011-05-29 07:37:41'),(71,'d4a60b60-89c1-11e0-9182-70cd60fffed4',62,144,'2011-05-29 07:37:41','2011-05-29 07:37:41'),(72,'d4a60b60-89c1-11e0-9182-70cd60fffed4',63,146,'2011-05-29 07:37:41','2011-05-29 07:37:41'),(73,'d4a60b60-89c1-11e0-9182-70cd60fffed4',64,151,'2011-05-29 07:37:41','2011-05-29 07:37:41'),(74,'d4a60b60-89c1-11e0-9182-70cd60fffed4',65,159,'2011-05-29 07:37:41','2011-05-29 07:37:41'),(75,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',70,172,'2011-05-29 08:24:19','2011-05-29 08:24:19'),(76,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',70,173,'2011-05-29 08:24:19','2011-05-29 08:24:19'),(77,'d7e8eb66-7cde-11e0-8fdc-70cd60fffed4',69,169,'2011-05-29 08:24:19','2011-05-29 08:24:19'),(78,'0e2677ac-89cd-11e0-9182-70cd60fffed4',70,171,'2011-05-29 08:24:32','2011-05-29 08:24:32'),(79,'0e2677ac-89cd-11e0-9182-70cd60fffed4',70,173,'2011-05-29 08:24:32','2011-05-29 08:24:32'),(80,'0e2677ac-89cd-11e0-9182-70cd60fffed4',70,170,'2011-05-29 08:24:32','2011-05-29 08:24:32'),(81,'0e2677ac-89cd-11e0-9182-70cd60fffed4',69,167,'2011-05-29 08:24:32','2011-05-29 08:24:32'),(82,'1dddf0f8-89cd-11e0-9182-70cd60fffed4',70,171,'2011-05-29 08:24:57','2011-05-29 08:24:57'),(83,'1dddf0f8-89cd-11e0-9182-70cd60fffed4',70,172,'2011-05-29 08:24:57','2011-05-29 08:24:57'),(84,'1dddf0f8-89cd-11e0-9182-70cd60fffed4',70,173,'2011-05-29 08:24:57','2011-05-29 08:24:57'),(85,'1dddf0f8-89cd-11e0-9182-70cd60fffed4',69,168,'2011-05-29 08:24:57','2011-05-29 08:24:57');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_polls_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
INSERT INTO `polls` VALUES (43,'Survey 2','2011-05-19 22:46:30','2011-05-19 22:46:30','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1),(46,'Сыр','2011-05-22 15:25:18','2011-05-22 15:25:18','Несколько вопросов о сыре.',1),(51,'Мой опрос','2011-05-29 08:09:18','2011-05-29 08:09:18','Мой первый опрос, проводимый с использованием системы Poll Machine',1);
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predefined_answers`
--

DROP TABLE IF EXISTS `predefined_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predefined_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefined_answers`
--

LOCK TABLES `predefined_answers` WRITE;
/*!40000 ALTER TABLE `predefined_answers` DISABLE KEYS */;
INSERT INTO `predefined_answers` VALUES (131,59,'Answer 1','2011-05-19 22:47:44','2011-05-19 22:47:44',0),(132,59,'Answer 3','2011-05-19 22:47:44','2011-05-19 22:47:44',2),(133,59,'Answer 2','2011-05-19 22:47:44','2011-05-19 22:47:44',1),(134,60,'Answer 1','2011-05-19 22:47:44','2011-05-19 22:47:44',0),(135,60,'Answer 2','2011-05-19 22:47:44','2011-05-19 22:47:44',1),(137,62,'Рокфор','2011-05-22 15:30:34','2011-05-22 15:30:34',7),(138,62,'Пармезан','2011-05-22 15:30:34','2011-05-22 15:30:34',1),(139,62,'Рикотта','2011-05-22 15:30:34','2011-05-22 15:30:34',3),(140,62,'Фета','2011-05-22 15:30:34','2011-05-22 15:30:34',2),(141,62,'Гауда','2011-05-22 15:30:34','2011-05-22 15:30:34',4),(142,62,'Моцарелла','2011-05-22 15:30:34','2011-05-22 15:30:34',0),(143,62,'Чеддер','2011-05-22 15:30:34','2011-05-22 15:30:34',6),(144,62,'Эдамер','2011-05-22 15:30:34','2011-05-22 15:30:34',5),(145,63,'Определенно нет','2011-05-22 15:30:34','2011-05-22 15:30:34',4),(146,63,'Да, определенно','2011-05-22 15:30:34','2011-05-22 15:30:34',0),(147,63,'Отношусь нейтрально','2011-05-22 15:30:34','2011-05-22 15:30:34',2),(148,63,'Да, скорее всего','2011-05-22 15:30:34','2011-05-22 15:30:34',1),(149,63,'Скорее нет, чем да','2011-05-22 15:30:34','2011-05-22 15:30:34',3),(150,64,'Нет','2011-05-22 15:30:34','2011-05-22 15:30:34',1),(151,64,'Да','2011-05-22 15:30:34','2011-05-22 15:30:34',0),(152,65,'Моцарелла','2011-05-22 15:30:34','2011-05-22 15:30:34',0),(153,65,'Рикотта','2011-05-22 15:30:34','2011-05-22 15:30:34',3),(154,65,'Гауда','2011-05-22 15:30:34','2011-05-22 15:30:34',4),(155,65,'Рокфор','2011-05-22 15:30:34','2011-05-22 15:30:34',7),(156,65,'Чеддер','2011-05-22 15:30:34','2011-05-22 15:30:34',6),(157,65,'Эдамер','2011-05-22 15:30:34','2011-05-22 15:30:34',5),(158,65,'Фета','2011-05-22 15:30:34','2011-05-22 15:30:34',2),(159,65,'Пармезан','2011-05-22 15:30:34','2011-05-22 15:30:34',1),(167,69,'Ответ 3','2011-05-29 08:22:53','2011-05-29 08:22:53',2),(168,69,'Ответ 2','2011-05-29 08:22:53','2011-05-29 08:22:53',1),(169,69,'Ответ 1','2011-05-29 08:22:53','2011-05-29 08:22:53',0),(170,70,'Ответ 4','2011-05-29 08:22:53','2011-05-29 08:22:53',3),(171,70,'Ответ 1','2011-05-29 08:22:53','2011-05-29 08:22:53',0),(172,70,'Ответ 2','2011-05-29 08:22:53','2011-05-29 08:22:53',1),(173,70,'Ответ 3','2011-05-29 08:22:53','2011-05-29 08:22:53',2);
/*!40000 ALTER TABLE `predefined_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `multiple_answers` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (59,43,'Question 2','2011-05-19 22:47:44','2011-05-19 22:47:44',1,0),(60,43,'Question 1','2011-05-19 22:47:44','2011-05-19 22:47:44',0,0),(62,46,'Выберите ваши любимые сорта сыра:','2011-05-22 15:30:34','2011-05-22 15:30:34',2,1),(63,46,'Считаете ли вы белорусский сыр лучшим в мире?','2011-05-22 15:30:34','2011-05-22 15:30:34',1,0),(64,46,'Любите ли вы сыр?','2011-05-22 15:30:34','2011-05-22 15:30:34',0,0),(65,46,'Какой сыр вы предпочли бы к спагетти?','2011-05-22 15:30:34','2011-05-22 15:30:34',3,1),(69,51,'Вопрос 1','2011-05-29 08:22:53','2011-05-29 08:22:53',0,0),(70,51,'Вопрос 2','2011-05-29 08:22:53','2011-05-29 08:22:53',1,1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110411053317'),('20110411201658'),('20110411203116'),('20110412210246'),('20110412220454'),('20110508152307'),('20110508202533'),('20110509074554'),('20110509075042'),('20110515084246'),('20110518201937'),('20110518214623'),('20110522161240');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (19,14,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(20,15,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(21,16,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(22,17,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(23,18,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(24,19,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(25,20,43,'Poll',NULL,NULL,'tags','2011-05-19 22:46:30'),(30,22,46,'Poll',NULL,NULL,'tags','2011-05-22 15:25:18'),(31,23,46,'Poll',NULL,NULL,'tags','2011-05-22 15:25:18'),(32,14,46,'Poll',NULL,NULL,'tags','2011-05-22 19:21:03'),(37,24,51,'Poll',NULL,NULL,'tags','2011-05-29 08:09:18');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (5,'tag1'),(6,'tag2'),(7,'tag3'),(8,'1'),(9,'2'),(10,'5'),(11,'survey'),(12,'first'),(13,'русский survey'),(14,'lorem'),(15,'ipsum'),(16,'dolor'),(17,'sit'),(18,'amet'),(19,'consectetur'),(20,'adipisicing'),(21,'e'),(22,'сыр'),(23,'еда'),(24,'poll machine');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vladimir.yarotsky@gmail.com','$2a$10$1OMoOPIKT/8E1gCNWA9c4eg9NJ5D/6wf9zGptueJPSDlzuogbWh..',NULL,NULL,NULL,'Vladimir','d7e8eb66-7cde-11e0-8fdc-70cd60fffed4','2011-05-12 21:28:56','2011-05-12 21:28:56');
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

-- Dump completed on 2011-05-29 16:27:54
