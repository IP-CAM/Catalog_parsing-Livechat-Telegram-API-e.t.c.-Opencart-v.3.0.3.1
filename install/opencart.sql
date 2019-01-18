
--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_advertise_google_target`
--

DROP TABLE IF EXISTS `oc_advertise_google_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_advertise_google_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_advertise_google_target`
--

LOCK TABLES `oc_advertise_google_target` WRITE;
/*!40000 ALTER TABLE `oc_advertise_google_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_advertise_google_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','CMFhiQ4yzax0NR1i8EhmCVI5dMeWP8t21uzfqfIQtOFmRo7mWxebqajWAT0356YnW7YVWYLZqreHMEEW7bON92M6xh2SNuu5AYFGLdL0xCHYZRidZ6Nw8Xmrv607QB30JsPhj63g2QAfawHbYTBLbvN7nqcXbKL6ITgSUBUBPg1lW2QnrOvOYiOttZYFqL5LOXDR6dqEcckzzXgdTxuEDGTEvIIkSQbXwGjwUHKjrtRh520trsi5QSB7QY5S4Uq6',1,'2019-01-13 17:42:21','2019-01-13 17:42:21');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10301001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (200000,'',10000000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:20'),(10000000,'',0,1,1,4,1,'2009-01-03 21:08:58','2011-05-30 12:15:12'),(10100000,'',10000000,1,1,4,1,'2009-01-03 21:08:59','2011-05-30 12:15:13'),(10101000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:14'),(10102000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:15'),(10103000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:16'),(10105000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:17'),(10106000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:18'),(10110000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:19'),(10201000,'',200000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:21'),(10300000,'',10000000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:22'),(10301000,'',10300000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:23');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (200000,1,'Запорная арматура Bugatti','','Запорная арматура Bugatti','',''),(10000000,1,'Запорная арматура','','Запорная арматура','',''),(10100000,1,'Запорная арматура Tiemme','','Запорная арматура Tiemme','',''),(10101000,1,'Шаровые краны для Воды Tiemme','','Шаровые краны для Воды Tiemme','',''),(10102000,1,'Шаровые краны для Воды Tifone Tiemme','','Шаровые краны для Воды Tifone Tiemme','',''),(10103000,1,'Трехходовые Шаровые краны Tiemme','','Трехходовые Шаровые краны Tiemme','',''),(10105000,1,'Краны Tiemme для подключения бытовых приборов','','Краны Tiemme для подключения бытовых приборов','',''),(10106000,1,'Шаровые краны для металлопластика Tiemme','','Шаровые краны для металлопластика Tiemme','',''),(10110000,1,'Шаровые краны для Газа Tiemme','','Шаровые краны для Газа Tiemme','',''),(10201000,1,'Шаровые краны для Воды Bugatti серия Oregon','','Шаровые краны для Воды Bugatti серия Oregon','',''),(10300000,1,'Запорная арматура GF','','Запорная арматура GF','',''),(10301000,1,'Шаровые краны для Воды GF','','Шаровые краны для Воды GF','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (10106000,10000000,0),(10106000,10100000,1),(10106000,10106000,2),(10105000,10105000,2),(10105000,10100000,1),(10105000,10000000,0),(10103000,10103000,2),(10103000,10100000,1),(10103000,10000000,0),(10102000,10102000,2),(10102000,10100000,1),(10102000,10000000,0),(10101000,10101000,2),(10101000,10100000,1),(10101000,10000000,0),(10100000,10100000,1),(10100000,10000000,0),(10201000,10201000,2),(10201000,200000,1),(10201000,10000000,0),(200000,200000,1),(200000,10000000,0),(10000000,10000000,0),(10110000,10000000,0),(10110000,10100000,1),(10110000,10110000,2),(10300000,10000000,0),(10300000,10300000,1),(10301000,10000000,0),(10301000,10300000,1),(10301000,10301000,2);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_google_product_category`
--

DROP TABLE IF EXISTS `oc_category_to_google_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_google_product_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_google_product_category`
--

LOCK TABLES `oc_category_to_google_product_category` WRITE;
/*!40000 ALTER TABLE `oc_category_to_google_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_google_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (200000,0),(10000000,0),(10100000,0),(10101000,0),(10102000,0),(10103000,0),(10105000,0),(10106000,0),(10110000,0),(10201000,0),(10300000,0),(10301000,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (20,'Белоруссия (Беларусь)','BY','BLR','',0,1),(80,'Грузия','GE','GEO','',0,1),(109,'Казахстан','KZ','KAZ','',0,1),(115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),(176,'Российская Федерация','RU','RUS','',0,1),(220,'Украина','UA','UKR','',0,1),(226,'Узбекистан','UZ','UZB','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Рубль','RUB','','р.','0',1.00000000,1,'2019-01-18 12:42:00');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_affiliate`
--

LOCK TABLES `oc_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_approval`
--

LOCK TABLES `oc_customer_approval` WRITE;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),(34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0),(35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0),(36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0),(37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0),(38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0),(39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0),(40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0),(41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0),(42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0),(43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0),(44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0),(45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward'),(42,'advertise','google'),(43,'module','google_hangouts'),(45,'module','filter');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_install`
--

LOCK TABLES `oc_extension_install` WRITE;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` VALUES (1,0,'opencart-3-x-export-import-multilingual-3-20-cloud.ocmod.zip','2019-01-13 19:12:22'),(2,0,'fbmessanger3.ocmod.zip','2019-01-15 22:39:54');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_path`
--

LOCK TABLES `oc_extension_path` WRITE;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
INSERT INTO `oc_extension_path` VALUES (1,1,'system/library/export_import','2019-01-13 19:12:32'),(2,1,'admin/controller/extension/export_import.php','2019-01-13 19:12:32'),(3,1,'admin/model/extension/export_import.php','2019-01-13 19:12:32'),(4,1,'admin/view/stylesheet/export_import.css','2019-01-13 19:12:32'),(5,1,'system/library/export_import/Classes','2019-01-13 19:12:32'),(6,1,'admin/language/en-gb/extension/export_import.php','2019-01-13 19:12:32'),(7,1,'admin/view/image/export-import/loading.gif','2019-01-13 19:12:32'),(8,1,'admin/view/template/extension/export_import.twig','2019-01-13 19:12:32'),(9,1,'system/library/export_import/Classes/PHPExcel','2019-01-13 19:12:32'),(10,1,'system/library/export_import/Classes/PHPExcel.php','2019-01-13 19:12:32'),(11,1,'system/library/export_import/Classes/PHPExcel/Autoloader.php','2019-01-13 19:12:32'),(12,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage','2019-01-13 19:12:32'),(13,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php','2019-01-13 19:12:32'),(14,1,'system/library/export_import/Classes/PHPExcel/CalcEngine','2019-01-13 19:12:32'),(15,1,'system/library/export_import/Classes/PHPExcel/Calculation','2019-01-13 19:12:32'),(16,1,'system/library/export_import/Classes/PHPExcel/Calculation.php','2019-01-13 19:12:32'),(17,1,'system/library/export_import/Classes/PHPExcel/Cell','2019-01-13 19:12:32'),(18,1,'system/library/export_import/Classes/PHPExcel/Cell.php','2019-01-13 19:12:32'),(19,1,'system/library/export_import/Classes/PHPExcel/Chart','2019-01-13 19:12:32'),(20,1,'system/library/export_import/Classes/PHPExcel/Chart.php','2019-01-13 19:12:32'),(21,1,'system/library/export_import/Classes/PHPExcel/Comment.php','2019-01-13 19:12:32'),(22,1,'system/library/export_import/Classes/PHPExcel/DocumentProperties.php','2019-01-13 19:12:32'),(23,1,'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php','2019-01-13 19:12:32'),(24,1,'system/library/export_import/Classes/PHPExcel/Exception.php','2019-01-13 19:12:32'),(25,1,'system/library/export_import/Classes/PHPExcel/HashTable.php','2019-01-13 19:12:32'),(26,1,'system/library/export_import/Classes/PHPExcel/Helper','2019-01-13 19:12:32'),(27,1,'system/library/export_import/Classes/PHPExcel/IComparable.php','2019-01-13 19:12:32'),(28,1,'system/library/export_import/Classes/PHPExcel/IOFactory.php','2019-01-13 19:12:32'),(29,1,'system/library/export_import/Classes/PHPExcel/NamedRange.php','2019-01-13 19:12:32'),(30,1,'system/library/export_import/Classes/PHPExcel/Reader','2019-01-13 19:12:32'),(31,1,'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php','2019-01-13 19:12:32'),(32,1,'system/library/export_import/Classes/PHPExcel/RichText','2019-01-13 19:12:32'),(33,1,'system/library/export_import/Classes/PHPExcel/RichText.php','2019-01-13 19:12:32'),(34,1,'system/library/export_import/Classes/PHPExcel/Settings.php','2019-01-13 19:12:32'),(35,1,'system/library/export_import/Classes/PHPExcel/Shared','2019-01-13 19:12:32'),(36,1,'system/library/export_import/Classes/PHPExcel/Style','2019-01-13 19:12:32'),(37,1,'system/library/export_import/Classes/PHPExcel/Style.php','2019-01-13 19:12:32'),(38,1,'system/library/export_import/Classes/PHPExcel/Worksheet','2019-01-13 19:12:32'),(39,1,'system/library/export_import/Classes/PHPExcel/Worksheet.php','2019-01-13 19:12:32'),(40,1,'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php','2019-01-13 19:12:32'),(41,1,'system/library/export_import/Classes/PHPExcel/Writer','2019-01-13 19:12:32'),(42,1,'system/library/export_import/Classes/PHPExcel/locale','2019-01-13 19:12:32'),(43,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php','2019-01-13 19:12:32'),(44,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php','2019-01-13 19:12:32'),(45,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php','2019-01-13 19:12:32'),(46,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php','2019-01-13 19:12:32'),(47,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php','2019-01-13 19:12:32'),(48,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php','2019-01-13 19:12:32'),(49,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php','2019-01-13 19:12:32'),(50,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php','2019-01-13 19:12:32'),(51,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php','2019-01-13 19:12:32'),(52,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php','2019-01-13 19:12:32'),(53,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php','2019-01-13 19:12:32'),(54,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php','2019-01-13 19:12:32'),(55,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php','2019-01-13 19:12:32'),(56,1,'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php','2019-01-13 19:12:32'),(57,1,'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php','2019-01-13 19:12:32'),(58,1,'system/library/export_import/Classes/PHPExcel/Calculation/Database.php','2019-01-13 19:12:32'),(59,1,'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php','2019-01-13 19:12:32'),(60,1,'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php','2019-01-13 19:12:32'),(61,1,'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php','2019-01-13 19:12:32'),(62,1,'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php','2019-01-13 19:12:32'),(63,1,'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php','2019-01-13 19:12:32'),(64,1,'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php','2019-01-13 19:12:32'),(65,1,'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php','2019-01-13 19:12:32'),(66,1,'system/library/export_import/Classes/PHPExcel/Calculation/Function.php','2019-01-13 19:12:32'),(67,1,'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php','2019-01-13 19:12:32'),(68,1,'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php','2019-01-13 19:12:32'),(69,1,'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php','2019-01-13 19:12:32'),(70,1,'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php','2019-01-13 19:12:32'),(71,1,'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php','2019-01-13 19:12:32'),(72,1,'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php','2019-01-13 19:12:32'),(73,1,'system/library/export_import/Classes/PHPExcel/Calculation/Token','2019-01-13 19:12:32'),(74,1,'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt','2019-01-13 19:12:32'),(75,1,'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php','2019-01-13 19:12:32'),(76,1,'system/library/export_import/Classes/PHPExcel/Cell/DataType.php','2019-01-13 19:12:32'),(77,1,'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php','2019-01-13 19:12:32'),(78,1,'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php','2019-01-13 19:12:32'),(79,1,'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php','2019-01-13 19:12:32'),(80,1,'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php','2019-01-13 19:12:32'),(81,1,'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php','2019-01-13 19:12:32'),(82,1,'system/library/export_import/Classes/PHPExcel/Chart/Axis.php','2019-01-13 19:12:32'),(83,1,'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php','2019-01-13 19:12:32'),(84,1,'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php','2019-01-13 19:12:32'),(85,1,'system/library/export_import/Classes/PHPExcel/Chart/Exception.php','2019-01-13 19:12:32'),(86,1,'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php','2019-01-13 19:12:32'),(87,1,'system/library/export_import/Classes/PHPExcel/Chart/Layout.php','2019-01-13 19:12:32'),(88,1,'system/library/export_import/Classes/PHPExcel/Chart/Legend.php','2019-01-13 19:12:32'),(89,1,'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php','2019-01-13 19:12:32'),(90,1,'system/library/export_import/Classes/PHPExcel/Chart/Properties.php','2019-01-13 19:12:32'),(91,1,'system/library/export_import/Classes/PHPExcel/Chart/Renderer','2019-01-13 19:12:32'),(92,1,'system/library/export_import/Classes/PHPExcel/Chart/Title.php','2019-01-13 19:12:32'),(93,1,'system/library/export_import/Classes/PHPExcel/Helper/HTML.php','2019-01-13 19:12:32'),(94,1,'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php','2019-01-13 19:12:32'),(95,1,'system/library/export_import/Classes/PHPExcel/Reader/CSV.php','2019-01-13 19:12:32'),(96,1,'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php','2019-01-13 19:12:32'),(97,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php','2019-01-13 19:12:32'),(98,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007','2019-01-13 19:12:32'),(99,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php','2019-01-13 19:12:32'),(100,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5','2019-01-13 19:12:32'),(101,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php','2019-01-13 19:12:32'),(102,1,'system/library/export_import/Classes/PHPExcel/Reader/Exception.php','2019-01-13 19:12:32'),(103,1,'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php','2019-01-13 19:12:32'),(104,1,'system/library/export_import/Classes/PHPExcel/Reader/HTML.php','2019-01-13 19:12:32'),(105,1,'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php','2019-01-13 19:12:32'),(106,1,'system/library/export_import/Classes/PHPExcel/Reader/IReader.php','2019-01-13 19:12:32'),(107,1,'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php','2019-01-13 19:12:32'),(108,1,'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php','2019-01-13 19:12:32'),(109,1,'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php','2019-01-13 19:12:32'),(110,1,'system/library/export_import/Classes/PHPExcel/RichText/Run.php','2019-01-13 19:12:32'),(111,1,'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php','2019-01-13 19:12:32'),(112,1,'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php','2019-01-13 19:12:32'),(113,1,'system/library/export_import/Classes/PHPExcel/Shared/Date.php','2019-01-13 19:12:32'),(114,1,'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php','2019-01-13 19:12:32'),(115,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher','2019-01-13 19:12:32'),(116,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher.php','2019-01-13 19:12:32'),(117,1,'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php','2019-01-13 19:12:32'),(118,1,'system/library/export_import/Classes/PHPExcel/Shared/File.php','2019-01-13 19:12:32'),(119,1,'system/library/export_import/Classes/PHPExcel/Shared/Font.php','2019-01-13 19:12:32'),(120,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA','2019-01-13 19:12:32'),(121,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE','2019-01-13 19:12:32'),(122,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE.php','2019-01-13 19:12:32'),(123,1,'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php','2019-01-13 19:12:32'),(124,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip','2019-01-13 19:12:32'),(125,1,'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php','2019-01-13 19:12:32'),(126,1,'system/library/export_import/Classes/PHPExcel/Shared/String.php','2019-01-13 19:12:32'),(127,1,'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php','2019-01-13 19:12:32'),(128,1,'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php','2019-01-13 19:12:32'),(129,1,'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php','2019-01-13 19:12:32'),(130,1,'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php','2019-01-13 19:12:32'),(131,1,'system/library/export_import/Classes/PHPExcel/Shared/trend','2019-01-13 19:12:32'),(132,1,'system/library/export_import/Classes/PHPExcel/Style/Alignment.php','2019-01-13 19:12:32'),(133,1,'system/library/export_import/Classes/PHPExcel/Style/Border.php','2019-01-13 19:12:32'),(134,1,'system/library/export_import/Classes/PHPExcel/Style/Borders.php','2019-01-13 19:12:32'),(135,1,'system/library/export_import/Classes/PHPExcel/Style/Color.php','2019-01-13 19:12:32'),(136,1,'system/library/export_import/Classes/PHPExcel/Style/Conditional.php','2019-01-13 19:12:32'),(137,1,'system/library/export_import/Classes/PHPExcel/Style/Fill.php','2019-01-13 19:12:32'),(138,1,'system/library/export_import/Classes/PHPExcel/Style/Font.php','2019-01-13 19:12:32'),(139,1,'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php','2019-01-13 19:12:32'),(140,1,'system/library/export_import/Classes/PHPExcel/Style/Protection.php','2019-01-13 19:12:32'),(141,1,'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php','2019-01-13 19:12:32'),(142,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter','2019-01-13 19:12:32'),(143,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php','2019-01-13 19:12:32'),(144,1,'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php','2019-01-13 19:12:32'),(145,1,'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php','2019-01-13 19:12:32'),(146,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php','2019-01-13 19:12:32'),(147,1,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php','2019-01-13 19:12:32'),(148,1,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php','2019-01-13 19:12:32'),(149,1,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php','2019-01-13 19:12:32'),(150,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php','2019-01-13 19:12:32'),(151,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing','2019-01-13 19:12:32'),(152,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php','2019-01-13 19:12:32'),(153,1,'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php','2019-01-13 19:12:32'),(154,1,'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php','2019-01-13 19:12:32'),(155,1,'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php','2019-01-13 19:12:32'),(156,1,'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php','2019-01-13 19:12:32'),(157,1,'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php','2019-01-13 19:12:32'),(158,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php','2019-01-13 19:12:32'),(159,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php','2019-01-13 19:12:32'),(160,1,'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php','2019-01-13 19:12:32'),(161,1,'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php','2019-01-13 19:12:32'),(162,1,'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php','2019-01-13 19:12:32'),(163,1,'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php','2019-01-13 19:12:32'),(164,1,'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php','2019-01-13 19:12:32'),(165,1,'system/library/export_import/Classes/PHPExcel/Writer/CSV.php','2019-01-13 19:12:32'),(166,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007','2019-01-13 19:12:32'),(167,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php','2019-01-13 19:12:32'),(168,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5','2019-01-13 19:12:32'),(169,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php','2019-01-13 19:12:32'),(170,1,'system/library/export_import/Classes/PHPExcel/Writer/Exception.php','2019-01-13 19:12:32'),(171,1,'system/library/export_import/Classes/PHPExcel/Writer/HTML.php','2019-01-13 19:12:32'),(172,1,'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php','2019-01-13 19:12:32'),(173,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument','2019-01-13 19:12:32'),(174,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php','2019-01-13 19:12:32'),(175,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF','2019-01-13 19:12:32'),(176,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF.php','2019-01-13 19:12:32'),(177,1,'system/library/export_import/Classes/PHPExcel/locale/bg','2019-01-13 19:12:32'),(178,1,'system/library/export_import/Classes/PHPExcel/locale/cs','2019-01-13 19:12:32'),(179,1,'system/library/export_import/Classes/PHPExcel/locale/da','2019-01-13 19:12:32'),(180,1,'system/library/export_import/Classes/PHPExcel/locale/de','2019-01-13 19:12:32'),(181,1,'system/library/export_import/Classes/PHPExcel/locale/en','2019-01-13 19:12:32'),(182,1,'system/library/export_import/Classes/PHPExcel/locale/es','2019-01-13 19:12:32'),(183,1,'system/library/export_import/Classes/PHPExcel/locale/fi','2019-01-13 19:12:32'),(184,1,'system/library/export_import/Classes/PHPExcel/locale/fr','2019-01-13 19:12:32'),(185,1,'system/library/export_import/Classes/PHPExcel/locale/hu','2019-01-13 19:12:32'),(186,1,'system/library/export_import/Classes/PHPExcel/locale/it','2019-01-13 19:12:32'),(187,1,'system/library/export_import/Classes/PHPExcel/locale/nl','2019-01-13 19:12:32'),(188,1,'system/library/export_import/Classes/PHPExcel/locale/no','2019-01-13 19:12:32'),(189,1,'system/library/export_import/Classes/PHPExcel/locale/pl','2019-01-13 19:12:32'),(190,1,'system/library/export_import/Classes/PHPExcel/locale/pt','2019-01-13 19:12:32'),(191,1,'system/library/export_import/Classes/PHPExcel/locale/ru','2019-01-13 19:12:32'),(192,1,'system/library/export_import/Classes/PHPExcel/locale/sv','2019-01-13 19:12:32'),(193,1,'system/library/export_import/Classes/PHPExcel/locale/tr','2019-01-13 19:12:32'),(194,1,'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php','2019-01-13 19:12:32'),(195,1,'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt','2019-01-13 19:12:32'),(196,1,'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php','2019-01-13 19:12:32'),(197,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php','2019-01-13 19:12:32'),(198,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php','2019-01-13 19:12:32'),(199,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color','2019-01-13 19:12:32'),(200,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php','2019-01-13 19:12:32'),(201,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php','2019-01-13 19:12:32'),(202,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php','2019-01-13 19:12:32'),(203,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php','2019-01-13 19:12:32'),(204,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php','2019-01-13 19:12:32'),(205,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style','2019-01-13 19:12:32'),(206,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer','2019-01-13 19:12:32'),(207,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php','2019-01-13 19:12:32'),(208,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer','2019-01-13 19:12:32'),(209,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php','2019-01-13 19:12:32'),(210,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT','2019-01-13 19:12:32'),(211,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php','2019-01-13 19:12:32'),(212,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php','2019-01-13 19:12:32'),(213,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php','2019-01-13 19:12:32'),(214,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php','2019-01-13 19:12:32'),(215,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php','2019-01-13 19:12:32'),(216,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php','2019-01-13 19:12:32'),(217,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils','2019-01-13 19:12:32'),(218,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php','2019-01-13 19:12:32'),(219,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS','2019-01-13 19:12:32'),(220,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php','2019-01-13 19:12:32'),(221,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt','2019-01-13 19:12:32'),(222,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php','2019-01-13 19:12:32'),(223,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt','2019-01-13 19:12:32'),(224,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php','2019-01-13 19:12:32'),(225,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php','2019-01-13 19:12:32'),(226,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php','2019-01-13 19:12:32'),(227,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php','2019-01-13 19:12:32'),(228,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php','2019-01-13 19:12:32'),(229,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php','2019-01-13 19:12:32'),(230,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php','2019-01-13 19:12:32'),(231,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column','2019-01-13 19:12:32'),(232,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php','2019-01-13 19:12:32'),(233,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php','2019-01-13 19:12:32'),(234,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php','2019-01-13 19:12:32'),(235,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php','2019-01-13 19:12:32'),(236,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php','2019-01-13 19:12:32'),(237,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php','2019-01-13 19:12:32'),(238,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php','2019-01-13 19:12:32'),(239,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php','2019-01-13 19:12:32'),(240,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php','2019-01-13 19:12:32'),(241,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php','2019-01-13 19:12:32'),(242,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php','2019-01-13 19:12:32'),(243,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php','2019-01-13 19:12:32'),(244,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php','2019-01-13 19:12:32'),(245,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php','2019-01-13 19:12:32'),(246,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php','2019-01-13 19:12:32'),(247,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php','2019-01-13 19:12:32'),(248,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php','2019-01-13 19:12:32'),(249,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php','2019-01-13 19:12:32'),(250,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php','2019-01-13 19:12:32'),(251,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php','2019-01-13 19:12:32'),(252,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php','2019-01-13 19:12:32'),(253,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php','2019-01-13 19:12:32'),(254,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php','2019-01-13 19:12:32'),(255,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell','2019-01-13 19:12:32'),(256,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php','2019-01-13 19:12:32'),(257,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php','2019-01-13 19:12:32'),(258,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php','2019-01-13 19:12:32'),(259,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php','2019-01-13 19:12:32'),(260,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php','2019-01-13 19:12:32'),(261,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php','2019-01-13 19:12:32'),(262,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php','2019-01-13 19:12:32'),(263,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php','2019-01-13 19:12:32'),(264,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php','2019-01-13 19:12:32'),(265,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php','2019-01-13 19:12:32'),(266,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php','2019-01-13 19:12:32'),(267,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php','2019-01-13 19:12:32'),(268,1,'system/library/export_import/Classes/PHPExcel/locale/bg/config','2019-01-13 19:12:32'),(269,1,'system/library/export_import/Classes/PHPExcel/locale/cs/config','2019-01-13 19:12:32'),(270,1,'system/library/export_import/Classes/PHPExcel/locale/cs/functions','2019-01-13 19:12:32'),(271,1,'system/library/export_import/Classes/PHPExcel/locale/da/config','2019-01-13 19:12:32'),(272,1,'system/library/export_import/Classes/PHPExcel/locale/da/functions','2019-01-13 19:12:32'),(273,1,'system/library/export_import/Classes/PHPExcel/locale/de/config','2019-01-13 19:12:32'),(274,1,'system/library/export_import/Classes/PHPExcel/locale/de/functions','2019-01-13 19:12:32'),(275,1,'system/library/export_import/Classes/PHPExcel/locale/en/uk','2019-01-13 19:12:33'),(276,1,'system/library/export_import/Classes/PHPExcel/locale/es/config','2019-01-13 19:12:33'),(277,1,'system/library/export_import/Classes/PHPExcel/locale/es/functions','2019-01-13 19:12:33'),(278,1,'system/library/export_import/Classes/PHPExcel/locale/fi/config','2019-01-13 19:12:33'),(279,1,'system/library/export_import/Classes/PHPExcel/locale/fi/functions','2019-01-13 19:12:33'),(280,1,'system/library/export_import/Classes/PHPExcel/locale/fr/config','2019-01-13 19:12:33'),(281,1,'system/library/export_import/Classes/PHPExcel/locale/fr/functions','2019-01-13 19:12:33'),(282,1,'system/library/export_import/Classes/PHPExcel/locale/hu/config','2019-01-13 19:12:33'),(283,1,'system/library/export_import/Classes/PHPExcel/locale/hu/functions','2019-01-13 19:12:33'),(284,1,'system/library/export_import/Classes/PHPExcel/locale/it/config','2019-01-13 19:12:33'),(285,1,'system/library/export_import/Classes/PHPExcel/locale/it/functions','2019-01-13 19:12:33'),(286,1,'system/library/export_import/Classes/PHPExcel/locale/nl/config','2019-01-13 19:12:33'),(287,1,'system/library/export_import/Classes/PHPExcel/locale/nl/functions','2019-01-13 19:12:33'),(288,1,'system/library/export_import/Classes/PHPExcel/locale/no/config','2019-01-13 19:12:33'),(289,1,'system/library/export_import/Classes/PHPExcel/locale/no/functions','2019-01-13 19:12:33'),(290,1,'system/library/export_import/Classes/PHPExcel/locale/pl/config','2019-01-13 19:12:33'),(291,1,'system/library/export_import/Classes/PHPExcel/locale/pl/functions','2019-01-13 19:12:33'),(292,1,'system/library/export_import/Classes/PHPExcel/locale/pt/br','2019-01-13 19:12:33'),(293,1,'system/library/export_import/Classes/PHPExcel/locale/pt/config','2019-01-13 19:12:33'),(294,1,'system/library/export_import/Classes/PHPExcel/locale/pt/functions','2019-01-13 19:12:33'),(295,1,'system/library/export_import/Classes/PHPExcel/locale/ru/config','2019-01-13 19:12:33'),(296,1,'system/library/export_import/Classes/PHPExcel/locale/ru/functions','2019-01-13 19:12:33'),(297,1,'system/library/export_import/Classes/PHPExcel/locale/sv/config','2019-01-13 19:12:33'),(298,1,'system/library/export_import/Classes/PHPExcel/locale/sv/functions','2019-01-13 19:12:33'),(299,1,'system/library/export_import/Classes/PHPExcel/locale/tr/config','2019-01-13 19:12:33'),(300,1,'system/library/export_import/Classes/PHPExcel/locale/tr/functions','2019-01-13 19:12:33'),(301,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php','2019-01-13 19:12:33'),(302,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php','2019-01-13 19:12:33'),(303,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php','2019-01-13 19:12:33'),(304,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php','2019-01-13 19:12:33'),(305,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php','2019-01-13 19:12:33'),(306,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer','2019-01-13 19:12:33'),(307,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php','2019-01-13 19:12:33'),(308,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer','2019-01-13 19:12:33'),(309,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php','2019-01-13 19:12:33'),(310,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php','2019-01-13 19:12:33'),(311,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php','2019-01-13 19:12:33'),(312,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php','2019-01-13 19:12:33'),(313,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php','2019-01-13 19:12:33'),(314,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php','2019-01-13 19:12:33'),(315,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php','2019-01-13 19:12:33'),(316,1,'system/library/export_import/Classes/PHPExcel/locale/en/uk/config','2019-01-13 19:12:33'),(317,1,'system/library/export_import/Classes/PHPExcel/locale/pt/br/config','2019-01-13 19:12:33'),(318,1,'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions','2019-01-13 19:12:33'),(319,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php','2019-01-13 19:12:33'),(320,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE','2019-01-13 19:12:33'),(321,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php','2019-01-13 19:12:33'),(322,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php','2019-01-13 19:12:33'),(323,2,'admin/controller/extension/module/fb_chat.php','2019-01-15 22:40:03'),(324,2,'admin/language/en-gb/extension/module/fb_chat.php','2019-01-15 22:40:03'),(325,2,'admin/view/template/extension/module/fb_chat.twig','2019-01-15 22:40:03');
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'Зона НДС','Облагаемые НДС','2014-05-21 22:30:20','2014-09-09 11:48:13');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','О нас','',''),(5,1,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','Условия соглашения','',''),(3,1,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','Политика Безопасности','',''),(6,1,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','Доставка','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'Russian','ru-ru','ru_RU.UTF-8,ru_RU,russian','ru-ru.png','russian',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(67,1,'carousel.29','content_top',3),(66,1,'slideshow.27','content_top',1),(65,1,'featured.28','content_top',2),(75,3,'banner.30','column_left',2),(74,3,'category','column_left',1);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(54,3,0,'product/category'),(42,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Миллиметр','мм');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0),(11,'Tiemme','',0),(12,'Bugatti','',0),(13,'GF','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,1,'Export/Import Tool (V3.20) for OpenCart 3.x','Export/Import Tool (V3.20) for OpenCart 3.x','mhccorp.com','3.x-3.20','https://www.mhccorp.com','<modification>\n	<name>Export/Import Tool (V3.20) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.20) for OpenCart 3.x</code>\n	<version>3.x-3.20</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n',1,'2019-01-13 19:12:36'),(2,2,'OpenCart Facebook Messenger','ehub_facebook_chat_plugin','Einfachub','1.0 ','http://www.einfachub.com','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n     <name><![CDATA[OpenCart Facebook Messenger]]></name>\r\n     <code>ehub_facebook_chat_plugin</code>\r\n     <version>1.0 </version>\r\n     <author>Einfachub</author>   \r\n     <link>http://www.einfachub.com</link> \r\n\r\n     <file path=\"catalog/controller/common/header.php\">\r\n     	<operation >\r\n     		<search>\r\n     			<![CDATA[   $this->load->model(\'setting/extension\');]]> \r\n     		</search>\r\n     		<add position=\"after\">\r\n              <![CDATA[     $this->load->model(\'setting/setting\');]]>\r\n            </add>\r\n        </operation>\r\n        <operation >\r\n            <search>\r\n                <![CDATA[       $data[\'home\'] = $this->url->link(\'common/home\');]]> \r\n            </search>\r\n            <add position=\"before\">\r\n              <![CDATA[\r\n                $fb_settings = $this->model_setting_setting->getSetting(\'module_fb_chat\');\r\n                if(!empty($fb_settings)){\r\n                $data[\'module_fb_js_sdk\']  = html_entity_decode($fb_settings[\'module_fb_chat_sdk\']);\r\n                $data[\'module_fb_chat_status\']  = html_entity_decode($fb_settings[\'module_fb_chat_status\']);}]]>\r\n            </add>\r\n        </operation>\r\n     </file>\r\n\r\n     <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n        <operation >\r\n            <search>\r\n                <![CDATA[<body>]]> \r\n            </search>\r\n            <add position=\"after\">\r\n              <![CDATA[ {% if module_fb_chat_status %}  {{ module_fb_js_sdk }} {% endif %} ]]>\r\n            </add>\r\n        </operation>\r\n     </file>\r\n</modification>',1,'2019-01-15 22:40:06');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(28,'Home Page','featured','{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_shipment`
--

LOCK TABLES `oc_order_shipment` WRITE;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (1,1,'Ожидание'),(2,1,'В обработке'),(3,1,'Доставлено'),(7,1,'Отменено'),(5,1,'Сделка завершена'),(8,1,'Возврат'),(9,1,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(11,1,'Возмещенный'),(12,1,'Полностью измененный'),(13,1,'Полный возврат'),(16,1,'Аннулированный'),(15,1,'Обработанный'),(14,1,'Просроченный');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10301086 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (10101001,'pr236 0002','','','','','','','',939,7,'img/10101001.jpg',11,1,113.0000,200,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:06:50','2011-09-30 01:05:39'),(10101003,'pr236 0032','','','','','','','',7,6,'img/10101003.jpg',11,1,137.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:59:00','2011-09-30 01:05:23'),(10101004,'pr236 0010','','','','','','','',1000,6,'img/10101004.jpg',11,1,114.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 17:00:10','2011-09-30 01:06:00'),(10101010,'pr236 0003','','','','','','','',1000,6,'img/10101010.jpg',11,1,165.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 17:08:31','2011-09-30 01:06:29'),(10101011,'pr236 0006','','','','','','','',1000,6,'img/10101011.jpg',11,1,187.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:07:54','2011-09-30 01:07:17'),(10101012,'pr236 0038','','','','','','','',1000,5,'img/10101012.jpg',11,0,204.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 18:08:31','2011-09-30 01:06:17'),(10101013,'pr236 0007','','','','','','','',994,6,'img/10101013.jpg',11,0,169.5000,100,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:09:19','2011-09-30 01:07:12'),(10101014,'pr236 0019','','','','','','','',970,5,'img/10101014.jpg',11,1,190.5000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:12','2011-09-30 01:06:53'),(10101020,'pr236 0012','','','','','','','',977,5,'img/10101020.jpg',11,1,246.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:26','2011-09-30 01:06:44'),(10101021,'pr236 0011','','','','','','','',990,5,'img/10101021.jpg',11,1,274.5000,400,9,'2009-02-04',1.00000000,0,1.00000000,2.00000000,3.00000000,1,1,1,0,1,0,'2009-02-03 21:07:37','2011-09-30 00:46:19'),(10101023,'pr236 0005','','','','','','','',1000,5,'img/10101023.jpg',11,1,250.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:00','2011-09-30 01:05:53'),(10101024,'pr236 0014','','','','','','','',998,5,'img/10101024.jpg',11,1,290.0000,0,100,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:17','2011-09-15 22:22:01'),(10101030,'pr236 0035','','','','','','','',1000,5,'img/10101030.jpg',11,1,485.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2009-02-03 21:08:29','2011-09-30 01:06:39'),(10101031,'pr236 0031','','','','','','','',1000,5,'img/10101031.jpg',11,1,531.0000,400,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2009-02-03 21:08:40','2011-09-30 01:05:28'),(10101032,'pr236 0048','test 1','','','','','','test 2',995,5,'img/10101032.jpg',11,1,0.5000,0,9,'2009-02-08',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-08 17:21:51','2011-09-30 01:07:06'),(10101033,'pr236 0008','','','','','','','',995,8,'img/10101033.jpg',11,1,403.5000,0,9,'2011-04-25',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:34','2011-09-30 01:06:23'),(10101034,'pr236 0023','','','','','','','',995,8,'img/10101034.jpg',11,1,449.0000,0,9,'2011-04-26',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:35','2011-09-30 01:06:24'),(10101040,'pr236 0009','','','','','','','',995,8,'img/10101040.jpg',11,1,571.5000,0,9,'2011-04-27',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:36','2011-09-30 01:06:25'),(10101041,'pr236 0029','','','','','','','',995,8,'img/10101041.jpg',11,1,627.5000,0,9,'2011-04-28',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:37','2011-09-30 01:06:26'),(10101050,'pr236 0004','','','','','','','',995,8,'img/10101050.jpg',11,1,928.5000,0,9,'2011-04-29',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:38','2011-09-30 01:06:27'),(10101051,'pr236 0026','','','','','','','',995,8,'img/10101051.jpg',11,1,1025.0000,0,9,'2011-04-30',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:39','2011-09-30 01:06:28'),(10101060,'pr231 0037','','','','','','','',995,8,'img/10101060.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:40','2011-09-30 01:06:29'),(10101070,'pr231 0021','','','','','','','',995,8,'img/10101070.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:41','2011-09-30 01:06:30'),(10101080,'pr231 0027','','','','','','','',995,8,'img/10101080.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:42','2011-09-30 01:06:31'),(10101090,'pr212 0003','','','','','','','',995,8,'img/10101090.jpg',11,1,180.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:43','2011-09-30 01:06:32'),(10101091,'pr212 0001','','','','','','','',995,8,'img/10101091.jpg',11,1,268.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:44','2011-09-30 01:06:33'),(10101092,'pr212 0002','','','','','','','',995,8,'img/10101092.jpg',11,1,417.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:45','2011-09-30 01:06:34'),(10101093,'pr212 0004','','','','','','','',995,8,'img/10101093.jpg',11,1,633.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:46','2011-09-30 01:06:35'),(10101100,'pr212 0008','','','','','','','',995,8,'img/10101100.jpg',11,1,236.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:47','2011-09-30 01:06:36'),(10101101,'pr212 0005','','','','','','','',995,8,'img/10101101.jpg',11,1,354.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:48','2011-09-30 01:06:37'),(10101102,'pr212 0006','','','','','','','',995,8,'img/10101102.jpg',11,1,599.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:49','2011-09-30 01:06:38'),(10101140,'pr295 0001','','','','','','','',995,8,'img/10101140.jpg',11,1,172.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:50','2011-09-30 01:06:39'),(10101150,'pr250 0001','','','','','','','',995,8,'img/10101150.jpg',11,1,191.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:51','2011-09-30 01:06:40'),(10101151,'pr250 0003','','','','','','','',995,8,'img/10101151.jpg',11,1,250.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:52','2011-09-30 01:06:41'),(10101152,'pr250 0004','','','','','','','',995,8,'img/10101152.jpg',11,1,572.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:53','2011-09-30 01:06:42'),(10101200,'pr212 0043','','','','','','','',995,8,'img/10101200.jpg',11,1,666.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:54','2011-09-30 01:06:43'),(10101201,'pr212 0042','','','','','','','',995,8,'img/10101201.jpg',11,1,666.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:55','2011-09-30 01:06:44'),(10101210,'pr212 0033','','','','','','','',995,8,'img/10101210.jpg',11,1,1384.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:56','2011-09-30 01:06:45'),(10101211,'pr212 0030','','','','','','','',995,8,'img/10101211.jpg',11,1,1384.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:57','2011-09-30 01:06:46'),(10101220,'pr212 0031','','','','','','','',995,8,'img/10101220.jpg',11,1,745.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:58','2011-09-30 01:06:47'),(10101221,'pr212 0032','','','','','','','',995,8,'img/10101221.jpg',11,1,745.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:59','2011-09-30 01:06:48'),(10102001,'pr261 0018','','','','','','','',995,8,'img/10102001.jpg',11,1,206.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:49'),(10102002,'pr261 0013','','','','','','','',995,8,'img/10102002.jpg',11,1,213.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:50'),(10102004,'pr261 0006','','','','','','','',995,8,'img/10102004.jpg',11,1,212.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:51'),(10102005,'pr261 0008','','','','','','','',995,8,'img/10102005.jpg',11,1,217.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:52'),(10102010,'pr261 0019','','','','','','','',995,8,'img/10102010.jpg',11,1,332.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:53'),(10102011,'pr261 0014','','','','','','','',995,8,'img/10102011.jpg',11,1,343.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:54'),(10102013,'pr261 0004','','','','','','','',995,8,'img/10102013.jpg',11,1,339.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:55'),(10102014,'pr261 0011','','','','','','','',995,8,'img/10102014.jpg',11,1,347.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:56'),(10102020,'pr261 0021','','','','','','','',995,8,'img/10102020.jpg',11,1,499.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:57'),(10102021,'pr261 0017','','','','','','','',995,8,'img/10102021.jpg',11,1,507.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:58'),(10102023,'pr261 0002','','','','','','','',995,8,'img/10102023.jpg',11,1,510.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:59'),(10102024,'pr261 0007','','','','','','','',995,8,'img/10102024.jpg',11,1,515.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102030,'pr261 0003','','','','','','','',995,8,'img/10102030.jpg',11,1,807.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102031,'pr261 0009','','','','','','','',995,8,'img/10102031.jpg',11,1,822.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102040,'pr261 0005','','','','','','','',995,8,'img/10102040.jpg',11,1,1145.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102041,'pr261 0015','','','','','','','',995,8,'img/10102041.jpg',11,1,1204.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102050,'pr261 0001','','','','','','','',995,8,'img/10102050.jpg',11,1,1691.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102051,'pr261 0016','','','','','','','',995,8,'img/10102051.jpg',11,1,1778.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102060,'pr261 0010','','','','','','','',995,8,'img/10102060.jpg',11,1,4863.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102070,'pr261 0012','','','','','','','',995,8,'img/10102070.jpg',11,1,7034.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10102080,'pr261 0020','','','','','','','',995,8,'img/10102080.jpg',11,1,13591.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103120,'pr295 0025','','','','','','','',995,8,'img/10103120.jpg',11,1,898.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103121,'pr295 0031','','','','','','','',995,8,'img/10103121.jpg',11,1,1348.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103122,'pr295 0030','','','','','','','',995,8,'img/10103122.jpg',11,1,1872.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103123,'pr295 0051','','','','','','','',995,8,'img/10103123.jpg',11,1,3887.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103124,'pr295 0057','','','','','','','',995,8,'img/10103124.jpg',11,1,6719.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103125,'pr295 0052','','','','','','','',995,8,'img/10103125.jpg',11,1,10342.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103130,'pr295 0058','','','','','','','',995,8,'img/10103130.jpg',11,1,898.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103131,'pr295 0053','','','','','','','',995,8,'img/10103131.jpg',11,1,1348.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103132,'pr295 0056','','','','','','','',995,8,'img/10103132.jpg',11,1,1872.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103133,'pr295 0065','','','','','','','',995,8,'img/10103133.jpg',11,1,3887.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103134,'pr295 0071','','','','','','','',995,8,'img/10103134.jpg',11,1,6719.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10103135,'pr295 0072','','','','','','','',995,8,'img/10103135.jpg',11,1,10342.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105001,'pr295 0018','','','','','','','',995,8,'img/10105001.jpg',11,1,157.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105002,'pr295 0011','','','','','','','',995,8,'img/10105002.jpg',11,1,150.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105005,'pr295 0073','','','','','','','',995,8,'img/10105005.jpg',11,1,165.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105006,'pr295 0016','','','','','','','',995,8,'img/10105006.jpg',11,1,161.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105010,'pr290 0006','','','','','','','',995,8,'img/10105010.jpg',11,1,118.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105011,'pr290 0001','','','','','','','',995,8,'img/10105011.jpg',11,1,118.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105012,'pr290 0008','','','','','','','',995,8,'img/10105012.jpg',11,1,143.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105020,'pr290 0053','','','','','','','',995,8,'img/10105020.jpg',11,1,132.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105021,'pr290 0042','','','','','','','',995,8,'img/10105021.jpg',11,1,140.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10105022,'pr290 0054','','','','','','','',995,8,'img/10105022.jpg',11,1,129.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10106001,'pr168 0010','','','','','','','',995,8,'img/10106001.jpg',11,1,554.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10106002,'pr168 0007','','','','','','','',995,8,'img/10106002.jpg',11,1,581.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10106003,'pr168 0025','','','','','','','',995,8,'img/10106003.jpg',11,1,643.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110001,'pr221 0002','','','','','','','',995,8,'img/10110001.jpg',11,1,181.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110002,'pr221 0004','','','','','','','',995,8,'img/10110002.jpg',11,1,185.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110003,'pr221 0001','','','','','','','',995,8,'img/10110003.jpg',11,1,181.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110004,'pr221 0012','','','','','','','',995,8,'img/10110004.jpg',11,1,185.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110010,'pr221 0006','','','','','','','',995,8,'img/10110010.jpg',11,1,244.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110011,'pr221 0008','','','','','','','',995,8,'img/10110011.jpg',11,1,252.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110012,'pr221 0003','','','','','','','',995,8,'img/10110012.jpg',11,1,244.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110013,'pr221 0016','','','','','','','',995,8,'img/10110013.jpg',11,1,252.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110020,'pr221 0009','','','','','','','',995,8,'img/10110020.jpg',11,1,371.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110021,'pr221 0015','','','','','','','',995,8,'img/10110021.jpg',11,1,381.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110022,'pr221 0007','','','','','','','',995,8,'img/10110022.jpg',11,1,371.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110023,'pr221 0017','','','','','','','',995,8,'img/10110023.jpg',11,1,381.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110030,'pr221 0010','','','','','','','',995,8,'img/10110030.jpg',11,1,644.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110031,'pr221 0022','','','','','','','',995,8,'img/10110031.jpg',11,1,661.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110040,'pr221 0011','','','','','','','',995,8,'img/10110040.jpg',11,1,948.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110041,'pr221 0023','','','','','','','',995,8,'img/10110041.jpg',11,1,973.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110050,'pr221 0005','','','','','','','',995,8,'img/10110050.jpg',11,1,1496.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110051,'pr221 0025','','','','','','','',995,8,'img/10110051.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110060,'pr221 0013','','','','','','','',995,8,'img/10110060.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110070,'pr221 0014','','','','','','','',995,8,'img/10110070.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110080,'pr221 0019','','','','','','','',995,8,'img/10110080.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110090,'pr222 0001','','','','','','','',995,8,'img/10110090.jpg',11,1,215.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10110091,'pr222 0016','','','','','','','',995,8,'img/10110091.jpg',11,1,310.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201001,'prсер. 302','','','','','','','',995,8,'img/10201001.jpg',12,1,180.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201002,'prсер. 302','','','','','','','',995,8,'img/10201002.jpg',12,1,296.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201003,'prсер. 302','','','','','','','',995,8,'img/10201003.jpg',12,1,448.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201010,'prсер. 307','','','','','','','',995,8,'img/10201010.jpg',12,1,193.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201011,'prсер. 307','','','','','','','',995,8,'img/10201011.jpg',12,1,322.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201012,'prсер. 307','','','','','','','',995,8,'img/10201012.jpg',12,1,485.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201020,'prсер. 327','','','','','','','',995,8,'img/10201020.jpg',12,1,244.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201021,'prсер. 327','','','','','','','',995,8,'img/10201021.jpg',12,1,348.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201022,'prсер. 327','','','','','','','',995,8,'img/10201022.jpg',12,1,458.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201030,'prсер. 300','','','','','','','',995,8,'img/10201030.jpg',12,1,174.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201031,'prсер. 300','','','','','','','',995,8,'img/10201031.jpg',12,1,294.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201032,'prсер. 300','','','','','','','',995,8,'img/10201032.jpg',12,1,448.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201033,'prсер. 300','','','','','','','',995,8,'img/10201033.jpg',12,1,641.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201034,'prсер. 300','','','','','','','',995,8,'img/10201034.jpg',12,1,1046.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201035,'prсер. 300','','','','','','','',995,8,'img/10201035.jpg',12,1,1720.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201040,'prсер. 305','','','','','','','',995,8,'img/10201040.jpg',12,1,225.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201041,'prсер. 305','','','','','','','',995,8,'img/10201041.jpg',12,1,300.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201042,'prсер. 305','','','','','','','',995,8,'img/10201042.jpg',12,1,485.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201043,'prсер. 305','','','','','','','',995,8,'img/10201043.jpg',12,1,798.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201044,'prсер. 305','','','','','','','',995,8,'img/10201044.jpg',12,1,973.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201045,'prсер. 305','','','','','','','',995,8,'img/10201045.jpg',12,1,1684.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201050,'prсер. 322T','','','','','','','',995,8,'img/10201050.jpg',12,1,276.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201051,'prсер. 322T','','','','','','','',995,8,'img/10201051.jpg',12,1,390.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10201052,'prсер. 322T','','','','','','','',995,8,'img/10201052.jpg',13,1,690.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301001,'pr7100M1N040400A','','','','','','','',995,8,'img/10301001.jpg',13,1,133.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301002,'pr7100M1N050500A','','','','','','','',995,8,'img/10301002.jpg',13,1,197.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301003,'pr7100M1N101000A','','','','','','','',995,8,'img/10301003.jpg',13,1,294.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301010,'pr7100M2N040400A','','','','','','','',995,8,'img/10301010.jpg',13,1,137.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301011,'pr7100M2N050500A','','','','','','','',995,8,'img/10301011.jpg',13,1,204.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301012,'pr7100M2N101000A','','','','','','','',995,8,'img/10301012.jpg',13,1,304.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301020,'pr7100M3N040400A','','','','','','','',995,8,'img/10301020.jpg',13,1,142.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301021,'pr7100M3N050500A','','','','','','','',995,8,'img/10301021.jpg',13,1,215.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301022,'pr7100M3N101000A','','','','','','','',995,8,'img/10301022.jpg',13,1,316.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301030,'pr7100L1N040400A','','','','','','','',995,8,'img/10301030.jpg',13,1,138.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301031,'pr7100L1N050500A','','','','','','','',995,8,'img/10301031.jpg',13,1,203.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301032,'pr7100L1N101000A','','','','','','','',995,8,'img/10301032.jpg',13,1,296.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301033,'pr7100L1N121200A','','','','','','','',995,8,'img/10301033.jpg',13,1,567.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301034,'pr7100L1N141400A','','','','','','','',995,8,'img/10301034.jpg',13,1,779.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301035,'pr7100L1N202000A','','','','','','','',995,8,'img/10301035.jpg',13,1,1261.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301040,'pr7100L2N040400A','','','','','','','',995,8,'img/10301040.jpg',13,1,142.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301041,'pr7100L2N050500A','','','','','','','',995,8,'img/10301041.jpg',13,1,211.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301042,'pr7100L2N101000A','','','','','','','',995,8,'img/10301042.jpg',13,1,315.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301043,'pr7100L2N121200A','','','','','','','',995,8,'img/10301043.jpg',13,1,646.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301044,'pr7100L2N141400A','','','','','','','',995,8,'img/10301044.jpg',13,1,856.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301045,'pr7100L2N202000A','','','','','','','',995,8,'img/10301045.jpg',13,1,1344.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301080,'pr7100M5N040401A','','','','','','','',995,8,'img/10301080.jpg',13,1,228.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301081,'pr7100M5N050501A','','','','','','','',995,8,'img/10301081.jpg',13,1,340.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301082,'pr7100M5N101001A','','','','','','','',995,8,'img/10301082.jpg',13,1,506.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301083,'pr7100L5N121201A','','','','','','','',995,8,'img/10301083.jpg',13,1,758.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301084,'pr7100L5N141401A','','','','','','','',995,8,'img/10301084.jpg',13,1,1155.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10301085,'pr7100L5N202001A','','','','','','','',995,8,'img/10301085.jpg',13,1,1845.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10101002,'pr236 0001','','','','','','','',999,6,'img/10101002.jpg',11,1,129.5000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,5,'2009-02-03 16:42:17','2011-09-30 01:06:08'),(10101005,'pr236 0015','','','','','','','',999,6,'img/10101005.jpg',11,1,131.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,1,'2009-02-03 17:07:26','2011-09-30 01:07:22'),(10101022,'pr236 0040','','','','','','','',929,5,'img/10101022.jpg',11,0,416.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2009-02-03 21:07:49','2011-09-30 01:05:46');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_advertise_google`
--

DROP TABLE IF EXISTS `oc_product_advertise_google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_advertise_google` (
  `product_advertise_google_id` int(11) unsigned NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_advertise_google`
--

LOCK TABLES `oc_product_advertise_google` WRITE;
/*!40000 ALTER TABLE `oc_product_advertise_google` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_advertise_google` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_advertise_google_status`
--

DROP TABLE IF EXISTS `oc_product_advertise_google_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_advertise_google_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_advertise_google_status`
--

LOCK TABLES `oc_product_advertise_google_status` WRITE;
/*!40000 ALTER TABLE `oc_product_advertise_google_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_advertise_google_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_advertise_google_target`
--

DROP TABLE IF EXISTS `oc_product_advertise_google_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_advertise_google_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_advertise_google_target`
--

LOCK TABLES `oc_product_advertise_google_target` WRITE;
/*!40000 ALTER TABLE `oc_product_advertise_google_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_advertise_google_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (10101001,1,'Кран шар. 1/2&quot; в/в (бабочка) Tiemme 236 0002','&lt;p&gt;\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\n	&lt;li&gt;\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\n	&lt;li&gt;\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\n	&lt;li&gt;\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\n	&lt;li&gt;\n		GPS and A-GPS ready&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\n	&lt;li&gt;\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\n	&lt;li&gt;\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\n	&lt;li&gt;\n		5 megapixel color camera with auto focus&lt;/li&gt;\n	&lt;li&gt;\n		VGA CMOS color camera&lt;/li&gt;\n	&lt;li&gt;\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\n	&lt;li&gt;\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\n	&lt;li&gt;\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\n	&lt;li&gt;\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\n	&lt;li&gt;\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\n	&lt;li&gt;\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\n	&lt;li&gt;\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\n&lt;/ul&gt;\n','','Tiemme','',''),(10101002,1,'Кран шар. 1/2&quot; в/н (бабочка) Tiemme 236 0001','&lt;p&gt;\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\n	&lt;li&gt;\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\n	&lt;li&gt;\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\n	&lt;li&gt;\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\n	&lt;li&gt;\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\n	&lt;li&gt;\n		Built-in GPS&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\n	&lt;li&gt;\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\n	&lt;li&gt;\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\n	&lt;li&gt;\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\n	&lt;li&gt;\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\n	&lt;li&gt;\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\n	&lt;li&gt;\n		3.5mm stereo headset jack&lt;/li&gt;\n	&lt;li&gt;\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\n&lt;/ul&gt;\n','','Tiemme','',''),(10101003,1,'Кран шар. 1/2&quot; н/н (бабочка) Tiemme 236 0032','&lt;p&gt;\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\n','','Tiemme','',''),(10101004,1,'Кран шар. 1/2&quot; в/в (ручка) Tiemme 236 0010','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\n		&lt;br /&gt;\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','Tiemme','',''),(10101005,1,'Кран шар. 1/2&quot; в/н (ручка) Tiemme 236 0015','&lt;p&gt;\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n','','Tiemme','',''),(10101010,1,'Кран шар. 3/4&quot; в/в (бабочка) Tiemme 236 0003','&lt;div&gt;\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\n','','Tiemme','',''),(10101011,1,'Кран шар. 3/4&quot; в/н (бабочка) Tiemme 236 0006','&lt;div&gt;\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\n	&lt;p&gt;\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\n	&lt;p&gt;\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\n&lt;/div&gt;\n','','Tiemme','',''),(10101012,1,'Кран шар. 3/4&quot; н/н (бабочка) Tiemme 236 0038','&lt;p&gt;\n	Product 8&lt;/p&gt;\n','','Tiemme','',''),(10101013,1,'Кран шар. 3/4&quot; в/в (ручка) Tiemme 236 0007','&lt;div&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\n&lt;/div&gt;\n','','Tiemme','',''),(10101014,1,'Кран шар. 3/4&quot; в/н (ручка) Tiemme 236 0019','&lt;p class=&quot;intro&quot;&gt;\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\n','','Tiemme','',''),(10101020,1,'Кран шар. 1&quot; в/в (бабочка) Tiemme 236 0012','&lt;div&gt;\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\n','','Tiemme','',''),(10101021,1,'Кран шар. 1&quot; в/н (бабочка) Tiemme 236 0011','&lt;p&gt;\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\n&lt;h3&gt;\n	Features:&lt;/h3&gt;\n&lt;p&gt;\n	Unrivaled display performance&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\n	&lt;li&gt;\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\n	&lt;li&gt;\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\n	&lt;li&gt;\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\n	&lt;li&gt;\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\n	&lt;li&gt;\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\n	&lt;li&gt;\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Simple setup and operation&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\n	&lt;li&gt;\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\n	&lt;li&gt;\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Sleek, elegant design&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\n	&lt;li&gt;\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\n	&lt;li&gt;\n		Unique hinge design for effortless adjustment&lt;/li&gt;\n	&lt;li&gt;\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;h3&gt;\n	Technical specifications&lt;/h3&gt;\n&lt;p&gt;\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\n	&lt;li&gt;\n		2048 x 1280&lt;/li&gt;\n	&lt;li&gt;\n		1920 x 1200&lt;/li&gt;\n	&lt;li&gt;\n		1280 x 800&lt;/li&gt;\n	&lt;li&gt;\n		1024 x 640&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		16.7 million&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		170° horizontal; 170° vertical&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		700:1&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		16 ms&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Antiglare hardcoat&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Display Power,&lt;/li&gt;\n	&lt;li&gt;\n		System sleep, wake&lt;/li&gt;\n	&lt;li&gt;\n		Brightness&lt;/li&gt;\n	&lt;li&gt;\n		Monitor tilt&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\n	Cable&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		DVI (Digital Visual Interface)&lt;/li&gt;\n	&lt;li&gt;\n		FireWire 400&lt;/li&gt;\n	&lt;li&gt;\n		USB 2.0&lt;/li&gt;\n	&lt;li&gt;\n		DC power (24 V)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Connectors&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\n	&lt;li&gt;\n		Two FireWire 400 ports&lt;/li&gt;\n	&lt;li&gt;\n		Kensington security port&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\n	&lt;li&gt;\n		Maximum power when operating: 150W&lt;/li&gt;\n	&lt;li&gt;\n		Energy saver mode: 3W or less&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\n	&lt;li&gt;\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\n	&lt;li&gt;\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\n	&lt;li&gt;\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		FCC Part 15 Class B&lt;/li&gt;\n	&lt;li&gt;\n		EN55022 Class B&lt;/li&gt;\n	&lt;li&gt;\n		EN55024&lt;/li&gt;\n	&lt;li&gt;\n		VCCI Class B&lt;/li&gt;\n	&lt;li&gt;\n		AS/NZS 3548 Class B&lt;/li&gt;\n	&lt;li&gt;\n		CNS 13438 Class B&lt;/li&gt;\n	&lt;li&gt;\n		ICES-003 Class B&lt;/li&gt;\n	&lt;li&gt;\n		ISO 13406 part 2&lt;/li&gt;\n	&lt;li&gt;\n		MPR II&lt;/li&gt;\n	&lt;li&gt;\n		IEC 60950&lt;/li&gt;\n	&lt;li&gt;\n		UL 60950&lt;/li&gt;\n	&lt;li&gt;\n		CSA 60950&lt;/li&gt;\n	&lt;li&gt;\n		EN60950&lt;/li&gt;\n	&lt;li&gt;\n		ENERGY STAR&lt;/li&gt;\n	&lt;li&gt;\n		TCO \'03&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\n	30-inch Apple Cinema HD Display&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\n	&lt;li&gt;\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\n	&lt;li&gt;\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\n	&lt;li&gt;\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Mac Pro, all graphic options&lt;/li&gt;\n	&lt;li&gt;\n		MacBook Pro&lt;/li&gt;\n	&lt;li&gt;\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\n	&lt;li&gt;\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\n	&lt;li&gt;\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\n	&lt;li&gt;\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\n&lt;/ul&gt;\n','','Tiemme','',''),(10101022,1,'Кран шар. 1&quot; н/н (бабочка) Tiemme 236 0040','&lt;div&gt;\n	&lt;p&gt;\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\n&lt;/div&gt;\n','','Tiemme','',''),(10101023,1,'Кран шар. 1&quot; в/в (ручка) Tiemme 236 0005','&lt;div&gt;\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\n','','Tiemme','',''),(10101024,1,'Кран шар. 1&quot; в/н (ручка) Tiemme 236 0014','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','Tiemme','',''),(10101030,1,'Кран шар. 1 1/4&quot; в/в (бабочка) Tiemme 236 0035','&lt;div&gt;\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\n','','Tiemme','',''),(10101031,1,'Кран шар. 1 1/4&quot; в/н (бабочка) Tiemme 236 0031','&lt;p&gt;\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\n','','Tiemme','',''),(10101032,1,'Кран шар. 1 1/4&quot; н/н (бабочка) Tiemme 236 0048','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','Tiemme','',''),(10101033,1,'Кран шар. 1 1/4&quot; в/в (ручка) Tiemme 236 0008','&lt;p&gt;\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\n','','Tiemme','',''),(10101034,1,'Кран шар. 1 1/4&quot; в/н (ручка) Tiemme 236 0023','','','Tiemme','',''),(10101040,1,'Кран шар. 1 1/2&quot; в/в (ручка) Tiemme 236 0009','','','Tiemme','',''),(10101041,1,'Кран шар. 1 1/2&quot; в/н (ручка) Tiemme 236 0029','','','Tiemme','',''),(10101050,1,'Кран шар. 2&quot; в/в (ручка) Tiemme 236 0004','','','Tiemme','',''),(10101051,1,'Кран шар. 2&quot; в/н (ручка) Tiemme 236 0026','','','Tiemme','',''),(10101060,1,'Кран шар. 2 1/2&quot; в/в (ручка) Tiemme 231 0037','','','Tiemme','',''),(10101070,1,'Кран шар. 3&quot; в/в (ручка) Tiemme 231 0021','','','Tiemme','',''),(10101080,1,'Кран шар. 4&quot; в/в (ручка) Tiemme 231 0027','','','Tiemme','',''),(10101090,1,'Кран шар. 1/2&quot; со сгоном (бабочка) Tiemme 212 0003','','','Tiemme','',''),(10101091,1,'Кран шар. 3/4&quot; со сгоном (бабочка) Tiemme 212 0001','','','Tiemme','',''),(10101092,1,'Кран шар. 1&quot; со сгоном (бабочка) Tiemme 212 0002','','','Tiemme','',''),(10101093,1,'Кран шар. 1 1/4&quot; со сгоном (бабочка) Tiemme 212 0004','','','Tiemme','',''),(10101100,1,'Кран шар. угл. 1/2&quot; со сгоном (бабочка) Tiemme 212 0008','','','Tiemme','',''),(10101101,1,'Кран шар. угл. 3/4&quot; со сгоном (бабочка) Tiemme 212 0005','','','Tiemme','',''),(10101102,1,'Кран шар. угл. 1&quot; со сгоном (бабочка) Tiemme 212 0006','','','Tiemme','',''),(10101140,1,'Кран шаровый сливной 1/2&quot; нар. с заглушкой Tiemme 295 0001','','','Tiemme','',''),(10101150,1,'Кран шаровый со штуцером 1/2&quot; нар. Tiemme 250 0001','','','Tiemme','',''),(10101151,1,'Кран шаровый со штуцером 3/4&quot; нар. Tiemme 250 0003','','','Tiemme','',''),(10101152,1,'Кран шаровый со штуцером 1&quot; нар. Tiemme 250 0004','','','Tiemme','',''),(10101200,1,'Кран шар. 1&quot; со сгоном и термометром (красный) Tiemme 212 0043','','','Tiemme','',''),(10101201,1,'Кран шар. 1&quot; со сгоном и термометром (синий) Tiemme 212 0042','','','Tiemme','',''),(10101210,1,'Кран шар. 1 1/4&quot; со сгоном и термометром (красный) Tiemme 212 0033','','','Tiemme','',''),(10101211,1,'Кран шар. 1 1/4&quot; со сгоном и термометром (синий) Tiemme 212 0030','','','Tiemme','',''),(10101220,1,'Кран шар. угловой 1&quot; со сгоном и термометр. (красный) Tiemme 212 0031','','','Tiemme','',''),(10101221,1,'Кран шар. угловой 1&quot; со сгоном и термометр. (синий) Tiemme 212 0032','','','Tiemme','',''),(10102001,1,'Кран шар. 1/2&quot; в/в (бабочка) Tiemme Tifone 261 0018','','','Tiemme','',''),(10102002,1,'Кран шар. 1/2&quot; в/н (бабочка) Tiemme Tifone 261 0013','','','Tiemme','',''),(10102004,1,'Кран шар. 1/2&quot; в/в (ручка) Tiemme Tifone 261 0006','','','Tiemme','',''),(10102005,1,'Кран шар. 1/2&quot; в/н (ручка) Tiemme Tifone 261 0008','','','Tiemme','',''),(10102010,1,'Кран шар. 3/4&quot; в/в (бабочка) Tiemme Tifone 261 0019','','','Tiemme','',''),(10102011,1,'Кран шар. 3/4&quot; в/н (бабочка) Tiemme Tifone 261 0014','','','Tiemme','',''),(10102013,1,'Кран шар. 3/4&quot; в/в (ручка) Tiemme Tifone 261 0004','','','Tiemme','',''),(10102014,1,'Кран шар. 3/4&quot; в/н (ручка) Tiemme Tifone 261 0011','','','Tiemme','',''),(10102020,1,'Кран шар. 1&quot; в/в (бабочка) Tiemme Tifone 261 0021','','','Tiemme','',''),(10102021,1,'Кран шар. 1&quot; в/н (бабочка) Tiemme Tifone 261 0017','','','Tiemme','',''),(10102023,1,'Кран шар. 1&quot; в/в (ручка) Tiemme Tifone 261 0002','','','Tiemme','',''),(10102024,1,'Кран шар. 1&quot; в/н (ручка) Tiemme Tifone 261 0007','','','Tiemme','',''),(10102030,1,'Кран шар. 1 1/4&quot; в/в (ручка) Tiemme Tifone 261 0003','','','Tiemme','',''),(10102031,1,'Кран шар. 1 1/4&quot; в/н (ручка) Tiemme Tifone 261 0009','','','Tiemme','',''),(10102040,1,'Кран шар. 1 1/2&quot; в/в (ручка) Tiemme Tifone 261 0005','','','Tiemme','',''),(10102041,1,'Кран шар. 1 1/2&quot; в/н (ручка) Tiemme Tifone 261 0015','','','Tiemme','',''),(10102050,1,'Кран шар. 2&quot; в/в (ручка) Tiemme Tifone 261 0001','','','Tiemme','',''),(10102051,1,'Кран шар. 2&quot; в/н (ручка) Tiemme Tifone 261 0016','','','Tiemme','',''),(10102060,1,'Кран шар. 2 1/2&quot; в/в (ручка) Tiemme Tifone 261 0010','','','Tiemme','',''),(10102070,1,'Кран шар. 3&quot; в/н (ручка) Tiemme Tifone 261 0012','','','Tiemme','',''),(10102080,1,'Кран шар. 4&quot; в/н (ручка) Tiemme Tifone 261 0020','','','Tiemme','',''),(10103120,1,'Кран шаровый трёхходовой 1/2&quot; L-порт Tiemme 295 0025','','','Tiemme','',''),(10103121,1,'Кран шаровый трёхходовой 3/4&quot; L-порт Tiemme 295 0031','','','Tiemme','',''),(10103122,1,'Кран шаровый трёхходовой 1&quot; L-порт Tiemme 295 0030','','','Tiemme','',''),(10103123,1,'Кран шаровый трёхходовой 1 1/4&quot; L-порт Tiemme 295 0051','','','Tiemme','',''),(10103124,1,'Кран шаровый трёхходовой 1 1/2&quot; L-порт Tiemme 295 0057','','','Tiemme','',''),(10103125,1,'Кран шаровый трёхходовой 2&quot; L-порт Tiemme 295 0052','','','Tiemme','',''),(10103130,1,'Кран шаровый трёхходовой 1/2&quot; T-порт Tiemme 295 0058','','','Tiemme','',''),(10103131,1,'Кран шаровый трёхходовой 3/4&quot; T-порт Tiemme 295 0053','','','Tiemme','',''),(10103132,1,'Кран шаровый трёхходовой 1&quot; T-порт Tiemme 295 0056','','','Tiemme','',''),(10103133,1,'Кран шаровый трёхходовой 1 1/4&quot; T-порт Tiemme 295 0065','','','Tiemme','',''),(10103134,1,'Кран шаровый трёхходовой 1 1/2&quot; T-порт Tiemme 295 0071','','','Tiemme','',''),(10103135,1,'Кран шаровый трёхходовой 2&quot; T-порт Tiemme 295 0072','','','Tiemme','',''),(10105001,1,'Кран шар. угл. 1/2&quot; Х 1/2&quot; н/н (хром) Tiemme 295 0018','','','Tiemme','',''),(10105002,1,'Кран шар. угл. 1/2&quot; Х 3/4&quot; н/н (хром) Tiemme 295 0011','','','Tiemme','',''),(10105005,1,'Кран шар. угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0073','','','Tiemme','',''),(10105006,1,'Вентиль угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0016','','','Tiemme','',''),(10105010,1,'Кран шар. 1/2&quot; в/в  mini (хром) Tiemme 290 0006','','','Tiemme','',''),(10105011,1,'Кран шар. 1/2&quot; в/н  mini (хром) Tiemme 290 0001','','','Tiemme','',''),(10105012,1,'Кран шар. 1/2&quot; н/н  mini (хром) Tiemme 290 0008','','','Tiemme','',''),(10105020,1,'Кран шар. 1/2&quot; в/в  mini под отвертку (хром) Tiemme 290 0053','','','Tiemme','',''),(10105021,1,'Кран шар. 1/2&quot; в/н  mini под отвертку (хром) Tiemme 290 0042','','','Tiemme','',''),(10105022,1,'Кран шар. 1/2&quot; н/н  mini под отвертку (хром) Tiemme 290 0054','','','Tiemme','',''),(10106001,1,'Кран шаровый  16 Х 16 (бабочка) ПРЕСС Tiemme 168 0010','','','Tiemme','',''),(10106002,1,'Кран шаровый  20 Х 20 (бабочка) ПРЕСС Tiemme 168 0007','','','Tiemme','',''),(10106003,1,'Кран шаровый  26 Х 26 (бабочка) ПРЕСС Tiemme 168 0025','','','Tiemme','',''),(10110001,1,'Кран шар. 1/2&quot; для ГАЗА в/в (бабочка) Tiemme 221 0002','','','Tiemme','',''),(10110002,1,'Кран шар. 1/2&quot; для ГАЗА в/н (бабочка) Tiemme 221 0004','','','Tiemme','',''),(10110003,1,'Кран шар. 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0001','','','Tiemme','',''),(10110004,1,'Кран шар. 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0012','','','Tiemme','',''),(10110010,1,'Кран шар. 3/4&quot; для ГАЗА в/в (бабочка) Tiemme 221 0006','','','Tiemme','',''),(10110011,1,'Кран шар. 3/4&quot; для ГАЗА в/н (бабочка) Tiemme 221 0008','','','Tiemme','',''),(10110012,1,'Кран шар. 3/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0003','','','Tiemme','',''),(10110013,1,'Кран шар. 3/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0016','','','Tiemme','',''),(10110020,1,'Кран шар. 1&quot; для ГАЗА в/в (бабочка) Tiemme 221 0009','','','Tiemme','',''),(10110021,1,'Кран шар. 1&quot; для ГАЗА в/н (бабочка) Tiemme 221 0015','','','Tiemme','',''),(10110022,1,'Кран шар. 1&quot; для ГАЗА в/в (ручка) Tiemme 221 0007','','','Tiemme','',''),(10110023,1,'Кран шар. 1&quot; для ГАЗА в/н (ручка) Tiemme 221 0017','','','Tiemme','',''),(10110030,1,'Кран шар. 1 1/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0010','','','Tiemme','',''),(10110031,1,'Кран шар. 1 1/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0022','','','Tiemme','',''),(10110040,1,'Кран шар. 1 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0011','','','Tiemme','',''),(10110041,1,'Кран шар. 1 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0023','','','Tiemme','',''),(10110050,1,'Кран шар. 2&quot; для ГАЗА в/в (ручка) Tiemme 221 0005','','','Tiemme','',''),(10110051,1,'Кран шар. 2&quot; для ГАЗА в/н (ручка) Tiemme 221 0025','','','Tiemme','',''),(10110060,1,'Кран шар. 2 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0013','','','Tiemme','',''),(10110070,1,'Кран шар. 3&quot; для ГАЗА в/в (ручка) Tiemme 221 0014','','','Tiemme','',''),(10110080,1,'Кран шар. 4&quot; для ГАЗА в/в (ручка) Tiemme 221 0019','','','Tiemme','',''),(10110090,1,'Кран шар. угловой 1/2&quot; для ГАЗА н/н Tiemme 222 0001','','','Tiemme','',''),(10110091,1,'Кран шар. угловой 3/4&quot; для ГАЗА н/н Tiemme 222 0016','','','Tiemme','',''),(10201001,1,'Кран шаровой 1/2&quot; в/в (бабочка) Bugatti сер. 302','','','Bugatti','',''),(10201002,1,'Кран шаровой 3/4&quot; в/в (бабочка) Bugatti сер. 302','','','Bugatti','',''),(10201003,1,'Кран шаровой 1&quot; в/в (бабочка) Bugatti сер. 302','','','Bugatti','',''),(10201010,1,'Кран шаровой 1/2&quot; в/н (бабочка) Bugatti сер. 307','','','Bugatti','',''),(10201011,1,'Кран шаровой 3/4&quot; в/н (бабочка) Bugatti сер. 307','','','Bugatti','',''),(10201012,1,'Кран шаровой 1&quot; в/н (бабочка) Bugatti сер. 307','','','Bugatti','',''),(10201020,1,'Кран шаровой 1/2&quot; н/н (бабочка) Bugatti сер. 327','','','Bugatti','',''),(10201021,1,'Кран шаровой 3/4&quot; н/н (бабочка) Bugatti сер. 327','','','Bugatti','',''),(10201022,1,'Кран шаровой 1&quot; н/н (бабочка) Bugatti сер. 327','','','Bugatti','',''),(10201030,1,'Кран шаровой 1/2&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','',''),(10201031,1,'Кран шаровой 3/4&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','',''),(10201032,1,'Кран шаровой 1&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','',''),(10201033,1,'Кран шаровой 1 1/4&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','',''),(10201034,1,'Кран шаровой 1 1/2&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','',''),(10201035,1,'Кран шаровой 2&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','',''),(10201040,1,'Кран шаровой 1/2&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','',''),(10201041,1,'Кран шаровой 3/4&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','',''),(10201042,1,'Кран шаровой 1&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','',''),(10201043,1,'Кран шаровой 1 1/4&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','',''),(10201044,1,'Кран шаровой 1 1/2&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','',''),(10201045,1,'Кран шаровой 2&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','',''),(10201050,1,'Кран шарой 1/2&quot; с американкой (бабочка) Bugatti сер. 322T','','','Bugatti','',''),(10201051,1,'Кран шарой 3/4&quot; с американкой (бабочка) Bugatti сер. 322T','','','Bugatti','',''),(10201052,1,'Кран шарой 1&quot; с американкой (бабочка) Bugatti сер. 322T','','','GF','',''),(10301001,1,'Кран шаровой 1/2&quot; в/в (бабочка) GF 7100M1N040400A','','','GF','',''),(10301002,1,'Кран шаровой 3/4&quot; в/в (бабочка) GF 7100M1N050500A','','','GF','',''),(10301003,1,'Кран шаровой 1&quot; в/в (бабочка) GF 7100M1N101000A','','','GF','',''),(10301010,1,'Кран шаровой 1/2&quot; в/н (бабочка) GF 7100M2N040400A','','','GF','',''),(10301011,1,'Кран шаровой 3/4&quot; в/н (бабочка) GF 7100M2N050500A','','','GF','',''),(10301012,1,'Кран шаровой 1&quot; в/н (бабочка) GF 7100M2N101000A','','','GF','',''),(10301020,1,'Кран шаровой 1/2&quot; н/н (бабочка) GF 7100M3N040400A','','','GF','',''),(10301021,1,'Кран шаровой 3/4&quot; н/н (бабочка) GF 7100M3N050500A','','','GF','',''),(10301022,1,'Кран шаровой 1&quot; н/н (бабочка) GF 7100M3N101000A','','','GF','',''),(10301030,1,'Кран шаровой 1/2&quot; в/в (ручка) GF 7100L1N040400A','','','GF','',''),(10301031,1,'Кран шаровой 3/4&quot; в/в (ручка) GF 7100L1N050500A','','','GF','',''),(10301032,1,'Кран шаровой 1&quot; в/в (ручка) GF 7100L1N101000A','','','GF','',''),(10301033,1,'Кран шаровой 1 1/4&quot; в/в (ручка) GF 7100L1N121200A','','','GF','',''),(10301034,1,'Кран шаровой 1 1/2&quot; в/в (ручка) GF 7100L1N141400A','','','GF','',''),(10301035,1,'Кран шаровой 2&quot; в/в (ручка) GF 7100L1N202000A','','','GF','',''),(10301040,1,'Кран шаровой 1/2&quot; в/н (ручка) GF 7100L2N040400A','','','GF','',''),(10301041,1,'Кран шаровой 3/4&quot; в/н (ручка) GF 7100L2N050500A','','','GF','',''),(10301042,1,'Кран шаровой 1&quot; в/н (ручка) GF 7100L2N101000A','','','GF','',''),(10301043,1,'Кран шаровой 1 1/4&quot; в/н (ручка) GF 7100L2N121200A','','','GF','',''),(10301044,1,'Кран шаровой 1 1/2&quot; в/н (ручка) GF 7100L2N141400A','','','GF','',''),(10301045,1,'Кран шаровой 2&quot; в/н (ручка) GF 7100L2N202000A','','','GF','',''),(10301080,1,'Кран шарой 1/2&quot; с американкой (бабочка) GF 7100M5N040401A','','','GF','',''),(10301081,1,'Кран шарой 3/4&quot; с американкой (бабочка) GF 7100M5N050501A','','','GF','',''),(10301082,1,'Кран шарой 1&quot; с американкой (бабочка) GF 7100M5N101001A','','','GF','',''),(10301083,1,'Кран шарой 1 1/4&quot; с американкой (ручка) GF 7100L5N121201A','','','GF','',''),(10301084,1,'Кран шарой 1 1/2&quot; с американкой (ручка) GF 7100L5N141401A','','','GF','',''),(10301085,1,'Кран шарой 2&quot; с американкой (ручка) GF 7100L5N202001A','','','GF','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (10101001,10101000),(10101002,10101000),(10101003,10101000),(10101004,10101000),(10101005,10101000),(10101010,10101000),(10101011,10101000),(10101012,10101000),(10101013,10101000),(10101014,10101000),(10101020,10101000),(10101021,10101000),(10101022,10101000),(10101023,10101000),(10101024,10101000),(10101030,10101000),(10101031,10101000),(10101032,10101000),(10101033,10101000),(10101034,10101000),(10101040,10101000),(10101041,10101000),(10101050,10101000),(10101051,10101000),(10101060,10101000),(10101070,10101000),(10101080,10101000),(10101090,10101000),(10101091,10101000),(10101092,10101000),(10101093,10101000),(10101100,10101000),(10101101,10101000),(10101102,10101000),(10101140,10101000),(10101150,10101000),(10101151,10101000),(10101152,10101000),(10101200,10101000),(10101201,10101000),(10101210,10101000),(10101211,10101000),(10101220,10101000),(10101221,10101000),(10102001,10102000),(10102002,10102000),(10102004,10102000),(10102005,10102000),(10102010,10102000),(10102011,10102000),(10102013,10102000),(10102014,10102000),(10102020,10102000),(10102021,10102000),(10102023,10102000),(10102024,10102000),(10102030,10102000),(10102031,10102000),(10102040,10102000),(10102041,10102000),(10102050,10102000),(10102051,10102000),(10102060,10102000),(10102070,10102000),(10102080,10102000),(10103120,10103000),(10103121,10103000),(10103122,10103000),(10103123,10103000),(10103124,10103000),(10103125,10103000),(10103130,10103000),(10103131,10103000),(10103132,10103000),(10103133,10103000),(10103134,10103000),(10103135,10103000),(10105001,10105000),(10105002,10105000),(10105005,10105000),(10105006,10105000),(10105010,10105000),(10105011,10105000),(10105012,10105000),(10105020,10105000),(10105021,10105000),(10105022,10105000),(10106001,10106000),(10106002,10106000),(10106003,10106000),(10110001,10110000),(10110002,10110000),(10110003,10110000),(10110004,10110000),(10110010,10110000),(10110011,10110000),(10110012,10110000),(10110013,10110000),(10110020,10110000),(10110021,10110000),(10110022,10110000),(10110023,10110000),(10110030,10110000),(10110031,10110000),(10110040,10110000),(10110041,10110000),(10110050,10110000),(10110051,10110000),(10110060,10110000),(10110070,10110000),(10110080,10110000),(10110090,10110000),(10110091,10110000),(10201001,10201000),(10201002,10201000),(10201003,10201000),(10201010,10201000),(10201011,10201000),(10201012,10201000),(10201020,10201000),(10201021,10201000),(10201022,10201000),(10201030,10201000),(10201031,10201000),(10201032,10201000),(10201033,10201000),(10201034,10201000),(10201035,10201000),(10201040,10201000),(10201041,10201000),(10201042,10201000),(10201043,10201000),(10201044,10201000),(10201045,10201000),(10201050,10201000),(10201051,10201000),(10201052,10201000),(10301001,10301000),(10301002,10301000),(10301003,10301000),(10301010,10301000),(10301011,10301000),(10301012,10301000),(10301020,10301000),(10301021,10301000),(10301022,10301000),(10301030,10301000),(10301031,10301000),(10301032,10301000),(10301033,10301000),(10301034,10301000),(10301035,10301000),(10301040,10301000),(10301041,10301000),(10301042,10301000),(10301043,10301000),(10301044,10301000),(10301045,10301000),(10301080,10301000),(10301081,10301000),(10301082,10301000),(10301083,10301000),(10301084,10301000),(10301085,10301000);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (10101001,0),(10101002,0),(10101003,0),(10101004,0),(10101005,0),(10101010,0),(10101011,0),(10101012,0),(10101013,0),(10101014,0),(10101020,0),(10101021,0),(10101022,0),(10101023,0),(10101024,0),(10101030,0),(10101031,0),(10101032,0),(10101033,0),(10101034,0),(10101040,0),(10101041,0),(10101050,0),(10101051,0),(10101060,0),(10101070,0),(10101080,0),(10101090,0),(10101091,0),(10101092,0),(10101093,0),(10101100,0),(10101101,0),(10101102,0),(10101140,0),(10101150,0),(10101151,0),(10101152,0),(10101200,0),(10101201,0),(10101210,0),(10101211,0),(10101220,0),(10101221,0),(10102001,0),(10102002,0),(10102004,0),(10102005,0),(10102010,0),(10102011,0),(10102013,0),(10102014,0),(10102020,0),(10102021,0),(10102023,0),(10102024,0),(10102030,0),(10102031,0),(10102040,0),(10102041,0),(10102050,0),(10102051,0),(10102060,0),(10102070,0),(10102080,0),(10103120,0),(10103121,0),(10103122,0),(10103123,0),(10103124,0),(10103125,0),(10103130,0),(10103131,0),(10103132,0),(10103133,0),(10103134,0),(10103135,0),(10105001,0),(10105002,0),(10105005,0),(10105006,0),(10105010,0),(10105011,0),(10105012,0),(10105020,0),(10105021,0),(10105022,0),(10106001,0),(10106002,0),(10106003,0),(10110001,0),(10110002,0),(10110003,0),(10110004,0),(10110010,0),(10110011,0),(10110012,0),(10110013,0),(10110020,0),(10110021,0),(10110022,0),(10110023,0),(10110030,0),(10110031,0),(10110040,0),(10110041,0),(10110050,0),(10110051,0),(10110060,0),(10110070,0),(10110080,0),(10110090,0),(10110091,0),(10201001,0),(10201002,0),(10201003,0),(10201010,0),(10201011,0),(10201012,0),(10201020,0),(10201021,0),(10201022,0),(10201030,0),(10201031,0),(10201032,0),(10201033,0),(10201034,0),(10201035,0),(10201040,0),(10201041,0),(10201042,0),(10201043,0),(10201044,0),(10201045,0),(10201050,0),(10201051,0),(10201052,0),(10301001,0),(10301002,0),(10301003,0),(10301010,0),(10301011,0),(10301012,0),(10301020,0),(10301021,0),(10301022,0),(10301030,0),(10301031,0),(10301032,0),(10301033,0),(10301034,0),(10301035,0),(10301040,0),(10301041,0),(10301042,0),(10301043,0),(10301044,0),(10301045,0),(10301080,0),(10301081,0),(10301082,0),(10301083,0),(10301084,0),(10301085,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Возвращены средства'),(2,1,'Выдан в кредит'),(3,1,'Отправлен другой товар для замены');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Получен/доставлен неисправным (сломан)'),(2,1,'Получен не тот (ошибочный) товар'),(3,1,'Ошибочный заказ'),(4,1,'Ошибка, пожалуйста укажите/приложите подробности'),(5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Рассматриваемый'),(3,1,'Готов (к отправке)'),(2,1,'Заказ в ожидании');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1051 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_seo_url`
--

LOCK TABLES `oc_seo_url` WRITE;
/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` VALUES (730,0,1,'manufacturer_id=8','apple'),(772,0,1,'information_id=4','about_us'),(828,0,1,'manufacturer_id=9','canon'),(829,0,1,'manufacturer_id=5','htc'),(830,0,1,'manufacturer_id=7','hewlett-packard'),(831,0,1,'manufacturer_id=6','palm'),(832,0,1,'manufacturer_id=10','sony'),(841,0,1,'information_id=6','delivery'),(842,0,1,'information_id=3','privacy'),(843,0,1,'information_id=5','terms'),(845,0,1,'common/home',''),(846,0,1,'information/contact','contact'),(847,0,1,'information/sitemap','sitemap'),(848,0,1,'product/special','specials'),(849,0,1,'product/manufacturer','brands'),(850,0,1,'product/compare','compare-products'),(851,0,1,'product/search','search'),(852,0,1,'checkout/cart','cart'),(853,0,1,'checkout/checkout','checkout'),(854,0,1,'account/login','login'),(855,0,1,'account/logout','logout'),(856,0,1,'account/voucher','vouchers'),(857,0,1,'account/wishlist','wishlist'),(858,0,1,'account/account','my-account'),(859,0,1,'account/order','order-history'),(860,0,1,'account/newsletter','newsletter'),(861,0,1,'account/return/add','return-add'),(862,0,1,'account/forgotten','forgot-password'),(863,0,1,'account/download','downloads'),(864,0,1,'account/return','returns'),(865,0,1,'account/transaction','transactions'),(866,0,1,'account/register','create-account'),(867,0,1,'account/recurring','recurring'),(868,0,1,'account/address','address-book'),(869,0,1,'account/reward','reward-points'),(870,0,1,'account/edit','edit-account'),(871,0,1,'account/password','change-password'),(880,0,1,'affiliate/forgotten','affiliate-forgot-password'),(881,0,1,'affiliate/register','create-affiliate-account'),(882,0,1,'affiliate/login','affiliate-login'),(883,0,1,'affiliate/payment','affiliate-payment'),(884,0,1,'affiliate/tracking','affiliate-tracking'),(885,0,1,'affiliate/transaction','affiliate-transaction'),(886,0,1,'affiliate/account','affiliates'),(887,0,1,'product_id=10101001','Кран шар. 1/2&quot; в/в (бабочка) Tiemme 236 0002'),(888,0,1,'product_id=10101002','Кран шар. 1/2&quot; в/н (бабочка) Tiemme 236 0001'),(889,0,1,'product_id=10101003','Кран шар. 1/2&quot; н/н (бабочка) Tiemme 236 0032'),(890,0,1,'product_id=10101004','Кран шар. 1/2&quot; в/в (ручка) Tiemme 236 0010'),(891,0,1,'product_id=10101005','Кран шар. 1/2&quot; в/н (ручка) Tiemme 236 0015'),(892,0,1,'product_id=10101010','Кран шар. 3/4&quot; в/в (бабочка) Tiemme 236 0003'),(893,0,1,'product_id=10101011','Кран шар. 3/4&quot; в/н (бабочка) Tiemme 236 0006'),(894,0,1,'product_id=10101012','Кран шар. 3/4&quot; н/н (бабочка) Tiemme 236 0038'),(895,0,1,'product_id=10101013','Кран шар. 3/4&quot; в/в (ручка) Tiemme 236 0007'),(896,0,1,'product_id=10101014','Кран шар. 3/4&quot; в/н (ручка) Tiemme 236 0019'),(897,0,1,'product_id=10101020','Кран шар. 1&quot; в/в (бабочка) Tiemme 236 0012'),(898,0,1,'product_id=10101021','Кран шар. 1&quot; в/н (бабочка) Tiemme 236 0011'),(899,0,1,'product_id=10101022','Кран шар. 1&quot; н/н (бабочка) Tiemme 236 0040'),(900,0,1,'product_id=10101023','Кран шар. 1&quot; в/в (ручка) Tiemme 236 0005'),(901,0,1,'product_id=10101024','Кран шар. 1&quot; в/н (ручка) Tiemme 236 0014'),(902,0,1,'product_id=10101030','Кран шар. 1 1/4&quot; в/в (бабочка) Tiemme 236 0035'),(903,0,1,'product_id=10101031','Кран шар. 1 1/4&quot; в/н (бабочка) Tiemme 236 0031'),(904,0,1,'product_id=10101032','Кран шар. 1 1/4&quot; н/н (бабочка) Tiemme 236 0048'),(905,0,1,'product_id=10101033','Кран шар. 1 1/4&quot; в/в (ручка) Tiemme 236 0008'),(906,0,1,'product_id=10101034','Кран шар. 1 1/4&quot; в/н (ручка) Tiemme 236 0023'),(907,0,1,'product_id=10101040','Кран шар. 1 1/2&quot; в/в (ручка) Tiemme 236 0009'),(908,0,1,'product_id=10101041','Кран шар. 1 1/2&quot; в/н (ручка) Tiemme 236 0029'),(909,0,1,'product_id=10101050','Кран шар. 2&quot; в/в (ручка) Tiemme 236 0004'),(910,0,1,'product_id=10101051','Кран шар. 2&quot; в/н (ручка) Tiemme 236 0026'),(911,0,1,'product_id=10101060','Кран шар. 2 1/2&quot; в/в (ручка) Tiemme 231 0037'),(912,0,1,'product_id=10101070','Кран шар. 3&quot; в/в (ручка) Tiemme 231 0021'),(913,0,1,'product_id=10101080','Кран шар. 4&quot; в/в (ручка) Tiemme 231 0027'),(914,0,1,'product_id=10101090','Кран шар. 1/2&quot; со сгоном (бабочка) Tiemme 212 0003'),(915,0,1,'product_id=10101091','Кран шар. 3/4&quot; со сгоном (бабочка) Tiemme 212 0001'),(916,0,1,'product_id=10101092','Кран шар. 1&quot; со сгоном (бабочка) Tiemme 212 0002'),(917,0,1,'product_id=10101093','Кран шар. 1 1/4&quot; со сгоном (бабочка) Tiemme 212 0004'),(918,0,1,'product_id=10101100','Кран шар. угл. 1/2&quot; со сгоном (бабочка) Tiemme 212 0008'),(919,0,1,'product_id=10101101','Кран шар. угл. 3/4&quot; со сгоном (бабочка) Tiemme 212 0005'),(920,0,1,'product_id=10101102','Кран шар. угл. 1&quot; со сгоном (бабочка) Tiemme 212 0006'),(921,0,1,'product_id=10101140','Кран шаровый сливной 1/2&quot; нар. с заглушкой Tiemme 295 0001'),(922,0,1,'product_id=10101150','Кран шаровый со штуцером 1/2&quot; нар. Tiemme 250 0001'),(923,0,1,'product_id=10101151','Кран шаровый со штуцером 3/4&quot; нар. Tiemme 250 0003'),(924,0,1,'product_id=10101152','Кран шаровый со штуцером 1&quot; нар. Tiemme 250 0004'),(925,0,1,'product_id=10101200','Кран шар. 1&quot; со сгоном и термометром (красный) Tiemme 212 0043'),(926,0,1,'product_id=10101201','Кран шар. 1&quot; со сгоном и термометром (синий) Tiemme 212 0042'),(927,0,1,'product_id=10101210','Кран шар. 1 1/4&quot; со сгоном и термометром (красный) Tiemme 212 0033'),(928,0,1,'product_id=10101211','Кран шар. 1 1/4&quot; со сгоном и термометром (синий) Tiemme 212 0030'),(929,0,1,'product_id=10101220','Кран шар. угловой 1&quot; со сгоном и термометр. (красный) Tiemme 212 0031'),(930,0,1,'product_id=10101221','Кран шар. угловой 1&quot; со сгоном и термометр. (синий) Tiemme 212 0032'),(931,0,1,'product_id=10102001','Кран шар. 1/2&quot; в/в (бабочка) Tiemme Tifone 261 0018'),(932,0,1,'product_id=10102002','Кран шар. 1/2&quot; в/н (бабочка) Tiemme Tifone 261 0013'),(933,0,1,'product_id=10102004','Кран шар. 1/2&quot; в/в (ручка) Tiemme Tifone 261 0006'),(934,0,1,'product_id=10102005','Кран шар. 1/2&quot; в/н (ручка) Tiemme Tifone 261 0008'),(935,0,1,'product_id=10102010','Кран шар. 3/4&quot; в/в (бабочка) Tiemme Tifone 261 0019'),(936,0,1,'product_id=10102011','Кран шар. 3/4&quot; в/н (бабочка) Tiemme Tifone 261 0014'),(937,0,1,'product_id=10102013','Кран шар. 3/4&quot; в/в (ручка) Tiemme Tifone 261 0004'),(938,0,1,'product_id=10102014','Кран шар. 3/4&quot; в/н (ручка) Tiemme Tifone 261 0011'),(939,0,1,'product_id=10102020','Кран шар. 1&quot; в/в (бабочка) Tiemme Tifone 261 0021'),(940,0,1,'product_id=10102021','Кран шар. 1&quot; в/н (бабочка) Tiemme Tifone 261 0017'),(941,0,1,'product_id=10102023','Кран шар. 1&quot; в/в (ручка) Tiemme Tifone 261 0002'),(942,0,1,'product_id=10102024','Кран шар. 1&quot; в/н (ручка) Tiemme Tifone 261 0007'),(943,0,1,'product_id=10102030','Кран шар. 1 1/4&quot; в/в (ручка) Tiemme Tifone 261 0003'),(944,0,1,'product_id=10102031','Кран шар. 1 1/4&quot; в/н (ручка) Tiemme Tifone 261 0009'),(945,0,1,'product_id=10102040','Кран шар. 1 1/2&quot; в/в (ручка) Tiemme Tifone 261 0005'),(946,0,1,'product_id=10102041','Кран шар. 1 1/2&quot; в/н (ручка) Tiemme Tifone 261 0015'),(947,0,1,'product_id=10102050','Кран шар. 2&quot; в/в (ручка) Tiemme Tifone 261 0001'),(948,0,1,'product_id=10102051','Кран шар. 2&quot; в/н (ручка) Tiemme Tifone 261 0016'),(949,0,1,'product_id=10102060','Кран шар. 2 1/2&quot; в/в (ручка) Tiemme Tifone 261 0010'),(950,0,1,'product_id=10102070','Кран шар. 3&quot; в/н (ручка) Tiemme Tifone 261 0012'),(951,0,1,'product_id=10102080','Кран шар. 4&quot; в/н (ручка) Tiemme Tifone 261 0020'),(952,0,1,'product_id=10103120','Кран шаровый трёхходовой 1/2&quot; L-порт Tiemme 295 0025'),(953,0,1,'product_id=10103121','Кран шаровый трёхходовой 3/4&quot; L-порт Tiemme 295 0031'),(954,0,1,'product_id=10103122','Кран шаровый трёхходовой 1&quot; L-порт Tiemme 295 0030'),(955,0,1,'product_id=10103123','Кран шаровый трёхходовой 1 1/4&quot; L-порт Tiemme 295 0051'),(956,0,1,'product_id=10103124','Кран шаровый трёхходовой 1 1/2&quot; L-порт Tiemme 295 0057'),(957,0,1,'product_id=10103125','Кран шаровый трёхходовой 2&quot; L-порт Tiemme 295 0052'),(958,0,1,'product_id=10103130','Кран шаровый трёхходовой 1/2&quot; T-порт Tiemme 295 0058'),(959,0,1,'product_id=10103131','Кран шаровый трёхходовой 3/4&quot; T-порт Tiemme 295 0053'),(960,0,1,'product_id=10103132','Кран шаровый трёхходовой 1&quot; T-порт Tiemme 295 0056'),(961,0,1,'product_id=10103133','Кран шаровый трёхходовой 1 1/4&quot; T-порт Tiemme 295 0065'),(962,0,1,'product_id=10103134','Кран шаровый трёхходовой 1 1/2&quot; T-порт Tiemme 295 0071'),(963,0,1,'product_id=10103135','Кран шаровый трёхходовой 2&quot; T-порт Tiemme 295 0072'),(964,0,1,'product_id=10105001','Кран шар. угл. 1/2&quot; Х 1/2&quot; н/н (хром) Tiemme 295 0018'),(965,0,1,'product_id=10105002','Кран шар. угл. 1/2&quot; Х 3/4&quot; н/н (хром) Tiemme 295 0011'),(966,0,1,'product_id=10105005','Кран шар. угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0073'),(967,0,1,'product_id=10105006','Вентиль угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0016'),(968,0,1,'product_id=10105010','Кран шар. 1/2&quot; в/в  mini (хром) Tiemme 290 0006'),(969,0,1,'product_id=10105011','Кран шар. 1/2&quot; в/н  mini (хром) Tiemme 290 0001'),(970,0,1,'product_id=10105012','Кран шар. 1/2&quot; н/н  mini (хром) Tiemme 290 0008'),(971,0,1,'product_id=10105020','Кран шар. 1/2&quot; в/в  mini под отвертку (хром) Tiemme 290 0053'),(972,0,1,'product_id=10105021','Кран шар. 1/2&quot; в/н  mini под отвертку (хром) Tiemme 290 0042'),(973,0,1,'product_id=10105022','Кран шар. 1/2&quot; н/н  mini под отвертку (хром) Tiemme 290 0054'),(974,0,1,'product_id=10106001','Кран шаровый  16 Х 16 (бабочка) ПРЕСС Tiemme 168 0010'),(975,0,1,'product_id=10106002','Кран шаровый  20 Х 20 (бабочка) ПРЕСС Tiemme 168 0007'),(976,0,1,'product_id=10106003','Кран шаровый  26 Х 26 (бабочка) ПРЕСС Tiemme 168 0025'),(977,0,1,'product_id=10110001','Кран шар. 1/2&quot; для ГАЗА в/в (бабочка) Tiemme 221 0002'),(978,0,1,'product_id=10110002','Кран шар. 1/2&quot; для ГАЗА в/н (бабочка) Tiemme 221 0004'),(979,0,1,'product_id=10110003','Кран шар. 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0001'),(980,0,1,'product_id=10110004','Кран шар. 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0012'),(981,0,1,'product_id=10110010','Кран шар. 3/4&quot; для ГАЗА в/в (бабочка) Tiemme 221 0006'),(982,0,1,'product_id=10110011','Кран шар. 3/4&quot; для ГАЗА в/н (бабочка) Tiemme 221 0008'),(983,0,1,'product_id=10110012','Кран шар. 3/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0003'),(984,0,1,'product_id=10110013','Кран шар. 3/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0016'),(985,0,1,'product_id=10110020','Кран шар. 1&quot; для ГАЗА в/в (бабочка) Tiemme 221 0009'),(986,0,1,'product_id=10110021','Кран шар. 1&quot; для ГАЗА в/н (бабочка) Tiemme 221 0015'),(987,0,1,'product_id=10110022','Кран шар. 1&quot; для ГАЗА в/в (ручка) Tiemme 221 0007'),(988,0,1,'product_id=10110023','Кран шар. 1&quot; для ГАЗА в/н (ручка) Tiemme 221 0017'),(989,0,1,'product_id=10110030','Кран шар. 1 1/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0010'),(990,0,1,'product_id=10110031','Кран шар. 1 1/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0022'),(991,0,1,'product_id=10110040','Кран шар. 1 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0011'),(992,0,1,'product_id=10110041','Кран шар. 1 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0023'),(993,0,1,'product_id=10110050','Кран шар. 2&quot; для ГАЗА в/в (ручка) Tiemme 221 0005'),(994,0,1,'product_id=10110051','Кран шар. 2&quot; для ГАЗА в/н (ручка) Tiemme 221 0025'),(995,0,1,'product_id=10110060','Кран шар. 2 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0013'),(996,0,1,'product_id=10110070','Кран шар. 3&quot; для ГАЗА в/в (ручка) Tiemme 221 0014'),(997,0,1,'product_id=10110080','Кран шар. 4&quot; для ГАЗА в/в (ручка) Tiemme 221 0019'),(998,0,1,'product_id=10110090','Кран шар. угловой 1/2&quot; для ГАЗА н/н Tiemme 222 0001'),(999,0,1,'product_id=10110091','Кран шар. угловой 3/4&quot; для ГАЗА н/н Tiemme 222 0016'),(1000,0,1,'product_id=10201001','Кран шаровой 1/2&quot; в/в (бабочка) Bugatti сер. 302'),(1001,0,1,'product_id=10201002','Кран шаровой 3/4&quot; в/в (бабочка) Bugatti сер. 302'),(1002,0,1,'product_id=10201003','Кран шаровой 1&quot; в/в (бабочка) Bugatti сер. 302'),(1003,0,1,'product_id=10201010','Кран шаровой 1/2&quot; в/н (бабочка) Bugatti сер. 307'),(1004,0,1,'product_id=10201011','Кран шаровой 3/4&quot; в/н (бабочка) Bugatti сер. 307'),(1005,0,1,'product_id=10201012','Кран шаровой 1&quot; в/н (бабочка) Bugatti сер. 307'),(1006,0,1,'product_id=10201020','Кран шаровой 1/2&quot; н/н (бабочка) Bugatti сер. 327'),(1007,0,1,'product_id=10201021','Кран шаровой 3/4&quot; н/н (бабочка) Bugatti сер. 327'),(1008,0,1,'product_id=10201022','Кран шаровой 1&quot; н/н (бабочка) Bugatti сер. 327'),(1009,0,1,'product_id=10201030','Кран шаровой 1/2&quot; в/в (ручка) Bugatti сер. 300'),(1010,0,1,'product_id=10201031','Кран шаровой 3/4&quot; в/в (ручка) Bugatti сер. 300'),(1011,0,1,'product_id=10201032','Кран шаровой 1&quot; в/в (ручка) Bugatti сер. 300'),(1012,0,1,'product_id=10201033','Кран шаровой 1 1/4&quot; в/в (ручка) Bugatti сер. 300'),(1013,0,1,'product_id=10201034','Кран шаровой 1 1/2&quot; в/в (ручка) Bugatti сер. 300'),(1014,0,1,'product_id=10201035','Кран шаровой 2&quot; в/в (ручка) Bugatti сер. 300'),(1015,0,1,'product_id=10201040','Кран шаровой 1/2&quot; в/н (ручка) Bugatti сер. 305'),(1016,0,1,'product_id=10201041','Кран шаровой 3/4&quot; в/н (ручка) Bugatti сер. 305'),(1017,0,1,'product_id=10201042','Кран шаровой 1&quot; в/н (ручка) Bugatti сер. 305'),(1018,0,1,'product_id=10201043','Кран шаровой 1 1/4&quot; в/н (ручка) Bugatti сер. 305'),(1019,0,1,'product_id=10201044','Кран шаровой 1 1/2&quot; в/н (ручка) Bugatti сер. 305'),(1020,0,1,'product_id=10201045','Кран шаровой 2&quot; в/н (ручка) Bugatti сер. 305'),(1021,0,1,'product_id=10201050','Кран шарой 1/2&quot; с американкой (бабочка) Bugatti сер. 322T'),(1022,0,1,'product_id=10201051','Кран шарой 3/4&quot; с американкой (бабочка) Bugatti сер. 322T'),(1023,0,1,'product_id=10201052','Кран шарой 1&quot; с американкой (бабочка) Bugatti сер. 322T'),(1024,0,1,'product_id=10301001','Кран шаровой 1/2&quot; в/в (бабочка) GF 7100M1N040400A'),(1025,0,1,'product_id=10301002','Кран шаровой 3/4&quot; в/в (бабочка) GF 7100M1N050500A'),(1026,0,1,'product_id=10301003','Кран шаровой 1&quot; в/в (бабочка) GF 7100M1N101000A'),(1027,0,1,'product_id=10301010','Кран шаровой 1/2&quot; в/н (бабочка) GF 7100M2N040400A'),(1028,0,1,'product_id=10301011','Кран шаровой 3/4&quot; в/н (бабочка) GF 7100M2N050500A'),(1029,0,1,'product_id=10301012','Кран шаровой 1&quot; в/н (бабочка) GF 7100M2N101000A'),(1030,0,1,'product_id=10301020','Кран шаровой 1/2&quot; н/н (бабочка) GF 7100M3N040400A'),(1031,0,1,'product_id=10301021','Кран шаровой 3/4&quot; н/н (бабочка) GF 7100M3N050500A'),(1032,0,1,'product_id=10301022','Кран шаровой 1&quot; н/н (бабочка) GF 7100M3N101000A'),(1033,0,1,'product_id=10301030','Кран шаровой 1/2&quot; в/в (ручка) GF 7100L1N040400A'),(1034,0,1,'product_id=10301031','Кран шаровой 3/4&quot; в/в (ручка) GF 7100L1N050500A'),(1035,0,1,'product_id=10301032','Кран шаровой 1&quot; в/в (ручка) GF 7100L1N101000A'),(1036,0,1,'product_id=10301033','Кран шаровой 1 1/4&quot; в/в (ручка) GF 7100L1N121200A'),(1037,0,1,'product_id=10301034','Кран шаровой 1 1/2&quot; в/в (ручка) GF 7100L1N141400A'),(1038,0,1,'product_id=10301035','Кран шаровой 2&quot; в/в (ручка) GF 7100L1N202000A'),(1039,0,1,'product_id=10301040','Кран шаровой 1/2&quot; в/н (ручка) GF 7100L2N040400A'),(1040,0,1,'product_id=10301041','Кран шаровой 3/4&quot; в/н (ручка) GF 7100L2N050500A'),(1041,0,1,'product_id=10301042','Кран шаровой 1&quot; в/н (ручка) GF 7100L2N101000A'),(1042,0,1,'product_id=10301043','Кран шаровой 1 1/4&quot; в/н (ручка) GF 7100L2N121200A'),(1043,0,1,'product_id=10301044','Кран шаровой 1 1/2&quot; в/н (ручка) GF 7100L2N141400A'),(1044,0,1,'product_id=10301045','Кран шаровой 2&quot; в/н (ручка) GF 7100L2N202000A'),(1045,0,1,'product_id=10301080','Кран шарой 1/2&quot; с американкой (бабочка) GF 7100M5N040401A'),(1046,0,1,'product_id=10301081','Кран шарой 3/4&quot; с американкой (бабочка) GF 7100M5N050501A'),(1047,0,1,'product_id=10301082','Кран шарой 1&quot; с американкой (бабочка) GF 7100M5N101001A'),(1048,0,1,'product_id=10301083','Кран шарой 1 1/4&quot; с американкой (ручка) GF 7100L5N121201A'),(1049,0,1,'product_id=10301084','Кран шарой 1 1/2&quot; с американкой (ручка) GF 7100L5N141401A'),(1050,0,1,'product_id=10301085','Кран шарой 2&quot; с американкой (ручка) GF 7100L5N202001A');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_session`
--

LOCK TABLES `oc_session` WRITE;
/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
INSERT INTO `oc_session` VALUES ('01cbe955a9a3f3b5e16ae4ed17','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-13 17:55:12'),('6e815e6a31c179aa31bf96ed41','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-15 13:40:55'),('b7adf4a6301467e3b10eee8e39','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-15 14:14:21'),('b97dcf3e45d38f328491185364','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-18 10:27:16'),('fc18b1be7b14fd1624ec40f894','{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"zCMDDwAYBEqdqwQIn9dehxTgVxVC1xxd\",\"install\":\"7AlA00omaR\",\"directory_file_manager\":\"img\",\"page_file_manager\":null}','2019-01-18 13:14:40');
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(2,0,'config','config_shared','0',0),(3,0,'config','config_secure','0',0),(4,0,'total_voucher','total_voucher_sort_order','8',0),(5,0,'total_voucher','total_voucher_status','1',0),(6,0,'config','config_fraud_detection','0',0),(7,0,'config','config_ftp_status','0',0),(8,0,'config','config_ftp_root','',0),(9,0,'config','config_ftp_password','',0),(10,0,'config','config_ftp_username','',0),(11,0,'config','config_ftp_port','21',0),(12,0,'config','config_ftp_hostname','',0),(13,0,'config','config_meta_title','Интернет магазин Opencart &quot;Русская сборка&quot;',0),(14,0,'config','config_meta_description','Мой магазин',0),(15,0,'config','config_meta_keyword','',0),(16,0,'config','config_theme','default',0),(17,0,'config','config_layout_id','4',0),(18,0,'config','config_country_id','176',0),(19,0,'config','config_zone_id','0',0),(20,0,'config','config_language','ru-ru',0),(21,0,'config','config_admin_language','ru-ru',0),(22,0,'config','config_currency','RUB',0),(23,0,'config','config_currency_auto','1',0),(24,0,'config','config_length_class_id','1',0),(25,0,'config','config_weight_class_id','1',0),(26,0,'config','config_product_count','1',0),(27,0,'config','config_limit_admin','20',0),(28,0,'config','config_review_status','1',0),(29,0,'config','config_review_guest','1',0),(30,0,'config','config_voucher_min','1',0),(31,0,'config','config_voucher_max','1000',0),(32,0,'config','config_tax','0',0),(33,0,'config','config_tax_default','shipping',0),(34,0,'config','config_tax_customer','shipping',0),(35,0,'config','config_customer_online','0',0),(36,0,'config','config_customer_activity','0',0),(37,0,'config','config_customer_search','0',0),(38,0,'config','config_customer_group_id','1',0),(39,0,'config','config_customer_group_display','[\"1\"]',1),(40,0,'config','config_customer_price','0',0),(41,0,'config','config_account_id','3',0),(42,0,'config','config_invoice_prefix','INV-2019-00',0),(203,0,'config','config_api_id','1',0),(44,0,'config','config_cart_weight','1',0),(45,0,'config','config_checkout_guest','1',0),(46,0,'config','config_checkout_id','5',0),(47,0,'config','config_order_status_id','1',0),(48,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1),(49,0,'config','config_complete_status','[\"5\",\"3\"]',1),(50,0,'config','config_stock_display','0',0),(51,0,'config','config_stock_warning','0',0),(52,0,'config','config_stock_checkout','0',0),(53,0,'config','config_affiliate_approval','0',0),(54,0,'config','config_affiliate_auto','0',0),(55,0,'config','config_affiliate_commission','5',0),(56,0,'config','config_affiliate_id','4',0),(57,0,'config','config_return_id','0',0),(58,0,'config','config_return_status_id','2',0),(59,0,'config','config_logo','catalog/logo.png',0),(60,0,'config','config_icon','catalog/cart.png',0),(61,0,'config','config_comment','',0),(62,0,'config','config_open','',0),(63,0,'config','config_image','',0),(64,0,'config','config_fax','',0),(65,0,'config','config_telephone','495 888-88-88',0),(201,0,'config','config_email','root@locahhdf.ru',0),(67,0,'config','config_geocode','',0),(68,0,'config','config_owner','Иванов Иван',0),(69,0,'config','config_address','г. Москва, ул. Ленина 10 оф. 32',0),(70,0,'config','config_name','Интернет магазин Opencart &quot;Русская сборка&quot;',0),(71,0,'config','config_seo_url','0',0),(72,0,'config','config_file_max_size','300000',0),(73,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(74,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(75,0,'config','config_maintenance','0',0),(76,0,'config','config_password','1',0),(202,0,'config','config_encryption','TZoc6br5xpBXNXN3Me3ooLnsQQEcRrj5ZrzS34gy52otyTtQ5rjN0K3zK3GbHReeZIEDhYbh5VBAFw6YEyIONt8yTyGTKUEF8FtjpQFMxl610232SIqtlufSxDHkRZJIhX93uwBeaBsktRlS59HX5IH3CuCjeWv7CbdEvIVjLAfgJYDOhils86Okw2TdDqZRMtkkJ9eNjeCVyjWwkqfiBHhVmO3Uzq253fUAuL4I1pqPLKlT7plojBHwviyi5ildW3UKVg2rui792rASbFCFchosJ6u9R4hBdVfyaH0k8S151fd7E5yOF4KB5IHPm1GihSaDPg5vinBXjoK9UcOC0ze22Em9Swawzatvxq4YgHmWM8XoXYhcXIzcBWQJ0DiURG41RKd89IK8xcBcUacmtU7JOynshEtk7Zw0hSxuLljCI8oVO8LLkHrNBSX13I7gebIvaEUPcPt2b5aoNoOtsv3vMwFeG18jqtktdlBPCLJaMtYsuv6k5HYBzrteowyAcsxtzX1XzkJxMQmY8TV4gyj6Yx2awR9ByTUZAxlmomVNn0aCxktTCE96SaFvLQzQL25WYuivdrb2oeowFu8dTNDS0ah5X9stCc1hKuYtQssioiGWVMsfzNx6HV4DhthJbSEtD9fmYoJfxSjdjVdxnJ35HIHD588wSc1s592s2UTHn3i5QIoxtb8zDg4to4pOEm3dnb9cK46JnegJVVYB3wcNZwdyys9oc4VYBCSlvMowolFnutGf5vbYLoH7bvXxaywNUOE8M3PrvJmDtTOaQaWwcRb9FEcAWXxHaP5NWs8qD4UcRrMMvvCYLDQxx4VTUJ2fsImh224VAdQkCNgAl3dmRN9EBewRbkwKWgbPFS4iaR0P98vkthOIFRvXhVo5qiHydszx7809GSOq4FL2y7BYEI5MTJpMf7nDHCRdyIh7qM8ZVZFrVJmEQCDBdXNzvGsUct4ctZALdZemGYvMBX4HY5SVJPcPu42SjfVhEiWD5hbY0x6f17nYjDNuHaNR',0),(78,0,'config','config_compression','0',0),(79,0,'config','config_error_display','1',0),(80,0,'config','config_error_log','1',0),(81,0,'config','config_error_filename','error.log',0),(82,0,'config','config_google_analytics','',0),(83,0,'config','config_mail_engine','mail',0),(84,0,'config','config_mail_parameter','',0),(85,0,'config','config_mail_smtp_hostname','',0),(86,0,'config','config_mail_smtp_username','',0),(87,0,'config','config_mail_smtp_password','',0),(88,0,'config','config_mail_smtp_port','25',0),(89,0,'config','config_mail_smtp_timeout','5',0),(90,0,'config','config_mail_alert_email','',0),(91,0,'config','config_mail_alert','[\"order\"]',1),(92,0,'config','config_captcha','basic',0),(93,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(94,0,'config','config_login_attempts','5',0),(95,0,'payment_free_checkout','payment_free_checkout_status','1',0),(96,0,'payment_free_checkout','free_checkout_order_status_id','1',0),(97,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0),(98,0,'payment_cod','payment_cod_sort_order','5',0),(99,0,'payment_cod','payment_cod_total','0.01',0),(100,0,'payment_cod','payment_cod_order_status_id','1',0),(101,0,'payment_cod','payment_cod_geo_zone_id','0',0),(102,0,'payment_cod','payment_cod_status','1',0),(103,0,'shipping_flat','shipping_flat_sort_order','1',0),(104,0,'shipping_flat','shipping_flat_status','1',0),(105,0,'shipping_flat','shipping_flat_geo_zone_id','0',0),(106,0,'shipping_flat','shipping_flat_tax_class_id','9',0),(107,0,'shipping_flat','shipping_flat_cost','5.00',0),(108,0,'total_shipping','total_shipping_sort_order','3',0),(109,0,'total_sub_total','sub_total_sort_order','1',0),(110,0,'total_sub_total','total_sub_total_status','1',0),(111,0,'total_tax','total_tax_status','0',0),(112,0,'total_total','total_total_sort_order','9',0),(113,0,'total_total','total_total_status','1',0),(114,0,'total_tax','total_tax_sort_order','5',0),(115,0,'total_credit','total_credit_sort_order','7',0),(116,0,'total_credit','total_credit_status','1',0),(117,0,'total_reward','total_reward_sort_order','2',0),(118,0,'total_reward','total_reward_status','1',0),(119,0,'total_shipping','total_shipping_status','1',0),(120,0,'total_shipping','total_shipping_estimator','1',0),(121,0,'total_coupon','total_coupon_sort_order','4',0),(122,0,'total_coupon','total_coupon_status','1',0),(123,0,'module_category','module_category_status','1',0),(124,0,'module_account','module_account_status','1',0),(125,0,'theme_default','theme_default_product_limit','15',0),(126,0,'theme_default','theme_default_product_description_length','100',0),(127,0,'theme_default','theme_default_image_thumb_width','228',0),(128,0,'theme_default','theme_default_image_thumb_height','228',0),(129,0,'theme_default','theme_default_image_popup_width','500',0),(130,0,'theme_default','theme_default_image_popup_height','500',0),(131,0,'theme_default','theme_default_image_category_width','80',0),(132,0,'theme_default','theme_default_image_category_height','80',0),(133,0,'theme_default','theme_default_image_product_width','228',0),(134,0,'theme_default','theme_default_image_product_height','228',0),(135,0,'theme_default','theme_default_image_additional_width','74',0),(136,0,'theme_default','theme_default_image_additional_height','74',0),(137,0,'theme_default','theme_default_image_related_width','200',0),(138,0,'theme_default','theme_default_image_related_height','200',0),(139,0,'theme_default','theme_default_image_compare_width','90',0),(140,0,'theme_default','theme_default_image_compare_height','90',0),(141,0,'theme_default','theme_default_image_wishlist_width','47',0),(142,0,'theme_default','theme_default_image_wishlist_height','47',0),(143,0,'theme_default','theme_default_image_cart_height','47',0),(144,0,'theme_default','theme_default_image_cart_width','47',0),(145,0,'theme_default','theme_default_image_location_height','50',0),(146,0,'theme_default','theme_default_image_location_width','268',0),(147,0,'theme_default','theme_default_directory','default',0),(148,0,'theme_default','theme_default_status','1',0),(149,0,'dashboard_activity','dashboard_activity_status','1',0),(150,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(151,0,'dashboard_sale','dashboard_sale_status','1',0),(152,0,'dashboard_sale','dashboard_sale_width','3',0),(153,0,'dashboard_chart','dashboard_chart_status','1',0),(154,0,'dashboard_chart','dashboard_chart_width','6',0),(155,0,'dashboard_customer','dashboard_customer_status','1',0),(156,0,'dashboard_customer','dashboard_customer_width','3',0),(157,0,'dashboard_map','dashboard_map_status','1',0),(158,0,'dashboard_map','dashboard_map_width','6',0),(159,0,'dashboard_online','dashboard_online_status','1',0),(160,0,'dashboard_online','dashboard_online_width','3',0),(161,0,'dashboard_order','dashboard_order_sort_order','1',0),(162,0,'dashboard_order','dashboard_order_status','1',0),(163,0,'dashboard_order','dashboard_order_width','3',0),(164,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(165,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(166,0,'dashboard_online','dashboard_online_sort_order','4',0),(167,0,'dashboard_map','dashboard_map_sort_order','5',0),(168,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(169,0,'dashboard_recent','dashboard_recent_status','1',0),(170,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(171,0,'dashboard_activity','dashboard_activity_width','4',0),(172,0,'dashboard_recent','dashboard_recent_width','8',0),(173,0,'report_customer_activity','report_customer_activity_status','1',0),(174,0,'report_customer_activity','report_customer_activity_sort_order','1',0),(175,0,'report_customer_order','report_customer_order_status','1',0),(176,0,'report_customer_order','report_customer_order_sort_order','2',0),(177,0,'report_customer_reward','report_customer_reward_status','1',0),(178,0,'report_customer_reward','report_customer_reward_sort_order','3',0),(179,0,'report_customer_search','report_customer_search_sort_order','3',0),(180,0,'report_customer_search','report_customer_search_status','1',0),(181,0,'report_customer_transaction','report_customer_transaction_status','1',0),(182,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0),(183,0,'report_sale_tax','report_sale_tax_status','1',0),(184,0,'report_sale_tax','report_sale_tax_sort_order','5',0),(185,0,'report_sale_shipping','report_sale_shipping_status','1',0),(186,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0),(187,0,'report_sale_return','report_sale_return_status','1',0),(188,0,'report_sale_return','report_sale_return_sort_order','7',0),(189,0,'report_sale_order','report_sale_order_status','1',0),(190,0,'report_sale_order','report_sale_order_sort_order','8',0),(191,0,'report_sale_coupon','report_sale_coupon_status','1',0),(192,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0),(193,0,'report_product_viewed','report_product_viewed_status','1',0),(194,0,'report_product_viewed','report_product_viewed_sort_order','10',0),(195,0,'report_product_purchased','report_product_purchased_status','1',0),(196,0,'report_product_purchased','report_product_purchased_sort_order','11',0),(197,0,'report_marketing','report_marketing_status','1',0),(198,0,'report_marketing','report_marketing_sort_order','12',0),(207,0,'developer','developer_sass','0',0),(206,0,'developer','developer_theme','0',0),(208,0,'module_filter','module_filter_status','1',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_shipping_courier`
--

LOCK TABLES `oc_shipping_courier` WRITE;
/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` VALUES (1,'dhl','DHL'),(2,'fedex','Fedex'),(3,'ups','UPS'),(4,'royal-mail','Royal Mail'),(5,'usps','United States Postal Service'),(6,'auspost','Australia Post');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_statistics`
--

LOCK TABLES `oc_statistics` WRITE;
/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` VALUES (1,'order_sale',0.0000),(2,'order_processing',0.0000),(3,'order_complete',0.0000),(4,'order_other',0.0000),(5,'returns',0.0000),(6,'product',0.0000),(7,'review',0.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'В наличии'),(8,1,'Предзаказ'),(5,1,'Нет в наличии'),(6,1,'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Налоги','Облагаемые налогом','2018-06-06 23:00:00','2018-09-09 11:50:31');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (87,3,'НДС',18.0000,'F','2018-09-21 21:49:23','2018-09-09 11:49:32');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','6dff45500188b75fc14ba35b15f792a79000aeaa','1Pg1m6YVs','John','Doe','root@locahhdf.ru','','','127.0.0.1',1,'2019-01-13 17:42:21');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/fb_chat\",\"extension\\/module\\/filter\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/fb_chat\",\"extension\\/module\\/filter\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Новый год'),(7,1,'День рождения'),(8,1,'Другое');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Килограмм','кг'),(2,1,'Грамм','г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,20,'Брест','BR',1),(2,20,'Гомель','HO',1),(3,20,'Минск','HM',1),(4,20,'Гродно','HR',1),(5,20,'Могилев','MA',1),(6,20,'Минская область','MI',1),(7,20,'Витебск','VI',1),(8,80,'Abkhazia','AB',1),(9,80,'Ajaria','AJ',1),(10,80,'Tbilisi','TB',1),(11,80,'Guria','GU',1),(12,80,'Imereti','IM',1),(13,80,'Kakheti','KA',1),(14,80,'Kvemo Kartli','KK',1),(15,80,'Mtskheta-Mtianeti','MM',1),(16,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(17,80,'Samegrelo-Zemo Svaneti','SZ',1),(18,80,'Samtskhe-Javakheti','SJ',1),(19,80,'Shida Kartli','SK',1),(20,109,'Алматинская область','AL',1),(21,109,'Алматы - город республ-го значения','AC',1),(22,109,'Акмолинская область','AM',1),(23,109,'Актюбинская область','AQ',1),(24,109,'Астана - город республ-го значения','AS',1),(25,109,'Атырауская область','AT',1),(26,109,'Западно-Казахстанская область','BA',1),(27,109,'Байконур - город республ-го значения','BY',1),(28,109,'Мангистауская область','MA',1),(29,109,'Южно-Казахстанская область','ON',1),(30,109,'Павлодарская область','PA',1),(31,109,'Карагандинская область','QA',1),(32,109,'Костанайская область','QO',1),(33,109,'Кызылординская область','QY',1),(34,109,'Восточно-Казахстанская область','SH',1),(35,109,'Северо-Казахстанская область','SO',1),(36,109,'Жамбылская область','ZH',1),(37,115,'Bishkek','GB',1),(38,115,'Batken','B',1),(39,115,'Chu','C',1),(40,115,'Jalal-Abad','J',1),(41,115,'Naryn','N',1),(42,115,'Osh','O',1),(43,115,'Talas','T',1),(44,115,'Ysyk-Kol','Y',1),(45,176,'Республика Хакасия','KK',1),(46,176,'Московская область','MOS',1),(47,176,'Чукотский АО','CHU',1),(48,176,'Архангельская область','ARK',1),(49,176,'Астраханская область','AST',1),(50,176,'Алтайский край','ALT',1),(51,176,'Белгородская область','BEL',1),(52,176,'Еврейская АО','YEV',1),(53,176,'Амурская область','AMU',1),(54,176,'Брянская область','BRY',1),(55,176,'Чувашская Республика','CU',1),(56,176,'Челябинская область','CHE',1),(57,176,'Карачаево-Черкесия','KC',1),(58,176,'Забайкальский край','ZAB',1),(59,176,'Ленинградская область','LEN',1),(60,176,'Республика Калмыкия','KL',1),(61,176,'Сахалинская область','SAK',1),(62,176,'Республика Алтай','AL',1),(63,176,'Чеченская Республика','CE',1),(64,176,'Иркутская область','IRK',1),(65,176,'Ивановская область','IVA',1),(66,176,'Удмуртская Республика','UD',1),(67,176,'Калининградская область','KGD',1),(68,176,'Калужская область','KLU',1),(69,176,'Республика Татарстан','TA',1),(70,176,'Кемеровская область','KEM',1),(71,176,'Хабаровский край','KHA',1),(72,176,'Ханты-Мансийский АО - Югра','KHM',1),(73,176,'Костромская область','KOS',1),(74,176,'Краснодарский край','KDA',1),(75,176,'Красноярский край','KYA',1),(76,176,'Курганская область','KGN',1),(77,176,'Курская область','KRS',1),(78,176,'Республика Тыва','TY',1),(79,176,'Липецкая область','LIP',1),(80,176,'Магаданская область','MAG',1),(81,176,'Республика Дагестан','DA',1),(82,176,'Республика Адыгея','AD',1),(83,176,'Москва','MOW',1),(84,176,'Мурманская область','MUR',1),(85,176,'Республика Кабардино-Балкария','KB',1),(86,176,'Ненецкий АО','NEN',1),(87,176,'Республика Ингушетия','IN',1),(88,176,'Нижегородская область','NIZ',1),(89,176,'Новгородская область','NGR',1),(90,176,'Новосибирская область','NVS',1),(91,176,'Омская область','OMS',1),(92,176,'Орловская область','ORL',1),(93,176,'Оренбургская область','ORE',1),(94,176,'Пензенская область','PNZ',1),(95,176,'Пермский край','PER',1),(96,176,'Камчатский край','KAM',1),(97,176,'Республика Карелия','KR',1),(98,176,'Псковская область','PSK',1),(99,176,'Ростовская область','ROS',1),(100,176,'Рязанская область','RYA',1),(101,176,'Ямало-Ненецкий АО','YAN',1),(102,176,'Самарская область','SAM',1),(103,176,'Республика Мордовия','MO',1),(104,176,'Саратовская область','SAR',1),(105,176,'Смоленская область','SMO',1),(106,176,'Санкт-Петербург','SPE',1),(107,176,'Ставропольский край','STA',1),(108,176,'Республика Коми','KO',1),(109,176,'Тамбовская область','TAM',1),(110,176,'Томская область','TOM',1),(111,176,'Тульская область','TUL',1),(112,176,'Тверская область','TVE',1),(113,176,'Тюменская область','TYU',1),(114,176,'Республика Башкортостан','BA',1),(115,176,'Ульяновская область','ULY',1),(116,176,'Республика Бурятия','BU',1),(117,176,'Республика Северная Осетия','SE',1),(118,176,'Владимирская область','VLA',1),(119,176,'Приморский край','PRI',1),(120,176,'Волгоградская область','VGG',1),(121,176,'Вологодская область','VLG',1),(122,176,'Воронежская область','VOR',1),(123,176,'Кировская область','KIR',1),(124,176,'Республика Саха','SA',1),(125,176,'Ярославская область','YAR',1),(126,176,'Свердловская область','SVE',1),(127,176,'Республика Марий Эл','ME',1),(128,176,'Республика Крым','CR',1),(129,220,'Черкассы','CK',1),(130,220,'Чернигов','CH',1),(131,220,'Черновцы','CV',1),(132,220,'Днепропетровск','DN',1),(133,220,'Донецк','DO',1),(134,220,'Ивано-Франковск','IV',1),(135,220,'Харьков','KH',1),(136,220,'Хмельницкий','KM',1),(137,220,'Кировоград','KR',1),(138,220,'Киевская область','KV',1),(139,220,'Киев','KY',1),(140,220,'Луганск','LU',1),(141,220,'Львов','LV',1),(142,220,'Николаев','MY',1),(143,220,'Одесса','OD',1),(144,220,'Полтава','PO',1),(145,220,'Ровно','RI',1),(146,176,'Севастополь','SEV',1),(147,220,'Сумы','SU',1),(148,220,'Тернополь','TE',1),(149,220,'Винница','VI',1),(150,220,'Луцк','VO',1),(151,220,'Ужгород','ZK',1),(152,220,'Запорожье','ZA',1),(153,220,'Житомир','ZH',1),(154,220,'Херсон','KE',1),(155,226,'Andijon','AN',1),(156,226,'Buxoro','BU',1),(157,226,'Farg\'ona','FA',1),(158,226,'Jizzax','JI',1),(159,226,'Namangan','NG',1),(160,226,'Navoiy','NW',1),(161,226,'Qashqadaryo','QA',1),(162,226,'Qoraqalpog\'iston Republikasi','QR',1),(163,226,'Samarqand','SA',1),(164,226,'Sirdaryo','SI',1),(165,226,'Surxondaryo','SU',1),(166,226,'Toshkent City','TK',1),(167,226,'Toshkent Region','TO',1),(168,226,'Xorazm','XO',1),(169,176,'Байконур - город республ-го значения','BY',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,176,0,3,'2018-09-09 11:48:13','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-18 14:59:10
