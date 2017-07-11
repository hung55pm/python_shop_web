-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop_kiddywatch_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add product',1,'add_product'),(2,'Can change product',1,'change_product'),(3,'Can delete product',1,'delete_product'),(4,'Can add photo product',2,'add_photoproduct'),(5,'Can change photo product',2,'change_photoproduct'),(6,'Can delete photo product',2,'delete_photoproduct'),(7,'Can add category',3,'add_category'),(8,'Can change category',3,'change_category'),(9,'Can delete category',3,'delete_category'),(10,'Can add photo slideshow',4,'add_photoslideshow'),(11,'Can change photo slideshow',4,'change_photoslideshow'),(12,'Can delete photo slideshow',4,'delete_photoslideshow'),(13,'Can add log entry',5,'add_logentry'),(14,'Can change log entry',5,'change_logentry'),(15,'Can delete log entry',5,'delete_logentry'),(16,'Can add group',6,'add_group'),(17,'Can change group',6,'change_group'),(18,'Can delete group',6,'delete_group'),(19,'Can add permission',7,'add_permission'),(20,'Can change permission',7,'change_permission'),(21,'Can delete permission',7,'delete_permission'),(22,'Can add user',8,'add_user'),(23,'Can change user',8,'change_user'),(24,'Can delete user',8,'delete_user'),(25,'Can add content type',9,'add_contenttype'),(26,'Can change content type',9,'change_contenttype'),(27,'Can delete content type',9,'delete_contenttype'),(28,'Can add session',10,'add_session'),(29,'Can change session',10,'change_session'),(30,'Can delete session',10,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$i8Pm50LvEvCs$MykLUG3dtva+Dc88vBZYU67VJNathth8+sMZJ4IHUKc=','2017-07-11 09:28:47',1,'hungdn','','','hungdn@vinnet.vn',1,1,'2017-07-11 09:22:51');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-07-11 09:29:05','1','Đồng hồ kiddy',1,'[{\"added\": {}}]',3,1),(2,'2017-07-11 09:29:25','2','Sim kiddy',1,'[{\"added\": {}}]',3,1),(3,'2017-07-11 09:30:11','3','Dây và củ sạc',1,'[{\"added\": {}}]',3,1),(4,'2017-07-11 09:31:47','1','photo slideshow 1',1,'[{\"added\": {}}]',4,1),(5,'2017-07-11 09:32:19','1','photo slideshow 1',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',4,1),(6,'2017-07-11 09:33:23','1','photo slideshow 1',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',4,1),(7,'2017-07-11 09:33:38','1','photo slideshow 1',2,'[]',4,1),(8,'2017-07-11 09:33:49','2','photo slideshow 2',1,'[{\"added\": {}}]',4,1),(9,'2017-07-11 09:36:00','1','Đồng hồ kiddy xanh và sim kid30',1,'[{\"added\": {}}]',2,1),(10,'2017-07-11 09:36:44','2','Đồng hồ kiddy đen và sim kid30',1,'[{\"added\": {}}]',2,1),(11,'2017-07-11 09:37:09','3','Đồng hồ kiddy hồng và sim kid30',1,'[{\"added\": {}}]',2,1),(12,'2017-07-11 09:37:47','4','Sim kiddy30',1,'[{\"added\": {}}]',2,1),(13,'2017-07-11 09:39:12','1','ĐỒNG HỒ KIDDY MÀU HỒNG + SIM KID30',1,'[{\"added\": {}}]',1,1),(14,'2017-07-11 09:39:40','2','ĐỒNG HỒ KIDDY MÀU XANH + SIM KID30',1,'[{\"added\": {}}]',1,1),(15,'2017-07-11 09:40:03','3','ĐỒNG HỒ KIDDY MÀU ĐEN + SIM KID30',1,'[{\"added\": {}}]',1,1),(16,'2017-07-11 09:40:57','4','SIM KID30 - K30',1,'[{\"added\": {}}]',1,1),(17,'2017-07-11 09:41:41','3','Đồng hồ kiddy hồng và sim kid30',2,'[{\"changed\": {\"fields\": [\"direct\"]}}]',2,1),(18,'2017-07-11 09:41:50','2','Đồng hồ kiddy đen và sim kid30',2,'[{\"changed\": {\"fields\": [\"direct\"]}}]',2,1),(19,'2017-07-11 09:42:48','2','photo slideshow 2',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(6,'auth','group'),(7,'auth','permission'),(8,'auth','user'),(9,'contenttypes','contenttype'),(10,'sessions','session'),(3,'web','category'),(2,'web','photoproduct'),(4,'web','photoslideshow'),(1,'web','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-07-11 09:21:57'),(2,'auth','0001_initial','2017-07-11 09:22:06'),(3,'admin','0001_initial','2017-07-11 09:22:08'),(4,'admin','0002_logentry_remove_auto_add','2017-07-11 09:22:08'),(5,'contenttypes','0002_remove_content_type_name','2017-07-11 09:22:09'),(6,'auth','0002_alter_permission_name_max_length','2017-07-11 09:22:10'),(7,'auth','0003_alter_user_email_max_length','2017-07-11 09:22:11'),(8,'auth','0004_alter_user_username_opts','2017-07-11 09:22:11'),(9,'auth','0005_alter_user_last_login_null','2017-07-11 09:22:11'),(10,'auth','0006_require_contenttypes_0002','2017-07-11 09:22:11'),(11,'auth','0007_alter_validators_add_error_messages','2017-07-11 09:22:11'),(12,'auth','0008_alter_user_username_max_length','2017-07-11 09:22:12'),(13,'sessions','0001_initial','2017-07-11 09:22:12'),(14,'web','0001_initial','2017-07-11 09:22:15');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('86m9d6qqqs4tuy57k5n9kn9gaebg644w','YTFiZTc1N2JhMjQwNzZkMWM4ZGZlZDk5NDRkZTFlNmY4M2Y4ZDhhNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgwY2I5MmZiZWFhMDQzNjQ3ODdkNzE3YjExOTBiZTgxZTVkNmUzMmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-25 09:23:08'),('hly9ixw7vrgiyb5w95w2qfwcynwrtewm','YTFiZTc1N2JhMjQwNzZkMWM4ZGZlZDk5NDRkZTFlNmY4M2Y4ZDhhNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgwY2I5MmZiZWFhMDQzNjQ3ODdkNzE3YjExOTBiZTgxZTVkNmUzMmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-25 09:28:47');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_category`
--

DROP TABLE IF EXISTS `web_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_category`
--

LOCK TABLES `web_category` WRITE;
/*!40000 ALTER TABLE `web_category` DISABLE KEYS */;
INSERT INTO `web_category` VALUES (1,'Đồng hồ kiddy',NULL),(2,'Sim kiddy',NULL),(3,'Dây và củ sạc',NULL);
/*!40000 ALTER TABLE `web_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_photoproduct`
--

DROP TABLE IF EXISTS `web_photoproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_photoproduct` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `direct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_photoproduct`
--

LOCK TABLES `web_photoproduct` WRITE;
/*!40000 ALTER TABLE `web_photoproduct` DISABLE KEYS */;
INSERT INTO `web_photoproduct` VALUES (1,'Đồng hồ kiddy xanh và sim kid30','photo/xanh_sim.jpg','/media/photo/xanh_sim.jpg'),(2,'Đồng hồ kiddy đen và sim kid30','photo/back_sim.png','/media/photo/back_sim.png'),(3,'Đồng hồ kiddy hồng và sim kid30','photo/hong_sim.png','/media/photo/hong_sim.png'),(4,'Sim kiddy30','photo/sim_kiddy30.jpg','/media/photo/sim_kiddy30.jpg');
/*!40000 ALTER TABLE `web_photoproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_photoslideshow`
--

DROP TABLE IF EXISTS `web_photoslideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_photoslideshow` (
  `objectid` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `direct` varchar(100) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`objectid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_photoslideshow`
--

LOCK TABLES `web_photoslideshow` WRITE;
/*!40000 ALTER TABLE `web_photoslideshow` DISABLE KEYS */;
INSERT INTO `web_photoslideshow` VALUES (1,1,'/media/photo/banner_1.jpg','photo/banner_1.jpg','photo slideshow 1'),(2,1,'/media/photo/banner_2.jpg','photo/banner_2.jpg','photo slideshow 2');
/*!40000 ALTER TABLE `web_photoslideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_product`
--

DROP TABLE IF EXISTS `web_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_product` (
  `objectid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `price_sale` varchar(50) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `photo_id` bigint(20) NOT NULL,
  PRIMARY KEY (`objectid`),
  KEY `web_product_id_662bb9ce_fk_web_category_id` (`id`),
  KEY `web_product_photo_id_c2d231c3_fk_web_photoproduct_id` (`photo_id`),
  CONSTRAINT `web_product_id_662bb9ce_fk_web_category_id` FOREIGN KEY (`id`) REFERENCES `web_category` (`id`),
  CONSTRAINT `web_product_photo_id_c2d231c3_fk_web_photoproduct_id` FOREIGN KEY (`photo_id`) REFERENCES `web_photoproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_product`
--

LOCK TABLES `web_product` WRITE;
/*!40000 ALTER TABLE `web_product` DISABLE KEYS */;
INSERT INTO `web_product` VALUES (1,'ĐỒNG HỒ KIDDY MÀU HỒNG + SIM KID30','1.455.000đ','1.355.000đ',1,'K01',NULL,1,3),(2,'ĐỒNG HỒ KIDDY MÀU XANH + SIM KID30','1.455.000đ','1.355.000đ',1,'K01',NULL,1,1),(3,'ĐỒNG HỒ KIDDY MÀU ĐEN + SIM KID30','1.455.000đ','1.355.000đ',1,'K01',NULL,1,2),(4,'SIM KID30 - K30','65.000đ','65.000đ',1,'SC/KID30',NULL,2,4);
/*!40000 ALTER TABLE `web_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11 17:29:42
