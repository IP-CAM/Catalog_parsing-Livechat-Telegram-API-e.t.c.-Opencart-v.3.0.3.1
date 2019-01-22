SET sql_mode = '';

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

/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_advertise_google_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_advertise_google_target` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','CMFhiQ4yzax0NR1i8EhmCVI5dMeWP8t21uzfqfIQtOFmRo7mWxebqajWAT0356YnW7YVWYLZqreHMEEW7bON92M6xh2SNuu5AYFGLdL0xCHYZRidZ6Nw8Xmrv607QB30JsPhj63g2QAfawHbYTBLbvN7nqcXbKL6ITgSUBUBPg1lW2QnrOvOYiOttZYFqL5LOXDR6dqEcckzzXgdTxuEDGTEvIIkSQbXwGjwUHKjrtRh520trsi5QSB7QY5S4Uq6',1,'2019-01-13 17:42:21','2019-01-13 17:42:21');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2);
INSERT INTO `oc_attribute_group` VALUES (4,1);
INSERT INTO `oc_attribute_group` VALUES (5,3);
INSERT INTO `oc_attribute_group` VALUES (6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory');
INSERT INTO `oc_attribute_group_description` VALUES (4,1,'Technical');
INSERT INTO `oc_attribute_group_description` VALUES (5,1,'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES (6,1,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1);
INSERT INTO `oc_banner` VALUES (7,'Home Page Slideshow',1);
INSERT INTO `oc_banner` VALUES (8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0);
INSERT INTO `oc_banner_image` VALUES (87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0);
INSERT INTO `oc_banner_image` VALUES (94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0);
INSERT INTO `oc_banner_image` VALUES (95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0);
INSERT INTO `oc_banner_image` VALUES (96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0);
INSERT INTO `oc_banner_image` VALUES (91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0);
INSERT INTO `oc_banner_image` VALUES (92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0);
INSERT INTO `oc_banner_image` VALUES (93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0);
INSERT INTO `oc_banner_image` VALUES (88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0);
INSERT INTO `oc_banner_image` VALUES (89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0);
INSERT INTO `oc_banner_image` VALUES (90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0);
INSERT INTO `oc_banner_image` VALUES (80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0);
INSERT INTO `oc_banner_image` VALUES (97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0);
INSERT INTO `oc_banner_image` VALUES (98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (200000,'',10000000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:20');
INSERT INTO `oc_category` VALUES (10000000,'',0,1,1,4,1,'2009-01-03 21:08:58','2019-01-19 22:59:30');
INSERT INTO `oc_category` VALUES (10100000,'',10000000,1,1,4,1,'2009-01-03 21:08:59','2011-05-30 12:15:13');
INSERT INTO `oc_category` VALUES (10101000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:14');
INSERT INTO `oc_category` VALUES (10102000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:15');
INSERT INTO `oc_category` VALUES (10103000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:16');
INSERT INTO `oc_category` VALUES (10105000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:17');
INSERT INTO `oc_category` VALUES (10106000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:18');
INSERT INTO `oc_category` VALUES (10110000,'',10100000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:19');
INSERT INTO `oc_category` VALUES (10201000,'',200000,1,1,4,1,'0000-00-00 00:00:00','2019-01-18 17:10:15');
INSERT INTO `oc_category` VALUES (10300000,'',10000000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:22');
INSERT INTO `oc_category` VALUES (10301000,'',10300000,1,1,4,1,'0000-00-00 00:00:00','2011-05-30 12:15:23');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (200000,1,'Запорная арматура Bugatti','','Запорная арматура Bugatti','','');
INSERT INTO `oc_category_description` VALUES (10000000,1,'Запорная арматура','','Запорная арматура','','');
INSERT INTO `oc_category_description` VALUES (10100000,1,'Запорная арматура Tiemme','','Запорная арматура Tiemme','','');
INSERT INTO `oc_category_description` VALUES (10101000,1,'Шаровые краны для Воды Tiemme','','Шаровые краны для Воды Tiemme','','');
INSERT INTO `oc_category_description` VALUES (10102000,1,'Шаровые краны для Воды Tifone Tiemme','','Шаровые краны для Воды Tifone Tiemme','','');
INSERT INTO `oc_category_description` VALUES (10103000,1,'Трехходовые Шаровые краны Tiemme','','Трехходовые Шаровые краны Tiemme','','');
INSERT INTO `oc_category_description` VALUES (10105000,1,'Краны Tiemme для подключения бытовых приборов','','Краны Tiemme для подключения бытовых приборов','','');
INSERT INTO `oc_category_description` VALUES (10106000,1,'Шаровые краны для металлопластика Tiemme','','Шаровые краны для металлопластика Tiemme','','');
INSERT INTO `oc_category_description` VALUES (10110000,1,'Шаровые краны для Газа Tiemme','','Шаровые краны для Газа Tiemme','','');
INSERT INTO `oc_category_description` VALUES (10201000,1,'Шаровые краны для Воды Bugatti серия Oregon','','Шаровые краны для Воды Bugatti серия Oregon','','');
INSERT INTO `oc_category_description` VALUES (10300000,1,'Запорная арматура GF','','Запорная арматура GF','','');
INSERT INTO `oc_category_description` VALUES (10301000,1,'Шаровые краны для Воды GF','','Шаровые краны для Воды GF','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
INSERT INTO `oc_category_filter` VALUES (10000000,25);
INSERT INTO `oc_category_filter` VALUES (10000000,26);
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (10106000,10106000,2);
INSERT INTO `oc_category_path` VALUES (10106000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10106000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10105000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10105000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10105000,10105000,2);
INSERT INTO `oc_category_path` VALUES (10103000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10103000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10103000,10103000,2);
INSERT INTO `oc_category_path` VALUES (10102000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10102000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10102000,10102000,2);
INSERT INTO `oc_category_path` VALUES (10101000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10101000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10101000,10101000,2);
INSERT INTO `oc_category_path` VALUES (10100000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10100000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10201000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10201000,10201000,2);
INSERT INTO `oc_category_path` VALUES (10201000,200000,1);
INSERT INTO `oc_category_path` VALUES (200000,200000,1);
INSERT INTO `oc_category_path` VALUES (200000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10000000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10110000,10110000,2);
INSERT INTO `oc_category_path` VALUES (10110000,10100000,1);
INSERT INTO `oc_category_path` VALUES (10110000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10300000,10300000,1);
INSERT INTO `oc_category_path` VALUES (10300000,10000000,0);
INSERT INTO `oc_category_path` VALUES (10301000,10301000,2);
INSERT INTO `oc_category_path` VALUES (10301000,10300000,1);
INSERT INTO `oc_category_path` VALUES (10301000,10000000,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category_to_google_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_google_product_category` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (10201000,0,0);
INSERT INTO `oc_category_to_layout` VALUES (10000000,0,3);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (200000,0);
INSERT INTO `oc_category_to_store` VALUES (10000000,0);
INSERT INTO `oc_category_to_store` VALUES (10100000,0);
INSERT INTO `oc_category_to_store` VALUES (10101000,0);
INSERT INTO `oc_category_to_store` VALUES (10102000,0);
INSERT INTO `oc_category_to_store` VALUES (10103000,0);
INSERT INTO `oc_category_to_store` VALUES (10105000,0);
INSERT INTO `oc_category_to_store` VALUES (10106000,0);
INSERT INTO `oc_category_to_store` VALUES (10110000,0);
INSERT INTO `oc_category_to_store` VALUES (10201000,0);
INSERT INTO `oc_category_to_store` VALUES (10300000,0);
INSERT INTO `oc_category_to_store` VALUES (10301000,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (20,'Белоруссия (Беларусь)','BY','BLR','',0,1);
INSERT INTO `oc_country` VALUES (80,'Грузия','GE','GEO','',0,1);
INSERT INTO `oc_country` VALUES (109,'Казахстан','KZ','KAZ','',0,1);
INSERT INTO `oc_country` VALUES (115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1);
INSERT INTO `oc_country` VALUES (176,'Российская Федерация','RU','RUS','',0,1);
INSERT INTO `oc_country` VALUES (220,'Украина','UA','UKR','',0,1);
INSERT INTO `oc_country` VALUES (226,'Узбекистан','UZ','UZB','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES (5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES (6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Рубль','RUB','','р.','0',1.00000000,1,'2019-01-22 12:53:57');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0);
INSERT INTO `oc_event` VALUES (2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0);
INSERT INTO `oc_event` VALUES (3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0);
INSERT INTO `oc_event` VALUES (4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0);
INSERT INTO `oc_event` VALUES (5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0);
INSERT INTO `oc_event` VALUES (6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0);
INSERT INTO `oc_event` VALUES (7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0);
INSERT INTO `oc_event` VALUES (8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0);
INSERT INTO `oc_event` VALUES (9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0);
INSERT INTO `oc_event` VALUES (10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0);
INSERT INTO `oc_event` VALUES (11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0);
INSERT INTO `oc_event` VALUES (12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0);
INSERT INTO `oc_event` VALUES (13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0);
INSERT INTO `oc_event` VALUES (14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0);
INSERT INTO `oc_event` VALUES (15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0);
INSERT INTO `oc_event` VALUES (16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0);
INSERT INTO `oc_event` VALUES (17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0);
INSERT INTO `oc_event` VALUES (18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0);
INSERT INTO `oc_event` VALUES (19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0);
INSERT INTO `oc_event` VALUES (20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0);
INSERT INTO `oc_event` VALUES (21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0);
INSERT INTO `oc_event` VALUES (22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0);
INSERT INTO `oc_event` VALUES (23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0);
INSERT INTO `oc_event` VALUES (24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0);
INSERT INTO `oc_event` VALUES (25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0);
INSERT INTO `oc_event` VALUES (26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0);
INSERT INTO `oc_event` VALUES (27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0);
INSERT INTO `oc_event` VALUES (28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0);
INSERT INTO `oc_event` VALUES (29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0);
INSERT INTO `oc_event` VALUES (30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0);
INSERT INTO `oc_event` VALUES (31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0);
INSERT INTO `oc_event` VALUES (32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0);
INSERT INTO `oc_event` VALUES (33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0);
INSERT INTO `oc_event` VALUES (34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0);
INSERT INTO `oc_event` VALUES (35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0);
INSERT INTO `oc_event` VALUES (36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0);
INSERT INTO `oc_event` VALUES (37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0);
INSERT INTO `oc_event` VALUES (38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0);
INSERT INTO `oc_event` VALUES (39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0);
INSERT INTO `oc_event` VALUES (40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0);
INSERT INTO `oc_event` VALUES (41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0);
INSERT INTO `oc_event` VALUES (42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0);
INSERT INTO `oc_event` VALUES (43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0);
INSERT INTO `oc_event` VALUES (44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0);
INSERT INTO `oc_event` VALUES (45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod');
INSERT INTO `oc_extension` VALUES (2,'total','shipping');
INSERT INTO `oc_extension` VALUES (3,'total','sub_total');
INSERT INTO `oc_extension` VALUES (4,'total','tax');
INSERT INTO `oc_extension` VALUES (5,'total','total');
INSERT INTO `oc_extension` VALUES (6,'module','banner');
INSERT INTO `oc_extension` VALUES (7,'module','carousel');
INSERT INTO `oc_extension` VALUES (8,'total','credit');
INSERT INTO `oc_extension` VALUES (9,'shipping','flat');
INSERT INTO `oc_extension` VALUES (10,'total','handling');
INSERT INTO `oc_extension` VALUES (11,'total','low_order_fee');
INSERT INTO `oc_extension` VALUES (12,'total','coupon');
INSERT INTO `oc_extension` VALUES (13,'module','category');
INSERT INTO `oc_extension` VALUES (14,'module','account');
INSERT INTO `oc_extension` VALUES (15,'total','reward');
INSERT INTO `oc_extension` VALUES (16,'total','voucher');
INSERT INTO `oc_extension` VALUES (17,'payment','free_checkout');
INSERT INTO `oc_extension` VALUES (18,'module','featured');
INSERT INTO `oc_extension` VALUES (19,'module','slideshow');
INSERT INTO `oc_extension` VALUES (20,'theme','default');
INSERT INTO `oc_extension` VALUES (21,'dashboard','activity');
INSERT INTO `oc_extension` VALUES (22,'dashboard','sale');
INSERT INTO `oc_extension` VALUES (23,'dashboard','recent');
INSERT INTO `oc_extension` VALUES (24,'dashboard','order');
INSERT INTO `oc_extension` VALUES (25,'dashboard','online');
INSERT INTO `oc_extension` VALUES (26,'dashboard','map');
INSERT INTO `oc_extension` VALUES (27,'dashboard','customer');
INSERT INTO `oc_extension` VALUES (28,'dashboard','chart');
INSERT INTO `oc_extension` VALUES (29,'report','sale_coupon');
INSERT INTO `oc_extension` VALUES (31,'report','customer_search');
INSERT INTO `oc_extension` VALUES (32,'report','customer_transaction');
INSERT INTO `oc_extension` VALUES (33,'report','product_purchased');
INSERT INTO `oc_extension` VALUES (34,'report','product_viewed');
INSERT INTO `oc_extension` VALUES (35,'report','sale_return');
INSERT INTO `oc_extension` VALUES (36,'report','sale_order');
INSERT INTO `oc_extension` VALUES (37,'report','sale_shipping');
INSERT INTO `oc_extension` VALUES (38,'report','sale_tax');
INSERT INTO `oc_extension` VALUES (39,'report','customer_activity');
INSERT INTO `oc_extension` VALUES (40,'report','customer_order');
INSERT INTO `oc_extension` VALUES (41,'report','customer_reward');
INSERT INTO `oc_extension` VALUES (42,'advertise','google');
INSERT INTO `oc_extension` VALUES (43,'module','google_hangouts');
INSERT INTO `oc_extension` VALUES (45,'module','filter');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_install`
--

/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` VALUES (1,0,'opencart-3-x-export-import-multilingual-3-20-cloud.ocmod.zip','2019-01-13 19:12:22');
INSERT INTO `oc_extension_install` VALUES (2,0,'fbmessanger3.ocmod.zip','2019-01-15 22:39:54');
INSERT INTO `oc_extension_install` VALUES (3,0,'ocfilter.4.19.ocmod.zip','2019-01-18 15:15:03');
INSERT INTO `oc_extension_install` VALUES (4,0,'ocfilter.4.19.ocmod.zip','2019-01-18 15:17:40');
INSERT INTO `oc_extension_install` VALUES (5,0,'ocfilter.4.19.ocmod.zip','2019-01-18 15:23:51');
INSERT INTO `oc_extension_install` VALUES (6,0,'ocfilter.4.19.ocmod.zip','2019-01-18 15:24:24');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
INSERT INTO `oc_extension_path` VALUES (1,1,'system/library/export_import','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (2,1,'admin/controller/extension/export_import.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (3,1,'admin/model/extension/export_import.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (4,1,'admin/view/stylesheet/export_import.css','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (5,1,'system/library/export_import/Classes','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (6,1,'admin/language/en-gb/extension/export_import.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (7,1,'admin/view/image/export-import/loading.gif','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (8,1,'admin/view/template/extension/export_import.twig','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (9,1,'system/library/export_import/Classes/PHPExcel','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (10,1,'system/library/export_import/Classes/PHPExcel.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (11,1,'system/library/export_import/Classes/PHPExcel/Autoloader.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (12,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (13,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (14,1,'system/library/export_import/Classes/PHPExcel/CalcEngine','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (15,1,'system/library/export_import/Classes/PHPExcel/Calculation','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (16,1,'system/library/export_import/Classes/PHPExcel/Calculation.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (17,1,'system/library/export_import/Classes/PHPExcel/Cell','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (18,1,'system/library/export_import/Classes/PHPExcel/Cell.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (19,1,'system/library/export_import/Classes/PHPExcel/Chart','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (20,1,'system/library/export_import/Classes/PHPExcel/Chart.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (21,1,'system/library/export_import/Classes/PHPExcel/Comment.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (22,1,'system/library/export_import/Classes/PHPExcel/DocumentProperties.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (23,1,'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (24,1,'system/library/export_import/Classes/PHPExcel/Exception.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (25,1,'system/library/export_import/Classes/PHPExcel/HashTable.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (26,1,'system/library/export_import/Classes/PHPExcel/Helper','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (27,1,'system/library/export_import/Classes/PHPExcel/IComparable.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (28,1,'system/library/export_import/Classes/PHPExcel/IOFactory.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (29,1,'system/library/export_import/Classes/PHPExcel/NamedRange.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (30,1,'system/library/export_import/Classes/PHPExcel/Reader','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (31,1,'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (32,1,'system/library/export_import/Classes/PHPExcel/RichText','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (33,1,'system/library/export_import/Classes/PHPExcel/RichText.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (34,1,'system/library/export_import/Classes/PHPExcel/Settings.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (35,1,'system/library/export_import/Classes/PHPExcel/Shared','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (36,1,'system/library/export_import/Classes/PHPExcel/Style','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (37,1,'system/library/export_import/Classes/PHPExcel/Style.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (38,1,'system/library/export_import/Classes/PHPExcel/Worksheet','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (39,1,'system/library/export_import/Classes/PHPExcel/Worksheet.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (40,1,'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (41,1,'system/library/export_import/Classes/PHPExcel/Writer','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (42,1,'system/library/export_import/Classes/PHPExcel/locale','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (43,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (44,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (45,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (46,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (47,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (48,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (49,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (50,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (51,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (52,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (53,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (54,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (55,1,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (56,1,'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (57,1,'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (58,1,'system/library/export_import/Classes/PHPExcel/Calculation/Database.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (59,1,'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (60,1,'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (61,1,'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (62,1,'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (63,1,'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (64,1,'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (65,1,'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (66,1,'system/library/export_import/Classes/PHPExcel/Calculation/Function.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (67,1,'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (68,1,'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (69,1,'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (70,1,'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (71,1,'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (72,1,'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (73,1,'system/library/export_import/Classes/PHPExcel/Calculation/Token','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (74,1,'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (75,1,'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (76,1,'system/library/export_import/Classes/PHPExcel/Cell/DataType.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (77,1,'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (78,1,'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (79,1,'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (80,1,'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (81,1,'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (82,1,'system/library/export_import/Classes/PHPExcel/Chart/Axis.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (83,1,'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (84,1,'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (85,1,'system/library/export_import/Classes/PHPExcel/Chart/Exception.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (86,1,'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (87,1,'system/library/export_import/Classes/PHPExcel/Chart/Layout.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (88,1,'system/library/export_import/Classes/PHPExcel/Chart/Legend.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (89,1,'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (90,1,'system/library/export_import/Classes/PHPExcel/Chart/Properties.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (91,1,'system/library/export_import/Classes/PHPExcel/Chart/Renderer','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (92,1,'system/library/export_import/Classes/PHPExcel/Chart/Title.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (93,1,'system/library/export_import/Classes/PHPExcel/Helper/HTML.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (94,1,'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (95,1,'system/library/export_import/Classes/PHPExcel/Reader/CSV.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (96,1,'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (97,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (98,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (99,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (100,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (101,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (102,1,'system/library/export_import/Classes/PHPExcel/Reader/Exception.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (103,1,'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (104,1,'system/library/export_import/Classes/PHPExcel/Reader/HTML.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (105,1,'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (106,1,'system/library/export_import/Classes/PHPExcel/Reader/IReader.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (107,1,'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (108,1,'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (109,1,'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (110,1,'system/library/export_import/Classes/PHPExcel/RichText/Run.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (111,1,'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (112,1,'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (113,1,'system/library/export_import/Classes/PHPExcel/Shared/Date.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (114,1,'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (115,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (116,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (117,1,'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (118,1,'system/library/export_import/Classes/PHPExcel/Shared/File.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (119,1,'system/library/export_import/Classes/PHPExcel/Shared/Font.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (120,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (121,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (122,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (123,1,'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (124,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (125,1,'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (126,1,'system/library/export_import/Classes/PHPExcel/Shared/String.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (127,1,'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (128,1,'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (129,1,'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (130,1,'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (131,1,'system/library/export_import/Classes/PHPExcel/Shared/trend','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (132,1,'system/library/export_import/Classes/PHPExcel/Style/Alignment.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (133,1,'system/library/export_import/Classes/PHPExcel/Style/Border.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (134,1,'system/library/export_import/Classes/PHPExcel/Style/Borders.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (135,1,'system/library/export_import/Classes/PHPExcel/Style/Color.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (136,1,'system/library/export_import/Classes/PHPExcel/Style/Conditional.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (137,1,'system/library/export_import/Classes/PHPExcel/Style/Fill.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (138,1,'system/library/export_import/Classes/PHPExcel/Style/Font.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (139,1,'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (140,1,'system/library/export_import/Classes/PHPExcel/Style/Protection.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (141,1,'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (142,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (143,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (144,1,'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (145,1,'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (146,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (147,1,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (148,1,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (149,1,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (150,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (151,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (152,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (153,1,'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (154,1,'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (155,1,'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (156,1,'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (157,1,'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (158,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (159,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (160,1,'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (161,1,'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (162,1,'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (163,1,'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (164,1,'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (165,1,'system/library/export_import/Classes/PHPExcel/Writer/CSV.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (166,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (167,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (168,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (169,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (170,1,'system/library/export_import/Classes/PHPExcel/Writer/Exception.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (171,1,'system/library/export_import/Classes/PHPExcel/Writer/HTML.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (172,1,'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (173,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (174,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (175,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (176,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (177,1,'system/library/export_import/Classes/PHPExcel/locale/bg','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (178,1,'system/library/export_import/Classes/PHPExcel/locale/cs','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (179,1,'system/library/export_import/Classes/PHPExcel/locale/da','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (180,1,'system/library/export_import/Classes/PHPExcel/locale/de','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (181,1,'system/library/export_import/Classes/PHPExcel/locale/en','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (182,1,'system/library/export_import/Classes/PHPExcel/locale/es','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (183,1,'system/library/export_import/Classes/PHPExcel/locale/fi','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (184,1,'system/library/export_import/Classes/PHPExcel/locale/fr','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (185,1,'system/library/export_import/Classes/PHPExcel/locale/hu','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (186,1,'system/library/export_import/Classes/PHPExcel/locale/it','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (187,1,'system/library/export_import/Classes/PHPExcel/locale/nl','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (188,1,'system/library/export_import/Classes/PHPExcel/locale/no','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (189,1,'system/library/export_import/Classes/PHPExcel/locale/pl','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (190,1,'system/library/export_import/Classes/PHPExcel/locale/pt','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (191,1,'system/library/export_import/Classes/PHPExcel/locale/ru','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (192,1,'system/library/export_import/Classes/PHPExcel/locale/sv','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (193,1,'system/library/export_import/Classes/PHPExcel/locale/tr','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (194,1,'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (195,1,'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (196,1,'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (197,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (198,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (199,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (200,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (201,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (202,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (203,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (204,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (205,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (206,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (207,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (208,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (209,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (210,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (211,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (212,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (213,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (214,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (215,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (216,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (217,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (218,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (219,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (220,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (221,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (222,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (223,1,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (224,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (225,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (226,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (227,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (228,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (229,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (230,1,'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (231,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (232,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (233,1,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (234,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (235,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (236,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (237,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (238,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (239,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (240,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (241,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (242,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (243,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (244,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (245,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (246,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (247,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (248,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (249,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (250,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (251,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (252,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (253,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (254,1,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (255,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (256,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (257,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (258,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (259,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (260,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (261,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (262,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (263,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (264,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (265,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (266,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (267,1,'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (268,1,'system/library/export_import/Classes/PHPExcel/locale/bg/config','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (269,1,'system/library/export_import/Classes/PHPExcel/locale/cs/config','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (270,1,'system/library/export_import/Classes/PHPExcel/locale/cs/functions','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (271,1,'system/library/export_import/Classes/PHPExcel/locale/da/config','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (272,1,'system/library/export_import/Classes/PHPExcel/locale/da/functions','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (273,1,'system/library/export_import/Classes/PHPExcel/locale/de/config','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (274,1,'system/library/export_import/Classes/PHPExcel/locale/de/functions','2019-01-13 19:12:32');
INSERT INTO `oc_extension_path` VALUES (275,1,'system/library/export_import/Classes/PHPExcel/locale/en/uk','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (276,1,'system/library/export_import/Classes/PHPExcel/locale/es/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (277,1,'system/library/export_import/Classes/PHPExcel/locale/es/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (278,1,'system/library/export_import/Classes/PHPExcel/locale/fi/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (279,1,'system/library/export_import/Classes/PHPExcel/locale/fi/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (280,1,'system/library/export_import/Classes/PHPExcel/locale/fr/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (281,1,'system/library/export_import/Classes/PHPExcel/locale/fr/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (282,1,'system/library/export_import/Classes/PHPExcel/locale/hu/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (283,1,'system/library/export_import/Classes/PHPExcel/locale/hu/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (284,1,'system/library/export_import/Classes/PHPExcel/locale/it/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (285,1,'system/library/export_import/Classes/PHPExcel/locale/it/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (286,1,'system/library/export_import/Classes/PHPExcel/locale/nl/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (287,1,'system/library/export_import/Classes/PHPExcel/locale/nl/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (288,1,'system/library/export_import/Classes/PHPExcel/locale/no/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (289,1,'system/library/export_import/Classes/PHPExcel/locale/no/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (290,1,'system/library/export_import/Classes/PHPExcel/locale/pl/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (291,1,'system/library/export_import/Classes/PHPExcel/locale/pl/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (292,1,'system/library/export_import/Classes/PHPExcel/locale/pt/br','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (293,1,'system/library/export_import/Classes/PHPExcel/locale/pt/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (294,1,'system/library/export_import/Classes/PHPExcel/locale/pt/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (295,1,'system/library/export_import/Classes/PHPExcel/locale/ru/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (296,1,'system/library/export_import/Classes/PHPExcel/locale/ru/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (297,1,'system/library/export_import/Classes/PHPExcel/locale/sv/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (298,1,'system/library/export_import/Classes/PHPExcel/locale/sv/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (299,1,'system/library/export_import/Classes/PHPExcel/locale/tr/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (300,1,'system/library/export_import/Classes/PHPExcel/locale/tr/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (301,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (302,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (303,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (304,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (305,1,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (306,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (307,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (308,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (309,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (310,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (311,1,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (312,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (313,1,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (314,1,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (315,1,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (316,1,'system/library/export_import/Classes/PHPExcel/locale/en/uk/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (317,1,'system/library/export_import/Classes/PHPExcel/locale/pt/br/config','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (318,1,'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (319,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (320,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (321,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (322,1,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php','2019-01-13 19:12:33');
INSERT INTO `oc_extension_path` VALUES (323,2,'admin/controller/extension/module/fb_chat.php','2019-01-15 22:40:03');
INSERT INTO `oc_extension_path` VALUES (324,2,'admin/language/en-gb/extension/module/fb_chat.php','2019-01-15 22:40:03');
INSERT INTO `oc_extension_path` VALUES (325,2,'admin/view/template/extension/module/fb_chat.twig','2019-01-15 22:40:03');
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (1,1,0);
INSERT INTO `oc_filter` VALUES (2,1,0);
INSERT INTO `oc_filter` VALUES (3,1,0);
INSERT INTO `oc_filter` VALUES (4,1,0);
INSERT INTO `oc_filter` VALUES (5,1,0);
INSERT INTO `oc_filter` VALUES (26,12,0);
INSERT INTO `oc_filter` VALUES (12,5,1);
INSERT INTO `oc_filter` VALUES (25,12,0);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (1,1,1,'1 дюйм');
INSERT INTO `oc_filter_description` VALUES (2,1,1,'1/2 люйма');
INSERT INTO `oc_filter_description` VALUES (3,1,1,'3/4');
INSERT INTO `oc_filter_description` VALUES (4,1,1,'1 1/5');
INSERT INTO `oc_filter_description` VALUES (5,1,1,'больше 1 1/5');
INSERT INTO `oc_filter_description` VALUES (26,1,12,'max');
INSERT INTO `oc_filter_description` VALUES (25,1,12,'min');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (1,0);
INSERT INTO `oc_filter_group` VALUES (5,0);
INSERT INTO `oc_filter_group` VALUES (12,0);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (1,1,'диаметр крана');
INSERT INTO `oc_filter_group_description` VALUES (5,0,'p');
INSERT INTO `oc_filter_group_description` VALUES (12,1,'price');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'Зона НДС','Облагаемые НДС','2014-05-21 22:30:20','2014-09-09 11:48:13');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1);
INSERT INTO `oc_information` VALUES (4,1,1,1);
INSERT INTO `oc_information` VALUES (5,1,4,1);
INSERT INTO `oc_information` VALUES (6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','О нас','','');
INSERT INTO `oc_information_description` VALUES (5,1,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','Условия соглашения','','');
INSERT INTO `oc_information_description` VALUES (3,1,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','Политика Безопасности','','');
INSERT INTO `oc_information_description` VALUES (6,1,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','Доставка','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0);
INSERT INTO `oc_information_to_store` VALUES (4,0);
INSERT INTO `oc_information_to_store` VALUES (5,0);
INSERT INTO `oc_information_to_store` VALUES (6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'Russian','ru-ru','ru_RU.UTF-8,ru_RU,russian','ru-ru.png','russian',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home');
INSERT INTO `oc_layout` VALUES (2,'Product');
INSERT INTO `oc_layout` VALUES (3,'Category');
INSERT INTO `oc_layout` VALUES (4,'Default');
INSERT INTO `oc_layout` VALUES (5,'Manufacturer');
INSERT INTO `oc_layout` VALUES (6,'Account');
INSERT INTO `oc_layout` VALUES (7,'Checkout');
INSERT INTO `oc_layout` VALUES (8,'Contact');
INSERT INTO `oc_layout` VALUES (9,'Sitemap');
INSERT INTO `oc_layout` VALUES (10,'Affiliate');
INSERT INTO `oc_layout` VALUES (11,'Information');
INSERT INTO `oc_layout` VALUES (12,'Compare');
INSERT INTO `oc_layout` VALUES (13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0);
INSERT INTO `oc_layout_module` VALUES (3,4,'0','content_top',1);
INSERT INTO `oc_layout_module` VALUES (20,5,'0','column_left',2);
INSERT INTO `oc_layout_module` VALUES (69,10,'account','column_right',1);
INSERT INTO `oc_layout_module` VALUES (68,6,'account','column_right',1);
INSERT INTO `oc_layout_module` VALUES (67,1,'carousel.29','content_top',3);
INSERT INTO `oc_layout_module` VALUES (66,1,'slideshow.27','content_top',1);
INSERT INTO `oc_layout_module` VALUES (65,1,'featured.28','content_top',2);
INSERT INTO `oc_layout_module` VALUES (83,3,'filter','column_left',2);
INSERT INTO `oc_layout_module` VALUES (82,3,'category','column_left',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%');
INSERT INTO `oc_layout_route` VALUES (17,10,0,'affiliate/%');
INSERT INTO `oc_layout_route` VALUES (58,3,0,'product/category');
INSERT INTO `oc_layout_route` VALUES (42,1,0,'common/home');
INSERT INTO `oc_layout_route` VALUES (61,2,0,'product/product');
INSERT INTO `oc_layout_route` VALUES (24,11,0,'information/information');
INSERT INTO `oc_layout_route` VALUES (23,7,0,'checkout/%');
INSERT INTO `oc_layout_route` VALUES (31,8,0,'information/contact');
INSERT INTO `oc_layout_route` VALUES (32,9,0,'information/sitemap');
INSERT INTO `oc_layout_route` VALUES (34,4,0,'');
INSERT INTO `oc_layout_route` VALUES (45,5,0,'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES (52,12,0,'product/compare');
INSERT INTO `oc_layout_route` VALUES (53,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000);
INSERT INTO `oc_length_class` VALUES (2,10.00000000);
INSERT INTO `oc_length_class` VALUES (3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Сантиметр','см');
INSERT INTO `oc_length_class_description` VALUES (2,1,'Миллиметр','мм');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0);
INSERT INTO `oc_manufacturer` VALUES (6,'Palm','catalog/demo/palm_logo.jpg',0);
INSERT INTO `oc_manufacturer` VALUES (7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0);
INSERT INTO `oc_manufacturer` VALUES (8,'Apple','catalog/demo/apple_logo.jpg',0);
INSERT INTO `oc_manufacturer` VALUES (9,'Canon','catalog/demo/canon_logo.jpg',0);
INSERT INTO `oc_manufacturer` VALUES (10,'Sony','catalog/demo/sony_logo.jpg',0);
INSERT INTO `oc_manufacturer` VALUES (11,'Tiemme','',0);
INSERT INTO `oc_manufacturer` VALUES (12,'Bugatti','',0);
INSERT INTO `oc_manufacturer` VALUES (13,'GF','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (6,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (7,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (8,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (9,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (10,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (11,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (12,0);
INSERT INTO `oc_manufacturer_to_store` VALUES (13,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,1,'Export/Import Tool (V3.20) for OpenCart 3.x','Export/Import Tool (V3.20) for OpenCart 3.x','mhccorp.com','3.x-3.20','https://www.mhccorp.com','<modification>\n	<name>Export/Import Tool (V3.20) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.20) for OpenCart 3.x</code>\n	<version>3.x-3.20</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n',1,'2019-01-13 19:12:36');
INSERT INTO `oc_modification` VALUES (2,2,'OpenCart Facebook Messenger','ehub_facebook_chat_plugin','Einfachub','1.0 ','http://www.einfachub.com','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n     <name><![CDATA[OpenCart Facebook Messenger]]></name>\r\n     <code>ehub_facebook_chat_plugin</code>\r\n     <version>1.0 </version>\r\n     <author>Einfachub</author>   \r\n     <link>http://www.einfachub.com</link> \r\n\r\n     <file path=\"catalog/controller/common/header.php\">\r\n     	<operation >\r\n     		<search>\r\n     			<![CDATA[   $this->load->model(\'setting/extension\');]]> \r\n     		</search>\r\n     		<add position=\"after\">\r\n              <![CDATA[     $this->load->model(\'setting/setting\');]]>\r\n            </add>\r\n        </operation>\r\n        <operation >\r\n            <search>\r\n                <![CDATA[       $data[\'home\'] = $this->url->link(\'common/home\');]]> \r\n            </search>\r\n            <add position=\"before\">\r\n              <![CDATA[\r\n                $fb_settings = $this->model_setting_setting->getSetting(\'module_fb_chat\');\r\n                if(!empty($fb_settings)){\r\n                $data[\'module_fb_js_sdk\']  = html_entity_decode($fb_settings[\'module_fb_chat_sdk\']);\r\n                $data[\'module_fb_chat_status\']  = html_entity_decode($fb_settings[\'module_fb_chat_status\']);}]]>\r\n            </add>\r\n        </operation>\r\n     </file>\r\n\r\n     <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n        <operation >\r\n            <search>\r\n                <![CDATA[<body>]]> \r\n            </search>\r\n            <add position=\"after\">\r\n              <![CDATA[ {% if module_fb_chat_status %}  {{ module_fb_js_sdk }} {% endif %} ]]>\r\n            </add>\r\n        </operation>\r\n     </file>\r\n</modification>',1,'2019-01-15 22:40:06');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES (29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES (28,'Home Page','featured','{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES (27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES (31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1);
INSERT INTO `oc_option` VALUES (2,'checkbox',2);
INSERT INTO `oc_option` VALUES (4,'text',3);
INSERT INTO `oc_option` VALUES (5,'select',4);
INSERT INTO `oc_option` VALUES (6,'textarea',5);
INSERT INTO `oc_option` VALUES (7,'file',6);
INSERT INTO `oc_option` VALUES (8,'date',7);
INSERT INTO `oc_option` VALUES (9,'time',8);
INSERT INTO `oc_option` VALUES (10,'datetime',9);
INSERT INTO `oc_option` VALUES (11,'select',10);
INSERT INTO `oc_option` VALUES (12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio');
INSERT INTO `oc_option_description` VALUES (2,1,'Checkbox');
INSERT INTO `oc_option_description` VALUES (4,1,'Text');
INSERT INTO `oc_option_description` VALUES (6,1,'Textarea');
INSERT INTO `oc_option_description` VALUES (8,1,'Date');
INSERT INTO `oc_option_description` VALUES (7,1,'File');
INSERT INTO `oc_option_description` VALUES (5,1,'Select');
INSERT INTO `oc_option_description` VALUES (9,1,'Time');
INSERT INTO `oc_option_description` VALUES (10,1,'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES (12,1,'Delivery Date');
INSERT INTO `oc_option_description` VALUES (11,1,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3);
INSERT INTO `oc_option_value` VALUES (32,1,'',1);
INSERT INTO `oc_option_value` VALUES (45,2,'',4);
INSERT INTO `oc_option_value` VALUES (44,2,'',3);
INSERT INTO `oc_option_value` VALUES (42,5,'',4);
INSERT INTO `oc_option_value` VALUES (41,5,'',3);
INSERT INTO `oc_option_value` VALUES (39,5,'',1);
INSERT INTO `oc_option_value` VALUES (40,5,'',2);
INSERT INTO `oc_option_value` VALUES (31,1,'',2);
INSERT INTO `oc_option_value` VALUES (23,2,'',1);
INSERT INTO `oc_option_value` VALUES (24,2,'',2);
INSERT INTO `oc_option_value` VALUES (46,11,'',1);
INSERT INTO `oc_option_value` VALUES (47,11,'',2);
INSERT INTO `oc_option_value` VALUES (48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large');
INSERT INTO `oc_option_value_description` VALUES (32,1,1,'Small');
INSERT INTO `oc_option_value_description` VALUES (45,1,2,'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES (44,1,2,'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES (31,1,1,'Medium');
INSERT INTO `oc_option_value_description` VALUES (42,1,5,'Yellow');
INSERT INTO `oc_option_value_description` VALUES (41,1,5,'Green');
INSERT INTO `oc_option_value_description` VALUES (39,1,5,'Red');
INSERT INTO `oc_option_value_description` VALUES (40,1,5,'Blue');
INSERT INTO `oc_option_value_description` VALUES (23,1,2,'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES (24,1,2,'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES (48,1,11,'Large');
INSERT INTO `oc_option_value_description` VALUES (47,1,11,'Medium');
INSERT INTO `oc_option_value_description` VALUES (46,1,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (1,1,'Ожидание');
INSERT INTO `oc_order_status` VALUES (2,1,'В обработке');
INSERT INTO `oc_order_status` VALUES (3,1,'Доставлено');
INSERT INTO `oc_order_status` VALUES (7,1,'Отменено');
INSERT INTO `oc_order_status` VALUES (5,1,'Сделка завершена');
INSERT INTO `oc_order_status` VALUES (8,1,'Возврат');
INSERT INTO `oc_order_status` VALUES (9,1,'Отмена и аннулирование');
INSERT INTO `oc_order_status` VALUES (10,1,'Неудавшийся');
INSERT INTO `oc_order_status` VALUES (11,1,'Возмещенный');
INSERT INTO `oc_order_status` VALUES (12,1,'Полностью измененный');
INSERT INTO `oc_order_status` VALUES (13,1,'Полный возврат');
INSERT INTO `oc_order_status` VALUES (16,1,'Аннулированный');
INSERT INTO `oc_order_status` VALUES (15,1,'Обработанный');
INSERT INTO `oc_order_status` VALUES (14,1,'Просроченный');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (10101001,'pr236 0002','','','','','','','',939,7,'img/10101001.jpg',11,1,113.0000,200,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:06:50','2011-09-30 01:05:39');
INSERT INTO `oc_product` VALUES (10101003,'pr236 0032','','','','','','','',7,6,'img/10101003.jpg',11,1,137.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:59:00','2011-09-30 01:05:23');
INSERT INTO `oc_product` VALUES (10101004,'pr236 0010','','','','','','','',1000,6,'img/10101004.jpg',11,1,114.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,1,'2009-02-03 17:00:10','2011-09-30 01:06:00');
INSERT INTO `oc_product` VALUES (10101010,'pr236 0003','','','','','','','',1000,6,'img/10101010.jpg',11,1,165.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 17:08:31','2011-09-30 01:06:29');
INSERT INTO `oc_product` VALUES (10101011,'pr236 0006','','','','','','','',1000,6,'img/10101011.jpg',11,1,187.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:07:54','2011-09-30 01:07:17');
INSERT INTO `oc_product` VALUES (10101012,'pr236 0038','','','','','','','',1000,5,'img/10101012.jpg',11,0,204.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 18:08:31','2011-09-30 01:06:17');
INSERT INTO `oc_product` VALUES (10101013,'pr236 0007','','','','','','','',994,6,'img/10101013.jpg',11,0,169.5000,100,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:09:19','2011-09-30 01:07:12');
INSERT INTO `oc_product` VALUES (10101014,'pr236 0019','','','','','','','',970,5,'img/10101014.jpg',11,1,190.5000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:12','2011-09-30 01:06:53');
INSERT INTO `oc_product` VALUES (10101020,'pr236 0012','','','','','','','',977,5,'img/10101020.jpg',11,1,246.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:26','2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES (10101021,'pr236 0011','','','','','','','',990,5,'img/10101021.jpg',11,1,274.5000,400,9,'2009-02-04',1.00000000,0,1.00000000,2.00000000,3.00000000,1,1,1,0,1,0,'2009-02-03 21:07:37','2011-09-30 00:46:19');
INSERT INTO `oc_product` VALUES (10101023,'pr236 0005','','','','','','','',1000,5,'img/10101023.jpg',11,1,250.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:00','2011-09-30 01:05:53');
INSERT INTO `oc_product` VALUES (10101024,'pr236 0014','','','','','','','',998,5,'img/10101024.jpg',11,1,290.0000,0,100,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:17','2011-09-15 22:22:01');
INSERT INTO `oc_product` VALUES (10101030,'pr236 0035','','','','','','','',1000,5,'img/10101030.jpg',11,1,485.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2009-02-03 21:08:29','2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES (10101031,'pr236 0031','','','','','','','',1000,5,'img/10101031.jpg',11,1,531.0000,400,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2009-02-03 21:08:40','2011-09-30 01:05:28');
INSERT INTO `oc_product` VALUES (10101032,'pr236 0048','test 1','','','','','','test 2',995,5,'img/10101032.jpg',11,1,0.5000,0,9,'2009-02-08',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-08 17:21:51','2011-09-30 01:07:06');
INSERT INTO `oc_product` VALUES (10101033,'pr236 0008','','','','','','','',995,8,'img/10101033.jpg',11,1,403.5000,0,9,'2011-04-25',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:34','2011-09-30 01:06:23');
INSERT INTO `oc_product` VALUES (10101034,'pr236 0023','','','','','','','',995,8,'img/10101034.jpg',11,1,449.0000,0,9,'2011-04-26',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:35','2011-09-30 01:06:24');
INSERT INTO `oc_product` VALUES (10101040,'pr236 0009','','','','','','','',995,8,'img/10101040.jpg',11,1,571.5000,0,9,'2011-04-27',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:36','2011-09-30 01:06:25');
INSERT INTO `oc_product` VALUES (10101041,'pr236 0029','','','','','','','',995,8,'img/10101041.jpg',11,1,627.5000,0,9,'2011-04-28',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:37','2011-09-30 01:06:26');
INSERT INTO `oc_product` VALUES (10101050,'pr236 0004','','','','','','','',995,8,'img/10101050.jpg',11,1,928.5000,0,9,'2011-04-29',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:38','2011-09-30 01:06:27');
INSERT INTO `oc_product` VALUES (10101051,'pr236 0026','','','','','','','',995,8,'img/10101051.jpg',11,1,1025.0000,0,9,'2011-04-30',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:39','2011-09-30 01:06:28');
INSERT INTO `oc_product` VALUES (10101060,'pr231 0037','','','','','','','',995,8,'img/10101060.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:40','2011-09-30 01:06:29');
INSERT INTO `oc_product` VALUES (10101070,'pr231 0021','','','','','','','',995,8,'img/10101070.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:41','2011-09-30 01:06:30');
INSERT INTO `oc_product` VALUES (10101080,'pr231 0027','','','','','','','',995,8,'img/10101080.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:42','2011-09-30 01:06:31');
INSERT INTO `oc_product` VALUES (10101090,'pr212 0003','','','','','','','',995,8,'img/10101090.jpg',11,1,180.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:43','2011-09-30 01:06:32');
INSERT INTO `oc_product` VALUES (10101091,'pr212 0001','','','','','','','',995,8,'img/10101091.jpg',11,1,268.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:44','2011-09-30 01:06:33');
INSERT INTO `oc_product` VALUES (10101092,'pr212 0002','','','','','','','',995,8,'img/10101092.jpg',11,1,417.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:45','2011-09-30 01:06:34');
INSERT INTO `oc_product` VALUES (10101093,'pr212 0004','','','','','','','',995,8,'img/10101093.jpg',11,1,633.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:46','2011-09-30 01:06:35');
INSERT INTO `oc_product` VALUES (10101100,'pr212 0008','','','','','','','',995,8,'img/10101100.jpg',11,1,236.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:47','2011-09-30 01:06:36');
INSERT INTO `oc_product` VALUES (10101101,'pr212 0005','','','','','','','',995,8,'img/10101101.jpg',11,1,354.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:48','2011-09-30 01:06:37');
INSERT INTO `oc_product` VALUES (10101102,'pr212 0006','','','','','','','',995,8,'img/10101102.jpg',11,1,599.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:49','2011-09-30 01:06:38');
INSERT INTO `oc_product` VALUES (10101140,'pr295 0001','','','','','','','',995,8,'img/10101140.jpg',11,1,172.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:50','2011-09-30 01:06:39');
INSERT INTO `oc_product` VALUES (10101150,'pr250 0001','','','','','','','',995,8,'img/10101150.jpg',11,1,191.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:51','2011-09-30 01:06:40');
INSERT INTO `oc_product` VALUES (10101151,'pr250 0003','','','','','','','',995,8,'img/10101151.jpg',11,1,250.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:52','2011-09-30 01:06:41');
INSERT INTO `oc_product` VALUES (10101152,'pr250 0004','','','','','','','',995,8,'img/10101152.jpg',11,1,572.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:53','2011-09-30 01:06:42');
INSERT INTO `oc_product` VALUES (10101200,'pr212 0043','','','','','','','',995,8,'img/10101200.jpg',11,1,666.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:54','2011-09-30 01:06:43');
INSERT INTO `oc_product` VALUES (10101201,'pr212 0042','','','','','','','',995,8,'img/10101201.jpg',11,1,666.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:55','2011-09-30 01:06:44');
INSERT INTO `oc_product` VALUES (10101210,'pr212 0033','','','','','','','',995,8,'img/10101210.jpg',11,1,1384.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:56','2011-09-30 01:06:45');
INSERT INTO `oc_product` VALUES (10101211,'pr212 0030','','','','','','','',995,8,'img/10101211.jpg',11,1,1384.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:57','2011-09-30 01:06:46');
INSERT INTO `oc_product` VALUES (10101220,'pr212 0031','','','','','','','',995,8,'img/10101220.jpg',11,1,745.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:58','2011-09-30 01:06:47');
INSERT INTO `oc_product` VALUES (10101221,'pr212 0032','','','','','','','',995,8,'img/10101221.jpg',11,1,745.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:59','2011-09-30 01:06:48');
INSERT INTO `oc_product` VALUES (10102001,'pr261 0018','','','','','','','',995,8,'img/10102001.jpg',11,1,206.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:49');
INSERT INTO `oc_product` VALUES (10102002,'pr261 0013','','','','','','','',995,8,'img/10102002.jpg',11,1,213.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:50');
INSERT INTO `oc_product` VALUES (10102004,'pr261 0006','','','','','','','',995,8,'img/10102004.jpg',11,1,212.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:51');
INSERT INTO `oc_product` VALUES (10102005,'pr261 0008','','','','','','','',995,8,'img/10102005.jpg',11,1,217.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:52');
INSERT INTO `oc_product` VALUES (10102010,'pr261 0019','','','','','','','',995,8,'img/10102010.jpg',11,1,332.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:53');
INSERT INTO `oc_product` VALUES (10102011,'pr261 0014','','','','','','','',995,8,'img/10102011.jpg',11,1,343.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:54');
INSERT INTO `oc_product` VALUES (10102013,'pr261 0004','','','','','','','',995,8,'img/10102013.jpg',11,1,339.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:55');
INSERT INTO `oc_product` VALUES (10102014,'pr261 0011','','','','','','','',995,8,'img/10102014.jpg',11,1,347.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:56');
INSERT INTO `oc_product` VALUES (10102020,'pr261 0021','','','','','','','',995,8,'img/10102020.jpg',11,1,499.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:57');
INSERT INTO `oc_product` VALUES (10102021,'pr261 0017','','','','','','','',995,8,'img/10102021.jpg',11,1,507.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:58');
INSERT INTO `oc_product` VALUES (10102023,'pr261 0002','','','','','','','',995,8,'img/10102023.jpg',11,1,510.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','2011-09-30 01:06:59');
INSERT INTO `oc_product` VALUES (10102024,'pr261 0007','','','','','','','',995,8,'img/10102024.jpg',11,1,515.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102030,'pr261 0003','','','','','','','',995,8,'img/10102030.jpg',11,1,807.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102031,'pr261 0009','','','','','','','',995,8,'img/10102031.jpg',11,1,822.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102040,'pr261 0005','','','','','','','',995,8,'img/10102040.jpg',11,1,1145.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102041,'pr261 0015','','','','','','','',995,8,'img/10102041.jpg',11,1,1204.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102050,'pr261 0001','','','','','','','',995,8,'img/10102050.jpg',11,1,1691.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102051,'pr261 0016','','','','','','','',995,8,'img/10102051.jpg',11,1,1778.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102060,'pr261 0010','','','','','','','',995,8,'img/10102060.jpg',11,1,4863.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102070,'pr261 0012','','','','','','','',995,8,'img/10102070.jpg',11,1,7034.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10102080,'pr261 0020','','','','','','','',995,8,'img/10102080.jpg',11,1,13591.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103120,'pr295 0025','','','','','','','',995,8,'img/10103120.jpg',11,1,898.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103121,'pr295 0031','','','','','','','',995,8,'img/10103121.jpg',11,1,1348.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103122,'pr295 0030','','','','','','','',995,8,'img/10103122.jpg',11,1,1872.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103123,'pr295 0051','','','','','','','',995,8,'img/10103123.jpg',11,1,3887.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103124,'pr295 0057','','','','','','','',995,8,'img/10103124.jpg',11,1,6719.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103125,'pr295 0052','','','','','','','',995,8,'img/10103125.jpg',11,1,10342.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103130,'pr295 0058','','','','','','','',995,8,'img/10103130.jpg',11,1,898.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103131,'pr295 0053','','','','','','','',995,8,'img/10103131.jpg',11,1,1348.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103132,'pr295 0056','','','','','','','',995,8,'img/10103132.jpg',11,1,1872.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103133,'pr295 0065','','','','','','','',995,8,'img/10103133.jpg',11,1,3887.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103134,'pr295 0071','','','','','','','',995,8,'img/10103134.jpg',11,1,6719.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10103135,'pr295 0072','','','','','','','',995,8,'img/10103135.jpg',11,1,10342.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105001,'pr295 0018','','','','','','','',995,8,'img/10105001.jpg',11,1,157.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105002,'pr295 0011','','','','','','','',995,8,'img/10105002.jpg',11,1,150.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105005,'pr295 0073','','','','','','','',995,8,'img/10105005.jpg',11,1,165.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105006,'pr295 0016','','','','','','','',995,8,'img/10105006.jpg',11,1,161.0000,0,9,'0000-00-00',1.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,2,'0000-00-00 00:00:00','2019-01-18 16:44:19');
INSERT INTO `oc_product` VALUES (10105010,'pr290 0006','','','','','','','',995,8,'img/10105010.jpg',11,1,118.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105011,'pr290 0001','','','','','','','',995,8,'img/10105011.jpg',11,1,118.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105012,'pr290 0008','','','','','','','',995,8,'img/10105012.jpg',11,1,143.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105020,'pr290 0053','','','','','','','',995,8,'img/10105020.jpg',11,1,132.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105021,'pr290 0042','','','','','','','',995,8,'img/10105021.jpg',11,1,140.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10105022,'pr290 0054','','','','','','','',995,8,'img/10105022.jpg',11,1,129.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10106001,'pr168 0010','','','','','','','',995,8,'img/10106001.jpg',11,1,554.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10106002,'pr168 0007','','','','','','','',995,8,'img/10106002.jpg',11,1,581.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10106003,'pr168 0025','','','','','','','',995,8,'img/10106003.jpg',11,1,643.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110001,'pr221 0002','','','','','','','',995,8,'img/10110001.jpg',11,1,181.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110002,'pr221 0004','','','','','','','',995,8,'img/10110002.jpg',11,1,185.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110003,'pr221 0001','','','','','','','',995,8,'img/10110003.jpg',11,1,181.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110004,'pr221 0012','','','','','','','',995,8,'img/10110004.jpg',11,1,185.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110010,'pr221 0006','','','','','','','',995,8,'img/10110010.jpg',11,1,244.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110011,'pr221 0008','','','','','','','',995,8,'img/10110011.jpg',11,1,252.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110012,'pr221 0003','','','','','','','',995,8,'img/10110012.jpg',11,1,244.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110013,'pr221 0016','','','','','','','',995,8,'img/10110013.jpg',11,1,252.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110020,'pr221 0009','','','','','','','',995,8,'img/10110020.jpg',11,1,371.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110021,'pr221 0015','','','','','','','',995,8,'img/10110021.jpg',11,1,381.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110022,'pr221 0007','','','','','','','',995,8,'img/10110022.jpg',11,1,371.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110023,'pr221 0017','','','','','','','',995,8,'img/10110023.jpg',11,1,381.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110030,'pr221 0010','','','','','','','',995,8,'img/10110030.jpg',11,1,644.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110031,'pr221 0022','','','','','','','',995,8,'img/10110031.jpg',11,1,661.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110040,'pr221 0011','','','','','','','',995,8,'img/10110040.jpg',11,1,948.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110041,'pr221 0023','','','','','','','',995,8,'img/10110041.jpg',11,1,973.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110050,'pr221 0005','','','','','','','',995,8,'img/10110050.jpg',11,1,1496.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110051,'pr221 0025','','','','','','','',995,8,'img/10110051.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110060,'pr221 0013','','','','','','','',995,8,'img/10110060.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110070,'pr221 0014','','','','','','','',995,8,'img/10110070.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110080,'pr221 0019','','','','','','','',995,8,'img/10110080.jpg',11,1,0.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110090,'pr222 0001','','','','','','','',995,8,'img/10110090.jpg',11,1,215.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10110091,'pr222 0016','','','','','','','',995,8,'img/10110091.jpg',11,1,310.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201001,'prсер. 302','','','','','','','',995,8,'img/10201001.jpg',12,1,180.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201002,'prсер. 302','','','','','','','',995,8,'img/10201002.jpg',12,1,296.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201003,'prсер. 302','','','','','','','',995,8,'img/10201003.jpg',12,1,448.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201010,'prсер. 307','','','','','','','',995,8,'img/10201010.jpg',12,1,193.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201011,'prсер. 307','','','','','','','',995,8,'img/10201011.jpg',12,1,322.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201012,'prсер. 307','','','','','','','',995,8,'img/10201012.jpg',12,1,485.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201020,'prсер. 327','','','','','','','',995,8,'img/10201020.jpg',12,1,244.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201021,'prсер. 327','','','','','','','',995,8,'img/10201021.jpg',12,1,348.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201022,'prсер. 327','','','','','','','',995,8,'img/10201022.jpg',12,1,458.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201030,'prсер. 300','','','','','','','',995,8,'img/10201030.jpg',12,1,174.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201031,'prсер. 300','','','','','','','',995,8,'img/10201031.jpg',12,1,294.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201032,'prсер. 300','','','','','','','',995,8,'img/10201032.jpg',12,1,448.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201033,'prсер. 300','','','','','','','',995,8,'img/10201033.jpg',12,1,641.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201034,'prсер. 300','','','','','','','',995,8,'img/10201034.jpg',12,1,1046.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,4,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201035,'prсер. 300','','','','','','','',995,8,'img/10201035.jpg',12,1,1720.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201040,'prсер. 305','','','','','','','',995,8,'img/10201040.jpg',12,1,225.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201041,'prсер. 305','','','','','','','',995,8,'img/10201041.jpg',12,1,300.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201042,'prсер. 305','','','','','','','',995,8,'img/10201042.jpg',12,1,485.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201043,'prсер. 305','','','','','','','',995,8,'img/10201043.jpg',12,1,798.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201044,'prсер. 305','','','','','','','',995,8,'img/10201044.jpg',12,1,973.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201045,'prсер. 305','','','','','','','',995,8,'img/10201045.jpg',12,1,1684.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201050,'prсер. 322T','','','','','','','',995,8,'img/10201050.jpg',12,1,276.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201051,'prсер. 322T','','','','','','','',995,8,'img/10201051.jpg',12,1,390.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10201052,'prсер. 322T','','','','','','','',995,8,'img/10201052.jpg',13,1,690.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301001,'pr7100M1N040400A','','','','','','','',995,8,'img/10301001.jpg',13,1,133.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301002,'pr7100M1N050500A','','','','','','','',995,8,'img/10301002.jpg',13,1,197.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301003,'pr7100M1N101000A','','','','','','','',995,8,'img/10301003.jpg',13,1,294.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301010,'pr7100M2N040400A','','','','','','','',995,8,'img/10301010.jpg',13,1,137.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301011,'pr7100M2N050500A','','','','','','','',995,8,'img/10301011.jpg',13,1,204.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301012,'pr7100M2N101000A','','','','','','','',995,8,'img/10301012.jpg',13,1,304.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301020,'pr7100M3N040400A','','','','','','','',995,8,'img/10301020.jpg',13,1,142.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301021,'pr7100M3N050500A','','','','','','','',995,8,'img/10301021.jpg',13,1,215.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301022,'pr7100M3N101000A','','','','','','','',995,8,'img/10301022.jpg',13,1,316.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301030,'pr7100L1N040400A','','','','','','','',995,8,'img/10301030.jpg',13,1,138.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301031,'pr7100L1N050500A','','','','','','','',995,8,'img/10301031.jpg',13,1,203.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301032,'pr7100L1N101000A','','','','','','','',995,8,'img/10301032.jpg',13,1,296.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301033,'pr7100L1N121200A','','','','','','','',995,8,'img/10301033.jpg',13,1,567.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301034,'pr7100L1N141400A','','','','','','','',995,8,'img/10301034.jpg',13,1,779.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301035,'pr7100L1N202000A','','','','','','','',995,8,'img/10301035.jpg',13,1,1261.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301040,'pr7100L2N040400A','','','','','','','',995,8,'img/10301040.jpg',13,1,142.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301041,'pr7100L2N050500A','','','','','','','',995,8,'img/10301041.jpg',13,1,211.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301042,'pr7100L2N101000A','','','','','','','',995,8,'img/10301042.jpg',13,1,315.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301043,'pr7100L2N121200A','','','','','','','',995,8,'img/10301043.jpg',13,1,646.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301044,'pr7100L2N141400A','','','','','','','',995,8,'img/10301044.jpg',13,1,856.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301045,'pr7100L2N202000A','','','','','','','',995,8,'img/10301045.jpg',13,1,1344.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301080,'pr7100M5N040401A','','','','','','','',995,8,'img/10301080.jpg',13,1,228.5000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301081,'pr7100M5N050501A','','','','','','','',995,8,'img/10301081.jpg',13,1,340.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301082,'pr7100M5N101001A','','','','','','','',995,8,'img/10301082.jpg',13,1,506.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301083,'pr7100L5N121201A','','','','','','','',995,8,'img/10301083.jpg',13,1,758.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301084,'pr7100L5N141401A','','','','','','','',995,8,'img/10301084.jpg',13,1,1155.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10301085,'pr7100L5N202001A','','','','','','','',995,8,'img/10301085.jpg',13,1,1845.0000,0,9,'0000-00-00',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES (10101002,'pr236 0001','','','','','','','',999,6,'img/10101002.jpg',11,1,129.5000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,5,'2009-02-03 16:42:17','2011-09-30 01:06:08');
INSERT INTO `oc_product` VALUES (10101005,'pr236 0015','','','','','','','',999,6,'img/10101005.jpg',11,1,131.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,1,1,1,0,1,1,'2009-02-03 17:07:26','2011-09-30 01:07:22');
INSERT INTO `oc_product` VALUES (10101022,'pr236 0040','','','','','','','',929,5,'img/10101022.jpg',11,0,416.0000,0,9,'2009-02-03',1.00000000,0,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2009-02-03 21:07:49','2011-09-30 01:05:46');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_advertise_google` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_advertise_google` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_advertise_google_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_advertise_google_status` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_advertise_google_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_advertise_google_target` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (10101001,1,'Кран шар. 1/2&quot; в/в (бабочка) Tiemme 236 0002','&lt;p&gt;\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\n	&lt;li&gt;\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\n	&lt;li&gt;\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\n	&lt;li&gt;\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\n	&lt;li&gt;\n		GPS and A-GPS ready&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\n	&lt;li&gt;\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\n	&lt;li&gt;\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\n	&lt;li&gt;\n		5 megapixel color camera with auto focus&lt;/li&gt;\n	&lt;li&gt;\n		VGA CMOS color camera&lt;/li&gt;\n	&lt;li&gt;\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\n	&lt;li&gt;\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\n	&lt;li&gt;\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\n	&lt;li&gt;\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\n	&lt;li&gt;\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\n	&lt;li&gt;\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\n	&lt;li&gt;\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\n&lt;/ul&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101002,1,'Кран шар. 1/2&quot; в/н (бабочка) Tiemme 236 0001','&lt;p&gt;\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\n	&lt;li&gt;\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\n	&lt;li&gt;\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\n	&lt;li&gt;\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\n	&lt;li&gt;\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\n	&lt;li&gt;\n		Built-in GPS&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\n	&lt;li&gt;\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\n	&lt;li&gt;\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\n	&lt;li&gt;\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\n	&lt;li&gt;\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\n	&lt;li&gt;\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\n	&lt;li&gt;\n		3.5mm stereo headset jack&lt;/li&gt;\n	&lt;li&gt;\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\n&lt;/ul&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101003,1,'Кран шар. 1/2&quot; н/н (бабочка) Tiemme 236 0032','&lt;p&gt;\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101004,1,'Кран шар. 1/2&quot; в/в (ручка) Tiemme 236 0010','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\n		&lt;br /&gt;\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101005,1,'Кран шар. 1/2&quot; в/н (ручка) Tiemme 236 0015','&lt;p&gt;\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101010,1,'Кран шар. 3/4&quot; в/в (бабочка) Tiemme 236 0003','&lt;div&gt;\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101011,1,'Кран шар. 3/4&quot; в/н (бабочка) Tiemme 236 0006','&lt;div&gt;\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\n	&lt;p&gt;\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\n	&lt;p&gt;\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\n&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101012,1,'Кран шар. 3/4&quot; н/н (бабочка) Tiemme 236 0038','&lt;p&gt;\n	Product 8&lt;/p&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101013,1,'Кран шар. 3/4&quot; в/в (ручка) Tiemme 236 0007','&lt;div&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\n&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101014,1,'Кран шар. 3/4&quot; в/н (ручка) Tiemme 236 0019','&lt;p class=&quot;intro&quot;&gt;\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101020,1,'Кран шар. 1&quot; в/в (бабочка) Tiemme 236 0012','&lt;div&gt;\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101021,1,'Кран шар. 1&quot; в/н (бабочка) Tiemme 236 0011','&lt;p&gt;\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\n	&lt;br&gt;\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\n&lt;h3&gt;\n	Features:&lt;/h3&gt;\n&lt;p&gt;\n	Unrivaled display performance&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\n	&lt;li&gt;\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\n	&lt;li&gt;\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\n	&lt;li&gt;\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\n	&lt;li&gt;\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\n	&lt;li&gt;\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\n	&lt;li&gt;\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Simple setup and operation&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\n	&lt;li&gt;\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\n	&lt;li&gt;\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Sleek, elegant design&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\n	&lt;li&gt;\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\n	&lt;li&gt;\n		Unique hinge design for effortless adjustment&lt;/li&gt;\n	&lt;li&gt;\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;h3&gt;\n	Technical specifications&lt;/h3&gt;\n&lt;p&gt;\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\n	&lt;li&gt;\n		2048 x 1280&lt;/li&gt;\n	&lt;li&gt;\n		1920 x 1200&lt;/li&gt;\n	&lt;li&gt;\n		1280 x 800&lt;/li&gt;\n	&lt;li&gt;\n		1024 x 640&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		16.7 million&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		170° horizontal; 170° vertical&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		700:1&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		16 ms&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Antiglare hardcoat&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Display Power,&lt;/li&gt;\n	&lt;li&gt;\n		System sleep, wake&lt;/li&gt;\n	&lt;li&gt;\n		Brightness&lt;/li&gt;\n	&lt;li&gt;\n		Monitor tilt&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\n	Cable&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		DVI (Digital Visual Interface)&lt;/li&gt;\n	&lt;li&gt;\n		FireWire 400&lt;/li&gt;\n	&lt;li&gt;\n		USB 2.0&lt;/li&gt;\n	&lt;li&gt;\n		DC power (24 V)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Connectors&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\n	&lt;li&gt;\n		Two FireWire 400 ports&lt;/li&gt;\n	&lt;li&gt;\n		Kensington security port&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\n	&lt;li&gt;\n		Maximum power when operating: 150W&lt;/li&gt;\n	&lt;li&gt;\n		Energy saver mode: 3W or less&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\n	&lt;li&gt;\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\n	&lt;li&gt;\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\n	&lt;li&gt;\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		FCC Part 15 Class B&lt;/li&gt;\n	&lt;li&gt;\n		EN55022 Class B&lt;/li&gt;\n	&lt;li&gt;\n		EN55024&lt;/li&gt;\n	&lt;li&gt;\n		VCCI Class B&lt;/li&gt;\n	&lt;li&gt;\n		AS/NZS 3548 Class B&lt;/li&gt;\n	&lt;li&gt;\n		CNS 13438 Class B&lt;/li&gt;\n	&lt;li&gt;\n		ICES-003 Class B&lt;/li&gt;\n	&lt;li&gt;\n		ISO 13406 part 2&lt;/li&gt;\n	&lt;li&gt;\n		MPR II&lt;/li&gt;\n	&lt;li&gt;\n		IEC 60950&lt;/li&gt;\n	&lt;li&gt;\n		UL 60950&lt;/li&gt;\n	&lt;li&gt;\n		CSA 60950&lt;/li&gt;\n	&lt;li&gt;\n		EN60950&lt;/li&gt;\n	&lt;li&gt;\n		ENERGY STAR&lt;/li&gt;\n	&lt;li&gt;\n		TCO \'03&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\n	30-inch Apple Cinema HD Display&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\n	&lt;li&gt;\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\n	&lt;li&gt;\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\n	&lt;li&gt;\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Mac Pro, all graphic options&lt;/li&gt;\n	&lt;li&gt;\n		MacBook Pro&lt;/li&gt;\n	&lt;li&gt;\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\n	&lt;li&gt;\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\n	&lt;li&gt;\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\n	&lt;li&gt;\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\n&lt;/ul&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101022,1,'Кран шар. 1&quot; н/н (бабочка) Tiemme 236 0040','&lt;div&gt;\n	&lt;p&gt;\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\n&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101023,1,'Кран шар. 1&quot; в/в (ручка) Tiemme 236 0005','&lt;div&gt;\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101024,1,'Кран шар. 1&quot; в/н (ручка) Tiemme 236 0014','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101030,1,'Кран шар. 1 1/4&quot; в/в (бабочка) Tiemme 236 0035','&lt;div&gt;\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101031,1,'Кран шар. 1 1/4&quot; в/н (бабочка) Tiemme 236 0031','&lt;p&gt;\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101032,1,'Кран шар. 1 1/4&quot; н/н (бабочка) Tiemme 236 0048','&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101033,1,'Кран шар. 1 1/4&quot; в/в (ручка) Tiemme 236 0008','&lt;p&gt;\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\n','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101034,1,'Кран шар. 1 1/4&quot; в/н (ручка) Tiemme 236 0023','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101040,1,'Кран шар. 1 1/2&quot; в/в (ручка) Tiemme 236 0009','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101041,1,'Кран шар. 1 1/2&quot; в/н (ручка) Tiemme 236 0029','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101050,1,'Кран шар. 2&quot; в/в (ручка) Tiemme 236 0004','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101051,1,'Кран шар. 2&quot; в/н (ручка) Tiemme 236 0026','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101060,1,'Кран шар. 2 1/2&quot; в/в (ручка) Tiemme 231 0037','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101070,1,'Кран шар. 3&quot; в/в (ручка) Tiemme 231 0021','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101080,1,'Кран шар. 4&quot; в/в (ручка) Tiemme 231 0027','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101090,1,'Кран шар. 1/2&quot; со сгоном (бабочка) Tiemme 212 0003','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101091,1,'Кран шар. 3/4&quot; со сгоном (бабочка) Tiemme 212 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101092,1,'Кран шар. 1&quot; со сгоном (бабочка) Tiemme 212 0002','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101093,1,'Кран шар. 1 1/4&quot; со сгоном (бабочка) Tiemme 212 0004','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101100,1,'Кран шар. угл. 1/2&quot; со сгоном (бабочка) Tiemme 212 0008','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101101,1,'Кран шар. угл. 3/4&quot; со сгоном (бабочка) Tiemme 212 0005','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101102,1,'Кран шар. угл. 1&quot; со сгоном (бабочка) Tiemme 212 0006','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101140,1,'Кран шаровый сливной 1/2&quot; нар. с заглушкой Tiemme 295 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101150,1,'Кран шаровый со штуцером 1/2&quot; нар. Tiemme 250 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101151,1,'Кран шаровый со штуцером 3/4&quot; нар. Tiemme 250 0003','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101152,1,'Кран шаровый со штуцером 1&quot; нар. Tiemme 250 0004','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101200,1,'Кран шар. 1&quot; со сгоном и термометром (красный) Tiemme 212 0043','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101201,1,'Кран шар. 1&quot; со сгоном и термометром (синий) Tiemme 212 0042','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101210,1,'Кран шар. 1 1/4&quot; со сгоном и термометром (красный) Tiemme 212 0033','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101211,1,'Кран шар. 1 1/4&quot; со сгоном и термометром (синий) Tiemme 212 0030','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101220,1,'Кран шар. угловой 1&quot; со сгоном и термометр. (красный) Tiemme 212 0031','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10101221,1,'Кран шар. угловой 1&quot; со сгоном и термометр. (синий) Tiemme 212 0032','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102001,1,'Кран шар. 1/2&quot; в/в (бабочка) Tiemme Tifone 261 0018','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102002,1,'Кран шар. 1/2&quot; в/н (бабочка) Tiemme Tifone 261 0013','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102004,1,'Кран шар. 1/2&quot; в/в (ручка) Tiemme Tifone 261 0006','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102005,1,'Кран шар. 1/2&quot; в/н (ручка) Tiemme Tifone 261 0008','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102010,1,'Кран шар. 3/4&quot; в/в (бабочка) Tiemme Tifone 261 0019','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102011,1,'Кран шар. 3/4&quot; в/н (бабочка) Tiemme Tifone 261 0014','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102013,1,'Кран шар. 3/4&quot; в/в (ручка) Tiemme Tifone 261 0004','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102014,1,'Кран шар. 3/4&quot; в/н (ручка) Tiemme Tifone 261 0011','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102020,1,'Кран шар. 1&quot; в/в (бабочка) Tiemme Tifone 261 0021','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102021,1,'Кран шар. 1&quot; в/н (бабочка) Tiemme Tifone 261 0017','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102023,1,'Кран шар. 1&quot; в/в (ручка) Tiemme Tifone 261 0002','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102024,1,'Кран шар. 1&quot; в/н (ручка) Tiemme Tifone 261 0007','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102030,1,'Кран шар. 1 1/4&quot; в/в (ручка) Tiemme Tifone 261 0003','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102031,1,'Кран шар. 1 1/4&quot; в/н (ручка) Tiemme Tifone 261 0009','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102040,1,'Кран шар. 1 1/2&quot; в/в (ручка) Tiemme Tifone 261 0005','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102041,1,'Кран шар. 1 1/2&quot; в/н (ручка) Tiemme Tifone 261 0015','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102050,1,'Кран шар. 2&quot; в/в (ручка) Tiemme Tifone 261 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102051,1,'Кран шар. 2&quot; в/н (ручка) Tiemme Tifone 261 0016','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102060,1,'Кран шар. 2 1/2&quot; в/в (ручка) Tiemme Tifone 261 0010','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102070,1,'Кран шар. 3&quot; в/н (ручка) Tiemme Tifone 261 0012','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10102080,1,'Кран шар. 4&quot; в/н (ручка) Tiemme Tifone 261 0020','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103120,1,'Кран шаровый трёхходовой 1/2&quot; L-порт Tiemme 295 0025','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103121,1,'Кран шаровый трёхходовой 3/4&quot; L-порт Tiemme 295 0031','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103122,1,'Кран шаровый трёхходовой 1&quot; L-порт Tiemme 295 0030','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103123,1,'Кран шаровый трёхходовой 1 1/4&quot; L-порт Tiemme 295 0051','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103124,1,'Кран шаровый трёхходовой 1 1/2&quot; L-порт Tiemme 295 0057','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103125,1,'Кран шаровый трёхходовой 2&quot; L-порт Tiemme 295 0052','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103130,1,'Кран шаровый трёхходовой 1/2&quot; T-порт Tiemme 295 0058','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103131,1,'Кран шаровый трёхходовой 3/4&quot; T-порт Tiemme 295 0053','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103132,1,'Кран шаровый трёхходовой 1&quot; T-порт Tiemme 295 0056','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103133,1,'Кран шаровый трёхходовой 1 1/4&quot; T-порт Tiemme 295 0065','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103134,1,'Кран шаровый трёхходовой 1 1/2&quot; T-порт Tiemme 295 0071','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10103135,1,'Кран шаровый трёхходовой 2&quot; T-порт Tiemme 295 0072','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105001,1,'Кран шар. угл. 1/2&quot; Х 1/2&quot; н/н (хром) Tiemme 295 0018','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105002,1,'Кран шар. угл. 1/2&quot; Х 3/4&quot; н/н (хром) Tiemme 295 0011','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105005,1,'Кран шар. угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0073','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105006,1,'Вентиль угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0016','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105010,1,'Кран шар. 1/2&quot; в/в  mini (хром) Tiemme 290 0006','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105011,1,'Кран шар. 1/2&quot; в/н  mini (хром) Tiemme 290 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105012,1,'Кран шар. 1/2&quot; н/н  mini (хром) Tiemme 290 0008','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105020,1,'Кран шар. 1/2&quot; в/в  mini под отвертку (хром) Tiemme 290 0053','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105021,1,'Кран шар. 1/2&quot; в/н  mini под отвертку (хром) Tiemme 290 0042','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10105022,1,'Кран шар. 1/2&quot; н/н  mini под отвертку (хром) Tiemme 290 0054','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10106001,1,'Кран шаровый  16 Х 16 (бабочка) ПРЕСС Tiemme 168 0010','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10106002,1,'Кран шаровый  20 Х 20 (бабочка) ПРЕСС Tiemme 168 0007','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10106003,1,'Кран шаровый  26 Х 26 (бабочка) ПРЕСС Tiemme 168 0025','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110001,1,'Кран шар. 1/2&quot; для ГАЗА в/в (бабочка) Tiemme 221 0002','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110002,1,'Кран шар. 1/2&quot; для ГАЗА в/н (бабочка) Tiemme 221 0004','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110003,1,'Кран шар. 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110004,1,'Кран шар. 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0012','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110010,1,'Кран шар. 3/4&quot; для ГАЗА в/в (бабочка) Tiemme 221 0006','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110011,1,'Кран шар. 3/4&quot; для ГАЗА в/н (бабочка) Tiemme 221 0008','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110012,1,'Кран шар. 3/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0003','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110013,1,'Кран шар. 3/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0016','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110020,1,'Кран шар. 1&quot; для ГАЗА в/в (бабочка) Tiemme 221 0009','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110021,1,'Кран шар. 1&quot; для ГАЗА в/н (бабочка) Tiemme 221 0015','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110022,1,'Кран шар. 1&quot; для ГАЗА в/в (ручка) Tiemme 221 0007','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110023,1,'Кран шар. 1&quot; для ГАЗА в/н (ручка) Tiemme 221 0017','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110030,1,'Кран шар. 1 1/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0010','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110031,1,'Кран шар. 1 1/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0022','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110040,1,'Кран шар. 1 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0011','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110041,1,'Кран шар. 1 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0023','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110050,1,'Кран шар. 2&quot; для ГАЗА в/в (ручка) Tiemme 221 0005','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110051,1,'Кран шар. 2&quot; для ГАЗА в/н (ручка) Tiemme 221 0025','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110060,1,'Кран шар. 2 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0013','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110070,1,'Кран шар. 3&quot; для ГАЗА в/в (ручка) Tiemme 221 0014','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110080,1,'Кран шар. 4&quot; для ГАЗА в/в (ручка) Tiemme 221 0019','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110090,1,'Кран шар. угловой 1/2&quot; для ГАЗА н/н Tiemme 222 0001','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10110091,1,'Кран шар. угловой 3/4&quot; для ГАЗА н/н Tiemme 222 0016','','','Tiemme','','');
INSERT INTO `oc_product_description` VALUES (10201001,1,'Кран шаровой 1/2&quot; в/в (бабочка) Bugatti сер. 302','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201002,1,'Кран шаровой 3/4&quot; в/в (бабочка) Bugatti сер. 302','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201003,1,'Кран шаровой 1&quot; в/в (бабочка) Bugatti сер. 302','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201010,1,'Кран шаровой 1/2&quot; в/н (бабочка) Bugatti сер. 307','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201011,1,'Кран шаровой 3/4&quot; в/н (бабочка) Bugatti сер. 307','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201012,1,'Кран шаровой 1&quot; в/н (бабочка) Bugatti сер. 307','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201020,1,'Кран шаровой 1/2&quot; н/н (бабочка) Bugatti сер. 327','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201021,1,'Кран шаровой 3/4&quot; н/н (бабочка) Bugatti сер. 327','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201022,1,'Кран шаровой 1&quot; н/н (бабочка) Bugatti сер. 327','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201030,1,'Кран шаровой 1/2&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201031,1,'Кран шаровой 3/4&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201032,1,'Кран шаровой 1&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201033,1,'Кран шаровой 1 1/4&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201034,1,'Кран шаровой 1 1/2&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201035,1,'Кран шаровой 2&quot; в/в (ручка) Bugatti сер. 300','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201040,1,'Кран шаровой 1/2&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201041,1,'Кран шаровой 3/4&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201042,1,'Кран шаровой 1&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201043,1,'Кран шаровой 1 1/4&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201044,1,'Кран шаровой 1 1/2&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201045,1,'Кран шаровой 2&quot; в/н (ручка) Bugatti сер. 305','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201050,1,'Кран шарой 1/2&quot; с американкой (бабочка) Bugatti сер. 322T','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201051,1,'Кран шарой 3/4&quot; с американкой (бабочка) Bugatti сер. 322T','','','Bugatti','','');
INSERT INTO `oc_product_description` VALUES (10201052,1,'Кран шарой 1&quot; с американкой (бабочка) Bugatti сер. 322T','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301001,1,'Кран шаровой 1/2&quot; в/в (бабочка) GF 7100M1N040400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301002,1,'Кран шаровой 3/4&quot; в/в (бабочка) GF 7100M1N050500A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301003,1,'Кран шаровой 1&quot; в/в (бабочка) GF 7100M1N101000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301010,1,'Кран шаровой 1/2&quot; в/н (бабочка) GF 7100M2N040400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301011,1,'Кран шаровой 3/4&quot; в/н (бабочка) GF 7100M2N050500A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301012,1,'Кран шаровой 1&quot; в/н (бабочка) GF 7100M2N101000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301020,1,'Кран шаровой 1/2&quot; н/н (бабочка) GF 7100M3N040400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301021,1,'Кран шаровой 3/4&quot; н/н (бабочка) GF 7100M3N050500A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301022,1,'Кран шаровой 1&quot; н/н (бабочка) GF 7100M3N101000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301030,1,'Кран шаровой 1/2&quot; в/в (ручка) GF 7100L1N040400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301031,1,'Кран шаровой 3/4&quot; в/в (ручка) GF 7100L1N050500A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301032,1,'Кран шаровой 1&quot; в/в (ручка) GF 7100L1N101000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301033,1,'Кран шаровой 1 1/4&quot; в/в (ручка) GF 7100L1N121200A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301034,1,'Кран шаровой 1 1/2&quot; в/в (ручка) GF 7100L1N141400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301035,1,'Кран шаровой 2&quot; в/в (ручка) GF 7100L1N202000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301040,1,'Кран шаровой 1/2&quot; в/н (ручка) GF 7100L2N040400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301041,1,'Кран шаровой 3/4&quot; в/н (ручка) GF 7100L2N050500A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301042,1,'Кран шаровой 1&quot; в/н (ручка) GF 7100L2N101000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301043,1,'Кран шаровой 1 1/4&quot; в/н (ручка) GF 7100L2N121200A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301044,1,'Кран шаровой 1 1/2&quot; в/н (ручка) GF 7100L2N141400A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301045,1,'Кран шаровой 2&quot; в/н (ручка) GF 7100L2N202000A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301080,1,'Кран шарой 1/2&quot; с американкой (бабочка) GF 7100M5N040401A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301081,1,'Кран шарой 3/4&quot; с американкой (бабочка) GF 7100M5N050501A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301082,1,'Кран шарой 1&quot; с американкой (бабочка) GF 7100M5N101001A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301083,1,'Кран шарой 1 1/4&quot; с американкой (ручка) GF 7100L5N121201A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301084,1,'Кран шарой 1 1/2&quot; с американкой (ручка) GF 7100L5N141401A','','','GF','','');
INSERT INTO `oc_product_description` VALUES (10301085,1,'Кран шарой 2&quot; с американкой (ручка) GF 7100L5N202001A','','','GF','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
INSERT INTO `oc_product_filter` VALUES (10105006,2);
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (10101001,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101002,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101003,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101004,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101005,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101010,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101011,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101012,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101013,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101014,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101020,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101021,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101022,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101023,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101024,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101030,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101031,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101032,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101033,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101034,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101040,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101041,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101050,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101051,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101060,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101070,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101080,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101090,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101091,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101092,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101093,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101100,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101101,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101102,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101140,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101150,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101151,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101152,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101200,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101201,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101210,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101211,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101220,10101000);
INSERT INTO `oc_product_to_category` VALUES (10101221,10101000);
INSERT INTO `oc_product_to_category` VALUES (10102001,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102002,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102004,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102005,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102010,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102011,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102013,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102014,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102020,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102021,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102023,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102024,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102030,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102031,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102040,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102041,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102050,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102051,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102060,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102070,10102000);
INSERT INTO `oc_product_to_category` VALUES (10102080,10102000);
INSERT INTO `oc_product_to_category` VALUES (10103120,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103121,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103122,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103123,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103124,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103125,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103130,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103131,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103132,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103133,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103134,10103000);
INSERT INTO `oc_product_to_category` VALUES (10103135,10103000);
INSERT INTO `oc_product_to_category` VALUES (10105001,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105002,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105005,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105006,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105010,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105011,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105012,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105020,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105021,10105000);
INSERT INTO `oc_product_to_category` VALUES (10105022,10105000);
INSERT INTO `oc_product_to_category` VALUES (10106001,10106000);
INSERT INTO `oc_product_to_category` VALUES (10106002,10106000);
INSERT INTO `oc_product_to_category` VALUES (10106003,10106000);
INSERT INTO `oc_product_to_category` VALUES (10110001,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110002,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110003,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110004,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110010,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110011,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110012,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110013,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110020,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110021,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110022,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110023,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110030,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110031,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110040,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110041,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110050,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110051,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110060,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110070,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110080,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110090,10110000);
INSERT INTO `oc_product_to_category` VALUES (10110091,10110000);
INSERT INTO `oc_product_to_category` VALUES (10201001,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201002,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201003,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201010,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201011,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201012,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201020,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201021,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201022,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201030,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201031,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201032,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201033,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201034,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201035,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201040,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201041,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201042,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201043,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201044,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201045,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201050,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201051,10201000);
INSERT INTO `oc_product_to_category` VALUES (10201052,10201000);
INSERT INTO `oc_product_to_category` VALUES (10301001,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301002,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301003,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301010,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301011,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301012,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301020,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301021,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301022,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301030,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301031,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301032,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301033,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301034,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301035,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301040,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301041,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301042,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301043,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301044,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301045,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301080,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301081,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301082,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301083,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301084,10301000);
INSERT INTO `oc_product_to_category` VALUES (10301085,10301000);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (10105006,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (10101001,0);
INSERT INTO `oc_product_to_store` VALUES (10101002,0);
INSERT INTO `oc_product_to_store` VALUES (10101003,0);
INSERT INTO `oc_product_to_store` VALUES (10101004,0);
INSERT INTO `oc_product_to_store` VALUES (10101005,0);
INSERT INTO `oc_product_to_store` VALUES (10101010,0);
INSERT INTO `oc_product_to_store` VALUES (10101011,0);
INSERT INTO `oc_product_to_store` VALUES (10101012,0);
INSERT INTO `oc_product_to_store` VALUES (10101013,0);
INSERT INTO `oc_product_to_store` VALUES (10101014,0);
INSERT INTO `oc_product_to_store` VALUES (10101020,0);
INSERT INTO `oc_product_to_store` VALUES (10101021,0);
INSERT INTO `oc_product_to_store` VALUES (10101022,0);
INSERT INTO `oc_product_to_store` VALUES (10101023,0);
INSERT INTO `oc_product_to_store` VALUES (10101024,0);
INSERT INTO `oc_product_to_store` VALUES (10101030,0);
INSERT INTO `oc_product_to_store` VALUES (10101031,0);
INSERT INTO `oc_product_to_store` VALUES (10101032,0);
INSERT INTO `oc_product_to_store` VALUES (10101033,0);
INSERT INTO `oc_product_to_store` VALUES (10101034,0);
INSERT INTO `oc_product_to_store` VALUES (10101040,0);
INSERT INTO `oc_product_to_store` VALUES (10101041,0);
INSERT INTO `oc_product_to_store` VALUES (10101050,0);
INSERT INTO `oc_product_to_store` VALUES (10101051,0);
INSERT INTO `oc_product_to_store` VALUES (10101060,0);
INSERT INTO `oc_product_to_store` VALUES (10101070,0);
INSERT INTO `oc_product_to_store` VALUES (10101080,0);
INSERT INTO `oc_product_to_store` VALUES (10101090,0);
INSERT INTO `oc_product_to_store` VALUES (10101091,0);
INSERT INTO `oc_product_to_store` VALUES (10101092,0);
INSERT INTO `oc_product_to_store` VALUES (10101093,0);
INSERT INTO `oc_product_to_store` VALUES (10101100,0);
INSERT INTO `oc_product_to_store` VALUES (10101101,0);
INSERT INTO `oc_product_to_store` VALUES (10101102,0);
INSERT INTO `oc_product_to_store` VALUES (10101140,0);
INSERT INTO `oc_product_to_store` VALUES (10101150,0);
INSERT INTO `oc_product_to_store` VALUES (10101151,0);
INSERT INTO `oc_product_to_store` VALUES (10101152,0);
INSERT INTO `oc_product_to_store` VALUES (10101200,0);
INSERT INTO `oc_product_to_store` VALUES (10101201,0);
INSERT INTO `oc_product_to_store` VALUES (10101210,0);
INSERT INTO `oc_product_to_store` VALUES (10101211,0);
INSERT INTO `oc_product_to_store` VALUES (10101220,0);
INSERT INTO `oc_product_to_store` VALUES (10101221,0);
INSERT INTO `oc_product_to_store` VALUES (10102001,0);
INSERT INTO `oc_product_to_store` VALUES (10102002,0);
INSERT INTO `oc_product_to_store` VALUES (10102004,0);
INSERT INTO `oc_product_to_store` VALUES (10102005,0);
INSERT INTO `oc_product_to_store` VALUES (10102010,0);
INSERT INTO `oc_product_to_store` VALUES (10102011,0);
INSERT INTO `oc_product_to_store` VALUES (10102013,0);
INSERT INTO `oc_product_to_store` VALUES (10102014,0);
INSERT INTO `oc_product_to_store` VALUES (10102020,0);
INSERT INTO `oc_product_to_store` VALUES (10102021,0);
INSERT INTO `oc_product_to_store` VALUES (10102023,0);
INSERT INTO `oc_product_to_store` VALUES (10102024,0);
INSERT INTO `oc_product_to_store` VALUES (10102030,0);
INSERT INTO `oc_product_to_store` VALUES (10102031,0);
INSERT INTO `oc_product_to_store` VALUES (10102040,0);
INSERT INTO `oc_product_to_store` VALUES (10102041,0);
INSERT INTO `oc_product_to_store` VALUES (10102050,0);
INSERT INTO `oc_product_to_store` VALUES (10102051,0);
INSERT INTO `oc_product_to_store` VALUES (10102060,0);
INSERT INTO `oc_product_to_store` VALUES (10102070,0);
INSERT INTO `oc_product_to_store` VALUES (10102080,0);
INSERT INTO `oc_product_to_store` VALUES (10103120,0);
INSERT INTO `oc_product_to_store` VALUES (10103121,0);
INSERT INTO `oc_product_to_store` VALUES (10103122,0);
INSERT INTO `oc_product_to_store` VALUES (10103123,0);
INSERT INTO `oc_product_to_store` VALUES (10103124,0);
INSERT INTO `oc_product_to_store` VALUES (10103125,0);
INSERT INTO `oc_product_to_store` VALUES (10103130,0);
INSERT INTO `oc_product_to_store` VALUES (10103131,0);
INSERT INTO `oc_product_to_store` VALUES (10103132,0);
INSERT INTO `oc_product_to_store` VALUES (10103133,0);
INSERT INTO `oc_product_to_store` VALUES (10103134,0);
INSERT INTO `oc_product_to_store` VALUES (10103135,0);
INSERT INTO `oc_product_to_store` VALUES (10105001,0);
INSERT INTO `oc_product_to_store` VALUES (10105002,0);
INSERT INTO `oc_product_to_store` VALUES (10105005,0);
INSERT INTO `oc_product_to_store` VALUES (10105006,0);
INSERT INTO `oc_product_to_store` VALUES (10105010,0);
INSERT INTO `oc_product_to_store` VALUES (10105011,0);
INSERT INTO `oc_product_to_store` VALUES (10105012,0);
INSERT INTO `oc_product_to_store` VALUES (10105020,0);
INSERT INTO `oc_product_to_store` VALUES (10105021,0);
INSERT INTO `oc_product_to_store` VALUES (10105022,0);
INSERT INTO `oc_product_to_store` VALUES (10106001,0);
INSERT INTO `oc_product_to_store` VALUES (10106002,0);
INSERT INTO `oc_product_to_store` VALUES (10106003,0);
INSERT INTO `oc_product_to_store` VALUES (10110001,0);
INSERT INTO `oc_product_to_store` VALUES (10110002,0);
INSERT INTO `oc_product_to_store` VALUES (10110003,0);
INSERT INTO `oc_product_to_store` VALUES (10110004,0);
INSERT INTO `oc_product_to_store` VALUES (10110010,0);
INSERT INTO `oc_product_to_store` VALUES (10110011,0);
INSERT INTO `oc_product_to_store` VALUES (10110012,0);
INSERT INTO `oc_product_to_store` VALUES (10110013,0);
INSERT INTO `oc_product_to_store` VALUES (10110020,0);
INSERT INTO `oc_product_to_store` VALUES (10110021,0);
INSERT INTO `oc_product_to_store` VALUES (10110022,0);
INSERT INTO `oc_product_to_store` VALUES (10110023,0);
INSERT INTO `oc_product_to_store` VALUES (10110030,0);
INSERT INTO `oc_product_to_store` VALUES (10110031,0);
INSERT INTO `oc_product_to_store` VALUES (10110040,0);
INSERT INTO `oc_product_to_store` VALUES (10110041,0);
INSERT INTO `oc_product_to_store` VALUES (10110050,0);
INSERT INTO `oc_product_to_store` VALUES (10110051,0);
INSERT INTO `oc_product_to_store` VALUES (10110060,0);
INSERT INTO `oc_product_to_store` VALUES (10110070,0);
INSERT INTO `oc_product_to_store` VALUES (10110080,0);
INSERT INTO `oc_product_to_store` VALUES (10110090,0);
INSERT INTO `oc_product_to_store` VALUES (10110091,0);
INSERT INTO `oc_product_to_store` VALUES (10201001,0);
INSERT INTO `oc_product_to_store` VALUES (10201002,0);
INSERT INTO `oc_product_to_store` VALUES (10201003,0);
INSERT INTO `oc_product_to_store` VALUES (10201010,0);
INSERT INTO `oc_product_to_store` VALUES (10201011,0);
INSERT INTO `oc_product_to_store` VALUES (10201012,0);
INSERT INTO `oc_product_to_store` VALUES (10201020,0);
INSERT INTO `oc_product_to_store` VALUES (10201021,0);
INSERT INTO `oc_product_to_store` VALUES (10201022,0);
INSERT INTO `oc_product_to_store` VALUES (10201030,0);
INSERT INTO `oc_product_to_store` VALUES (10201031,0);
INSERT INTO `oc_product_to_store` VALUES (10201032,0);
INSERT INTO `oc_product_to_store` VALUES (10201033,0);
INSERT INTO `oc_product_to_store` VALUES (10201034,0);
INSERT INTO `oc_product_to_store` VALUES (10201035,0);
INSERT INTO `oc_product_to_store` VALUES (10201040,0);
INSERT INTO `oc_product_to_store` VALUES (10201041,0);
INSERT INTO `oc_product_to_store` VALUES (10201042,0);
INSERT INTO `oc_product_to_store` VALUES (10201043,0);
INSERT INTO `oc_product_to_store` VALUES (10201044,0);
INSERT INTO `oc_product_to_store` VALUES (10201045,0);
INSERT INTO `oc_product_to_store` VALUES (10201050,0);
INSERT INTO `oc_product_to_store` VALUES (10201051,0);
INSERT INTO `oc_product_to_store` VALUES (10201052,0);
INSERT INTO `oc_product_to_store` VALUES (10301001,0);
INSERT INTO `oc_product_to_store` VALUES (10301002,0);
INSERT INTO `oc_product_to_store` VALUES (10301003,0);
INSERT INTO `oc_product_to_store` VALUES (10301010,0);
INSERT INTO `oc_product_to_store` VALUES (10301011,0);
INSERT INTO `oc_product_to_store` VALUES (10301012,0);
INSERT INTO `oc_product_to_store` VALUES (10301020,0);
INSERT INTO `oc_product_to_store` VALUES (10301021,0);
INSERT INTO `oc_product_to_store` VALUES (10301022,0);
INSERT INTO `oc_product_to_store` VALUES (10301030,0);
INSERT INTO `oc_product_to_store` VALUES (10301031,0);
INSERT INTO `oc_product_to_store` VALUES (10301032,0);
INSERT INTO `oc_product_to_store` VALUES (10301033,0);
INSERT INTO `oc_product_to_store` VALUES (10301034,0);
INSERT INTO `oc_product_to_store` VALUES (10301035,0);
INSERT INTO `oc_product_to_store` VALUES (10301040,0);
INSERT INTO `oc_product_to_store` VALUES (10301041,0);
INSERT INTO `oc_product_to_store` VALUES (10301042,0);
INSERT INTO `oc_product_to_store` VALUES (10301043,0);
INSERT INTO `oc_product_to_store` VALUES (10301044,0);
INSERT INTO `oc_product_to_store` VALUES (10301045,0);
INSERT INTO `oc_product_to_store` VALUES (10301080,0);
INSERT INTO `oc_product_to_store` VALUES (10301081,0);
INSERT INTO `oc_product_to_store` VALUES (10301082,0);
INSERT INTO `oc_product_to_store` VALUES (10301083,0);
INSERT INTO `oc_product_to_store` VALUES (10301084,0);
INSERT INTO `oc_product_to_store` VALUES (10301085,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Возвращены средства');
INSERT INTO `oc_return_action` VALUES (2,1,'Выдан в кредит');
INSERT INTO `oc_return_action` VALUES (3,1,'Отправлен другой товар для замены');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Получен/доставлен неисправным (сломан)');
INSERT INTO `oc_return_reason` VALUES (2,1,'Получен не тот (ошибочный) товар');
INSERT INTO `oc_return_reason` VALUES (3,1,'Ошибочный заказ');
INSERT INTO `oc_return_reason` VALUES (4,1,'Ошибка, пожалуйста укажите/приложите подробности');
INSERT INTO `oc_return_reason` VALUES (5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Рассматриваемый');
INSERT INTO `oc_return_status` VALUES (3,1,'Готов (к отправке)');
INSERT INTO `oc_return_status` VALUES (2,1,'Заказ в ожидании');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=1090 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_seo_url`
--

/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` VALUES (730,0,1,'manufacturer_id=8','apple');
INSERT INTO `oc_seo_url` VALUES (772,0,1,'information_id=4','about_us');
INSERT INTO `oc_seo_url` VALUES (828,0,1,'manufacturer_id=9','canon');
INSERT INTO `oc_seo_url` VALUES (829,0,1,'manufacturer_id=5','htc');
INSERT INTO `oc_seo_url` VALUES (830,0,1,'manufacturer_id=7','hewlett-packard');
INSERT INTO `oc_seo_url` VALUES (831,0,1,'manufacturer_id=6','palm');
INSERT INTO `oc_seo_url` VALUES (832,0,1,'manufacturer_id=10','sony');
INSERT INTO `oc_seo_url` VALUES (841,0,1,'information_id=6','delivery');
INSERT INTO `oc_seo_url` VALUES (842,0,1,'information_id=3','privacy');
INSERT INTO `oc_seo_url` VALUES (843,0,1,'information_id=5','terms');
INSERT INTO `oc_seo_url` VALUES (845,0,1,'common/home','');
INSERT INTO `oc_seo_url` VALUES (846,0,1,'information/contact','contact');
INSERT INTO `oc_seo_url` VALUES (847,0,1,'information/sitemap','sitemap');
INSERT INTO `oc_seo_url` VALUES (848,0,1,'product/special','specials');
INSERT INTO `oc_seo_url` VALUES (849,0,1,'product/manufacturer','brands');
INSERT INTO `oc_seo_url` VALUES (850,0,1,'product/compare','compare-products');
INSERT INTO `oc_seo_url` VALUES (851,0,1,'product/search','search');
INSERT INTO `oc_seo_url` VALUES (852,0,1,'checkout/cart','cart');
INSERT INTO `oc_seo_url` VALUES (853,0,1,'checkout/checkout','checkout');
INSERT INTO `oc_seo_url` VALUES (854,0,1,'account/login','login');
INSERT INTO `oc_seo_url` VALUES (855,0,1,'account/logout','logout');
INSERT INTO `oc_seo_url` VALUES (856,0,1,'account/voucher','vouchers');
INSERT INTO `oc_seo_url` VALUES (857,0,1,'account/wishlist','wishlist');
INSERT INTO `oc_seo_url` VALUES (858,0,1,'account/account','my-account');
INSERT INTO `oc_seo_url` VALUES (859,0,1,'account/order','order-history');
INSERT INTO `oc_seo_url` VALUES (860,0,1,'account/newsletter','newsletter');
INSERT INTO `oc_seo_url` VALUES (861,0,1,'account/return/add','return-add');
INSERT INTO `oc_seo_url` VALUES (862,0,1,'account/forgotten','forgot-password');
INSERT INTO `oc_seo_url` VALUES (863,0,1,'account/download','downloads');
INSERT INTO `oc_seo_url` VALUES (864,0,1,'account/return','returns');
INSERT INTO `oc_seo_url` VALUES (865,0,1,'account/transaction','transactions');
INSERT INTO `oc_seo_url` VALUES (866,0,1,'account/register','create-account');
INSERT INTO `oc_seo_url` VALUES (867,0,1,'account/recurring','recurring');
INSERT INTO `oc_seo_url` VALUES (868,0,1,'account/address','address-book');
INSERT INTO `oc_seo_url` VALUES (869,0,1,'account/reward','reward-points');
INSERT INTO `oc_seo_url` VALUES (870,0,1,'account/edit','edit-account');
INSERT INTO `oc_seo_url` VALUES (871,0,1,'account/password','change-password');
INSERT INTO `oc_seo_url` VALUES (880,0,1,'affiliate/forgotten','affiliate-forgot-password');
INSERT INTO `oc_seo_url` VALUES (881,0,1,'affiliate/register','create-affiliate-account');
INSERT INTO `oc_seo_url` VALUES (882,0,1,'affiliate/login','affiliate-login');
INSERT INTO `oc_seo_url` VALUES (883,0,1,'affiliate/payment','affiliate-payment');
INSERT INTO `oc_seo_url` VALUES (884,0,1,'affiliate/tracking','affiliate-tracking');
INSERT INTO `oc_seo_url` VALUES (885,0,1,'affiliate/transaction','affiliate-transaction');
INSERT INTO `oc_seo_url` VALUES (886,0,1,'affiliate/account','affiliates');
INSERT INTO `oc_seo_url` VALUES (887,0,1,'product_id=10101001','Кран шар. 1/2&quot; в/в (бабочка) Tiemme 236 0002');
INSERT INTO `oc_seo_url` VALUES (888,0,1,'product_id=10101002','Кран шар. 1/2&quot; в/н (бабочка) Tiemme 236 0001');
INSERT INTO `oc_seo_url` VALUES (889,0,1,'product_id=10101003','Кран шар. 1/2&quot; н/н (бабочка) Tiemme 236 0032');
INSERT INTO `oc_seo_url` VALUES (890,0,1,'product_id=10101004','Кран шар. 1/2&quot; в/в (ручка) Tiemme 236 0010');
INSERT INTO `oc_seo_url` VALUES (891,0,1,'product_id=10101005','Кран шар. 1/2&quot; в/н (ручка) Tiemme 236 0015');
INSERT INTO `oc_seo_url` VALUES (892,0,1,'product_id=10101010','Кран шар. 3/4&quot; в/в (бабочка) Tiemme 236 0003');
INSERT INTO `oc_seo_url` VALUES (893,0,1,'product_id=10101011','Кран шар. 3/4&quot; в/н (бабочка) Tiemme 236 0006');
INSERT INTO `oc_seo_url` VALUES (894,0,1,'product_id=10101012','Кран шар. 3/4&quot; н/н (бабочка) Tiemme 236 0038');
INSERT INTO `oc_seo_url` VALUES (895,0,1,'product_id=10101013','Кран шар. 3/4&quot; в/в (ручка) Tiemme 236 0007');
INSERT INTO `oc_seo_url` VALUES (896,0,1,'product_id=10101014','Кран шар. 3/4&quot; в/н (ручка) Tiemme 236 0019');
INSERT INTO `oc_seo_url` VALUES (897,0,1,'product_id=10101020','Кран шар. 1&quot; в/в (бабочка) Tiemme 236 0012');
INSERT INTO `oc_seo_url` VALUES (898,0,1,'product_id=10101021','Кран шар. 1&quot; в/н (бабочка) Tiemme 236 0011');
INSERT INTO `oc_seo_url` VALUES (899,0,1,'product_id=10101022','Кран шар. 1&quot; н/н (бабочка) Tiemme 236 0040');
INSERT INTO `oc_seo_url` VALUES (900,0,1,'product_id=10101023','Кран шар. 1&quot; в/в (ручка) Tiemme 236 0005');
INSERT INTO `oc_seo_url` VALUES (901,0,1,'product_id=10101024','Кран шар. 1&quot; в/н (ручка) Tiemme 236 0014');
INSERT INTO `oc_seo_url` VALUES (902,0,1,'product_id=10101030','Кран шар. 1 1/4&quot; в/в (бабочка) Tiemme 236 0035');
INSERT INTO `oc_seo_url` VALUES (903,0,1,'product_id=10101031','Кран шар. 1 1/4&quot; в/н (бабочка) Tiemme 236 0031');
INSERT INTO `oc_seo_url` VALUES (904,0,1,'product_id=10101032','Кран шар. 1 1/4&quot; н/н (бабочка) Tiemme 236 0048');
INSERT INTO `oc_seo_url` VALUES (905,0,1,'product_id=10101033','Кран шар. 1 1/4&quot; в/в (ручка) Tiemme 236 0008');
INSERT INTO `oc_seo_url` VALUES (906,0,1,'product_id=10101034','Кран шар. 1 1/4&quot; в/н (ручка) Tiemme 236 0023');
INSERT INTO `oc_seo_url` VALUES (907,0,1,'product_id=10101040','Кран шар. 1 1/2&quot; в/в (ручка) Tiemme 236 0009');
INSERT INTO `oc_seo_url` VALUES (908,0,1,'product_id=10101041','Кран шар. 1 1/2&quot; в/н (ручка) Tiemme 236 0029');
INSERT INTO `oc_seo_url` VALUES (909,0,1,'product_id=10101050','Кран шар. 2&quot; в/в (ручка) Tiemme 236 0004');
INSERT INTO `oc_seo_url` VALUES (910,0,1,'product_id=10101051','Кран шар. 2&quot; в/н (ручка) Tiemme 236 0026');
INSERT INTO `oc_seo_url` VALUES (911,0,1,'product_id=10101060','Кран шар. 2 1/2&quot; в/в (ручка) Tiemme 231 0037');
INSERT INTO `oc_seo_url` VALUES (912,0,1,'product_id=10101070','Кран шар. 3&quot; в/в (ручка) Tiemme 231 0021');
INSERT INTO `oc_seo_url` VALUES (913,0,1,'product_id=10101080','Кран шар. 4&quot; в/в (ручка) Tiemme 231 0027');
INSERT INTO `oc_seo_url` VALUES (914,0,1,'product_id=10101090','Кран шар. 1/2&quot; со сгоном (бабочка) Tiemme 212 0003');
INSERT INTO `oc_seo_url` VALUES (915,0,1,'product_id=10101091','Кран шар. 3/4&quot; со сгоном (бабочка) Tiemme 212 0001');
INSERT INTO `oc_seo_url` VALUES (916,0,1,'product_id=10101092','Кран шар. 1&quot; со сгоном (бабочка) Tiemme 212 0002');
INSERT INTO `oc_seo_url` VALUES (917,0,1,'product_id=10101093','Кран шар. 1 1/4&quot; со сгоном (бабочка) Tiemme 212 0004');
INSERT INTO `oc_seo_url` VALUES (918,0,1,'product_id=10101100','Кран шар. угл. 1/2&quot; со сгоном (бабочка) Tiemme 212 0008');
INSERT INTO `oc_seo_url` VALUES (919,0,1,'product_id=10101101','Кран шар. угл. 3/4&quot; со сгоном (бабочка) Tiemme 212 0005');
INSERT INTO `oc_seo_url` VALUES (920,0,1,'product_id=10101102','Кран шар. угл. 1&quot; со сгоном (бабочка) Tiemme 212 0006');
INSERT INTO `oc_seo_url` VALUES (921,0,1,'product_id=10101140','Кран шаровый сливной 1/2&quot; нар. с заглушкой Tiemme 295 0001');
INSERT INTO `oc_seo_url` VALUES (922,0,1,'product_id=10101150','Кран шаровый со штуцером 1/2&quot; нар. Tiemme 250 0001');
INSERT INTO `oc_seo_url` VALUES (923,0,1,'product_id=10101151','Кран шаровый со штуцером 3/4&quot; нар. Tiemme 250 0003');
INSERT INTO `oc_seo_url` VALUES (924,0,1,'product_id=10101152','Кран шаровый со штуцером 1&quot; нар. Tiemme 250 0004');
INSERT INTO `oc_seo_url` VALUES (925,0,1,'product_id=10101200','Кран шар. 1&quot; со сгоном и термометром (красный) Tiemme 212 0043');
INSERT INTO `oc_seo_url` VALUES (926,0,1,'product_id=10101201','Кран шар. 1&quot; со сгоном и термометром (синий) Tiemme 212 0042');
INSERT INTO `oc_seo_url` VALUES (927,0,1,'product_id=10101210','Кран шар. 1 1/4&quot; со сгоном и термометром (красный) Tiemme 212 0033');
INSERT INTO `oc_seo_url` VALUES (928,0,1,'product_id=10101211','Кран шар. 1 1/4&quot; со сгоном и термометром (синий) Tiemme 212 0030');
INSERT INTO `oc_seo_url` VALUES (929,0,1,'product_id=10101220','Кран шар. угловой 1&quot; со сгоном и термометр. (красный) Tiemme 212 0031');
INSERT INTO `oc_seo_url` VALUES (930,0,1,'product_id=10101221','Кран шар. угловой 1&quot; со сгоном и термометр. (синий) Tiemme 212 0032');
INSERT INTO `oc_seo_url` VALUES (931,0,1,'product_id=10102001','Кран шар. 1/2&quot; в/в (бабочка) Tiemme Tifone 261 0018');
INSERT INTO `oc_seo_url` VALUES (932,0,1,'product_id=10102002','Кран шар. 1/2&quot; в/н (бабочка) Tiemme Tifone 261 0013');
INSERT INTO `oc_seo_url` VALUES (933,0,1,'product_id=10102004','Кран шар. 1/2&quot; в/в (ручка) Tiemme Tifone 261 0006');
INSERT INTO `oc_seo_url` VALUES (934,0,1,'product_id=10102005','Кран шар. 1/2&quot; в/н (ручка) Tiemme Tifone 261 0008');
INSERT INTO `oc_seo_url` VALUES (935,0,1,'product_id=10102010','Кран шар. 3/4&quot; в/в (бабочка) Tiemme Tifone 261 0019');
INSERT INTO `oc_seo_url` VALUES (936,0,1,'product_id=10102011','Кран шар. 3/4&quot; в/н (бабочка) Tiemme Tifone 261 0014');
INSERT INTO `oc_seo_url` VALUES (937,0,1,'product_id=10102013','Кран шар. 3/4&quot; в/в (ручка) Tiemme Tifone 261 0004');
INSERT INTO `oc_seo_url` VALUES (938,0,1,'product_id=10102014','Кран шар. 3/4&quot; в/н (ручка) Tiemme Tifone 261 0011');
INSERT INTO `oc_seo_url` VALUES (939,0,1,'product_id=10102020','Кран шар. 1&quot; в/в (бабочка) Tiemme Tifone 261 0021');
INSERT INTO `oc_seo_url` VALUES (940,0,1,'product_id=10102021','Кран шар. 1&quot; в/н (бабочка) Tiemme Tifone 261 0017');
INSERT INTO `oc_seo_url` VALUES (941,0,1,'product_id=10102023','Кран шар. 1&quot; в/в (ручка) Tiemme Tifone 261 0002');
INSERT INTO `oc_seo_url` VALUES (942,0,1,'product_id=10102024','Кран шар. 1&quot; в/н (ручка) Tiemme Tifone 261 0007');
INSERT INTO `oc_seo_url` VALUES (943,0,1,'product_id=10102030','Кран шар. 1 1/4&quot; в/в (ручка) Tiemme Tifone 261 0003');
INSERT INTO `oc_seo_url` VALUES (944,0,1,'product_id=10102031','Кран шар. 1 1/4&quot; в/н (ручка) Tiemme Tifone 261 0009');
INSERT INTO `oc_seo_url` VALUES (945,0,1,'product_id=10102040','Кран шар. 1 1/2&quot; в/в (ручка) Tiemme Tifone 261 0005');
INSERT INTO `oc_seo_url` VALUES (946,0,1,'product_id=10102041','Кран шар. 1 1/2&quot; в/н (ручка) Tiemme Tifone 261 0015');
INSERT INTO `oc_seo_url` VALUES (947,0,1,'product_id=10102050','Кран шар. 2&quot; в/в (ручка) Tiemme Tifone 261 0001');
INSERT INTO `oc_seo_url` VALUES (948,0,1,'product_id=10102051','Кран шар. 2&quot; в/н (ручка) Tiemme Tifone 261 0016');
INSERT INTO `oc_seo_url` VALUES (949,0,1,'product_id=10102060','Кран шар. 2 1/2&quot; в/в (ручка) Tiemme Tifone 261 0010');
INSERT INTO `oc_seo_url` VALUES (950,0,1,'product_id=10102070','Кран шар. 3&quot; в/н (ручка) Tiemme Tifone 261 0012');
INSERT INTO `oc_seo_url` VALUES (951,0,1,'product_id=10102080','Кран шар. 4&quot; в/н (ручка) Tiemme Tifone 261 0020');
INSERT INTO `oc_seo_url` VALUES (952,0,1,'product_id=10103120','Кран шаровый трёхходовой 1/2&quot; L-порт Tiemme 295 0025');
INSERT INTO `oc_seo_url` VALUES (953,0,1,'product_id=10103121','Кран шаровый трёхходовой 3/4&quot; L-порт Tiemme 295 0031');
INSERT INTO `oc_seo_url` VALUES (954,0,1,'product_id=10103122','Кран шаровый трёхходовой 1&quot; L-порт Tiemme 295 0030');
INSERT INTO `oc_seo_url` VALUES (955,0,1,'product_id=10103123','Кран шаровый трёхходовой 1 1/4&quot; L-порт Tiemme 295 0051');
INSERT INTO `oc_seo_url` VALUES (956,0,1,'product_id=10103124','Кран шаровый трёхходовой 1 1/2&quot; L-порт Tiemme 295 0057');
INSERT INTO `oc_seo_url` VALUES (957,0,1,'product_id=10103125','Кран шаровый трёхходовой 2&quot; L-порт Tiemme 295 0052');
INSERT INTO `oc_seo_url` VALUES (958,0,1,'product_id=10103130','Кран шаровый трёхходовой 1/2&quot; T-порт Tiemme 295 0058');
INSERT INTO `oc_seo_url` VALUES (959,0,1,'product_id=10103131','Кран шаровый трёхходовой 3/4&quot; T-порт Tiemme 295 0053');
INSERT INTO `oc_seo_url` VALUES (960,0,1,'product_id=10103132','Кран шаровый трёхходовой 1&quot; T-порт Tiemme 295 0056');
INSERT INTO `oc_seo_url` VALUES (961,0,1,'product_id=10103133','Кран шаровый трёхходовой 1 1/4&quot; T-порт Tiemme 295 0065');
INSERT INTO `oc_seo_url` VALUES (962,0,1,'product_id=10103134','Кран шаровый трёхходовой 1 1/2&quot; T-порт Tiemme 295 0071');
INSERT INTO `oc_seo_url` VALUES (963,0,1,'product_id=10103135','Кран шаровый трёхходовой 2&quot; T-порт Tiemme 295 0072');
INSERT INTO `oc_seo_url` VALUES (964,0,1,'product_id=10105001','Кран шар. угл. 1/2&quot; Х 1/2&quot; н/н (хром) Tiemme 295 0018');
INSERT INTO `oc_seo_url` VALUES (965,0,1,'product_id=10105002','Кран шар. угл. 1/2&quot; Х 3/4&quot; н/н (хром) Tiemme 295 0011');
INSERT INTO `oc_seo_url` VALUES (966,0,1,'product_id=10105005','Кран шар. угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0073');
INSERT INTO `oc_seo_url` VALUES (1089,0,1,'product_id=10105006','Вентиль угл. 10 (обжим) Х 1/2&quot; Нар. (хром) Tiemme 295 0016');
INSERT INTO `oc_seo_url` VALUES (968,0,1,'product_id=10105010','Кран шар. 1/2&quot; в/в  mini (хром) Tiemme 290 0006');
INSERT INTO `oc_seo_url` VALUES (969,0,1,'product_id=10105011','Кран шар. 1/2&quot; в/н  mini (хром) Tiemme 290 0001');
INSERT INTO `oc_seo_url` VALUES (970,0,1,'product_id=10105012','Кран шар. 1/2&quot; н/н  mini (хром) Tiemme 290 0008');
INSERT INTO `oc_seo_url` VALUES (971,0,1,'product_id=10105020','Кран шар. 1/2&quot; в/в  mini под отвертку (хром) Tiemme 290 0053');
INSERT INTO `oc_seo_url` VALUES (972,0,1,'product_id=10105021','Кран шар. 1/2&quot; в/н  mini под отвертку (хром) Tiemme 290 0042');
INSERT INTO `oc_seo_url` VALUES (973,0,1,'product_id=10105022','Кран шар. 1/2&quot; н/н  mini под отвертку (хром) Tiemme 290 0054');
INSERT INTO `oc_seo_url` VALUES (974,0,1,'product_id=10106001','Кран шаровый  16 Х 16 (бабочка) ПРЕСС Tiemme 168 0010');
INSERT INTO `oc_seo_url` VALUES (975,0,1,'product_id=10106002','Кран шаровый  20 Х 20 (бабочка) ПРЕСС Tiemme 168 0007');
INSERT INTO `oc_seo_url` VALUES (976,0,1,'product_id=10106003','Кран шаровый  26 Х 26 (бабочка) ПРЕСС Tiemme 168 0025');
INSERT INTO `oc_seo_url` VALUES (977,0,1,'product_id=10110001','Кран шар. 1/2&quot; для ГАЗА в/в (бабочка) Tiemme 221 0002');
INSERT INTO `oc_seo_url` VALUES (978,0,1,'product_id=10110002','Кран шар. 1/2&quot; для ГАЗА в/н (бабочка) Tiemme 221 0004');
INSERT INTO `oc_seo_url` VALUES (979,0,1,'product_id=10110003','Кран шар. 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0001');
INSERT INTO `oc_seo_url` VALUES (980,0,1,'product_id=10110004','Кран шар. 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0012');
INSERT INTO `oc_seo_url` VALUES (981,0,1,'product_id=10110010','Кран шар. 3/4&quot; для ГАЗА в/в (бабочка) Tiemme 221 0006');
INSERT INTO `oc_seo_url` VALUES (982,0,1,'product_id=10110011','Кран шар. 3/4&quot; для ГАЗА в/н (бабочка) Tiemme 221 0008');
INSERT INTO `oc_seo_url` VALUES (983,0,1,'product_id=10110012','Кран шар. 3/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0003');
INSERT INTO `oc_seo_url` VALUES (984,0,1,'product_id=10110013','Кран шар. 3/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0016');
INSERT INTO `oc_seo_url` VALUES (985,0,1,'product_id=10110020','Кран шар. 1&quot; для ГАЗА в/в (бабочка) Tiemme 221 0009');
INSERT INTO `oc_seo_url` VALUES (986,0,1,'product_id=10110021','Кран шар. 1&quot; для ГАЗА в/н (бабочка) Tiemme 221 0015');
INSERT INTO `oc_seo_url` VALUES (987,0,1,'product_id=10110022','Кран шар. 1&quot; для ГАЗА в/в (ручка) Tiemme 221 0007');
INSERT INTO `oc_seo_url` VALUES (988,0,1,'product_id=10110023','Кран шар. 1&quot; для ГАЗА в/н (ручка) Tiemme 221 0017');
INSERT INTO `oc_seo_url` VALUES (989,0,1,'product_id=10110030','Кран шар. 1 1/4&quot; для ГАЗА в/в (ручка) Tiemme 221 0010');
INSERT INTO `oc_seo_url` VALUES (990,0,1,'product_id=10110031','Кран шар. 1 1/4&quot; для ГАЗА в/н (ручка) Tiemme 221 0022');
INSERT INTO `oc_seo_url` VALUES (991,0,1,'product_id=10110040','Кран шар. 1 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0011');
INSERT INTO `oc_seo_url` VALUES (992,0,1,'product_id=10110041','Кран шар. 1 1/2&quot; для ГАЗА в/н (ручка) Tiemme 221 0023');
INSERT INTO `oc_seo_url` VALUES (993,0,1,'product_id=10110050','Кран шар. 2&quot; для ГАЗА в/в (ручка) Tiemme 221 0005');
INSERT INTO `oc_seo_url` VALUES (994,0,1,'product_id=10110051','Кран шар. 2&quot; для ГАЗА в/н (ручка) Tiemme 221 0025');
INSERT INTO `oc_seo_url` VALUES (995,0,1,'product_id=10110060','Кран шар. 2 1/2&quot; для ГАЗА в/в (ручка) Tiemme 221 0013');
INSERT INTO `oc_seo_url` VALUES (996,0,1,'product_id=10110070','Кран шар. 3&quot; для ГАЗА в/в (ручка) Tiemme 221 0014');
INSERT INTO `oc_seo_url` VALUES (997,0,1,'product_id=10110080','Кран шар. 4&quot; для ГАЗА в/в (ручка) Tiemme 221 0019');
INSERT INTO `oc_seo_url` VALUES (998,0,1,'product_id=10110090','Кран шар. угловой 1/2&quot; для ГАЗА н/н Tiemme 222 0001');
INSERT INTO `oc_seo_url` VALUES (999,0,1,'product_id=10110091','Кран шар. угловой 3/4&quot; для ГАЗА н/н Tiemme 222 0016');
INSERT INTO `oc_seo_url` VALUES (1000,0,1,'product_id=10201001','Кран шаровой 1/2&quot; в/в (бабочка) Bugatti сер. 302');
INSERT INTO `oc_seo_url` VALUES (1001,0,1,'product_id=10201002','Кран шаровой 3/4&quot; в/в (бабочка) Bugatti сер. 302');
INSERT INTO `oc_seo_url` VALUES (1002,0,1,'product_id=10201003','Кран шаровой 1&quot; в/в (бабочка) Bugatti сер. 302');
INSERT INTO `oc_seo_url` VALUES (1003,0,1,'product_id=10201010','Кран шаровой 1/2&quot; в/н (бабочка) Bugatti сер. 307');
INSERT INTO `oc_seo_url` VALUES (1004,0,1,'product_id=10201011','Кран шаровой 3/4&quot; в/н (бабочка) Bugatti сер. 307');
INSERT INTO `oc_seo_url` VALUES (1005,0,1,'product_id=10201012','Кран шаровой 1&quot; в/н (бабочка) Bugatti сер. 307');
INSERT INTO `oc_seo_url` VALUES (1006,0,1,'product_id=10201020','Кран шаровой 1/2&quot; н/н (бабочка) Bugatti сер. 327');
INSERT INTO `oc_seo_url` VALUES (1007,0,1,'product_id=10201021','Кран шаровой 3/4&quot; н/н (бабочка) Bugatti сер. 327');
INSERT INTO `oc_seo_url` VALUES (1008,0,1,'product_id=10201022','Кран шаровой 1&quot; н/н (бабочка) Bugatti сер. 327');
INSERT INTO `oc_seo_url` VALUES (1009,0,1,'product_id=10201030','Кран шаровой 1/2&quot; в/в (ручка) Bugatti сер. 300');
INSERT INTO `oc_seo_url` VALUES (1010,0,1,'product_id=10201031','Кран шаровой 3/4&quot; в/в (ручка) Bugatti сер. 300');
INSERT INTO `oc_seo_url` VALUES (1011,0,1,'product_id=10201032','Кран шаровой 1&quot; в/в (ручка) Bugatti сер. 300');
INSERT INTO `oc_seo_url` VALUES (1012,0,1,'product_id=10201033','Кран шаровой 1 1/4&quot; в/в (ручка) Bugatti сер. 300');
INSERT INTO `oc_seo_url` VALUES (1013,0,1,'product_id=10201034','Кран шаровой 1 1/2&quot; в/в (ручка) Bugatti сер. 300');
INSERT INTO `oc_seo_url` VALUES (1014,0,1,'product_id=10201035','Кран шаровой 2&quot; в/в (ручка) Bugatti сер. 300');
INSERT INTO `oc_seo_url` VALUES (1015,0,1,'product_id=10201040','Кран шаровой 1/2&quot; в/н (ручка) Bugatti сер. 305');
INSERT INTO `oc_seo_url` VALUES (1016,0,1,'product_id=10201041','Кран шаровой 3/4&quot; в/н (ручка) Bugatti сер. 305');
INSERT INTO `oc_seo_url` VALUES (1017,0,1,'product_id=10201042','Кран шаровой 1&quot; в/н (ручка) Bugatti сер. 305');
INSERT INTO `oc_seo_url` VALUES (1018,0,1,'product_id=10201043','Кран шаровой 1 1/4&quot; в/н (ручка) Bugatti сер. 305');
INSERT INTO `oc_seo_url` VALUES (1019,0,1,'product_id=10201044','Кран шаровой 1 1/2&quot; в/н (ручка) Bugatti сер. 305');
INSERT INTO `oc_seo_url` VALUES (1020,0,1,'product_id=10201045','Кран шаровой 2&quot; в/н (ручка) Bugatti сер. 305');
INSERT INTO `oc_seo_url` VALUES (1021,0,1,'product_id=10201050','Кран шарой 1/2&quot; с американкой (бабочка) Bugatti сер. 322T');
INSERT INTO `oc_seo_url` VALUES (1022,0,1,'product_id=10201051','Кран шарой 3/4&quot; с американкой (бабочка) Bugatti сер. 322T');
INSERT INTO `oc_seo_url` VALUES (1023,0,1,'product_id=10201052','Кран шарой 1&quot; с американкой (бабочка) Bugatti сер. 322T');
INSERT INTO `oc_seo_url` VALUES (1024,0,1,'product_id=10301001','Кран шаровой 1/2&quot; в/в (бабочка) GF 7100M1N040400A');
INSERT INTO `oc_seo_url` VALUES (1025,0,1,'product_id=10301002','Кран шаровой 3/4&quot; в/в (бабочка) GF 7100M1N050500A');
INSERT INTO `oc_seo_url` VALUES (1026,0,1,'product_id=10301003','Кран шаровой 1&quot; в/в (бабочка) GF 7100M1N101000A');
INSERT INTO `oc_seo_url` VALUES (1027,0,1,'product_id=10301010','Кран шаровой 1/2&quot; в/н (бабочка) GF 7100M2N040400A');
INSERT INTO `oc_seo_url` VALUES (1028,0,1,'product_id=10301011','Кран шаровой 3/4&quot; в/н (бабочка) GF 7100M2N050500A');
INSERT INTO `oc_seo_url` VALUES (1029,0,1,'product_id=10301012','Кран шаровой 1&quot; в/н (бабочка) GF 7100M2N101000A');
INSERT INTO `oc_seo_url` VALUES (1030,0,1,'product_id=10301020','Кран шаровой 1/2&quot; н/н (бабочка) GF 7100M3N040400A');
INSERT INTO `oc_seo_url` VALUES (1031,0,1,'product_id=10301021','Кран шаровой 3/4&quot; н/н (бабочка) GF 7100M3N050500A');
INSERT INTO `oc_seo_url` VALUES (1032,0,1,'product_id=10301022','Кран шаровой 1&quot; н/н (бабочка) GF 7100M3N101000A');
INSERT INTO `oc_seo_url` VALUES (1033,0,1,'product_id=10301030','Кран шаровой 1/2&quot; в/в (ручка) GF 7100L1N040400A');
INSERT INTO `oc_seo_url` VALUES (1034,0,1,'product_id=10301031','Кран шаровой 3/4&quot; в/в (ручка) GF 7100L1N050500A');
INSERT INTO `oc_seo_url` VALUES (1035,0,1,'product_id=10301032','Кран шаровой 1&quot; в/в (ручка) GF 7100L1N101000A');
INSERT INTO `oc_seo_url` VALUES (1036,0,1,'product_id=10301033','Кран шаровой 1 1/4&quot; в/в (ручка) GF 7100L1N121200A');
INSERT INTO `oc_seo_url` VALUES (1037,0,1,'product_id=10301034','Кран шаровой 1 1/2&quot; в/в (ручка) GF 7100L1N141400A');
INSERT INTO `oc_seo_url` VALUES (1038,0,1,'product_id=10301035','Кран шаровой 2&quot; в/в (ручка) GF 7100L1N202000A');
INSERT INTO `oc_seo_url` VALUES (1039,0,1,'product_id=10301040','Кран шаровой 1/2&quot; в/н (ручка) GF 7100L2N040400A');
INSERT INTO `oc_seo_url` VALUES (1040,0,1,'product_id=10301041','Кран шаровой 3/4&quot; в/н (ручка) GF 7100L2N050500A');
INSERT INTO `oc_seo_url` VALUES (1041,0,1,'product_id=10301042','Кран шаровой 1&quot; в/н (ручка) GF 7100L2N101000A');
INSERT INTO `oc_seo_url` VALUES (1042,0,1,'product_id=10301043','Кран шаровой 1 1/4&quot; в/н (ручка) GF 7100L2N121200A');
INSERT INTO `oc_seo_url` VALUES (1043,0,1,'product_id=10301044','Кран шаровой 1 1/2&quot; в/н (ручка) GF 7100L2N141400A');
INSERT INTO `oc_seo_url` VALUES (1044,0,1,'product_id=10301045','Кран шаровой 2&quot; в/н (ручка) GF 7100L2N202000A');
INSERT INTO `oc_seo_url` VALUES (1045,0,1,'product_id=10301080','Кран шарой 1/2&quot; с американкой (бабочка) GF 7100M5N040401A');
INSERT INTO `oc_seo_url` VALUES (1046,0,1,'product_id=10301081','Кран шарой 3/4&quot; с американкой (бабочка) GF 7100M5N050501A');
INSERT INTO `oc_seo_url` VALUES (1047,0,1,'product_id=10301082','Кран шарой 1&quot; с американкой (бабочка) GF 7100M5N101001A');
INSERT INTO `oc_seo_url` VALUES (1048,0,1,'product_id=10301083','Кран шарой 1 1/4&quot; с американкой (ручка) GF 7100L5N121201A');
INSERT INTO `oc_seo_url` VALUES (1049,0,1,'product_id=10301084','Кран шарой 1 1/2&quot; с американкой (ручка) GF 7100L5N141401A');
INSERT INTO `oc_seo_url` VALUES (1050,0,1,'product_id=10301085','Кран шарой 2&quot; с американкой (ручка) GF 7100L5N202001A');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
INSERT INTO `oc_session` VALUES ('01cbe955a9a3f3b5e16ae4ed17','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-13 17:55:12');
INSERT INTO `oc_session` VALUES ('079ab7be8b02aea2300dbaba26','{\"user_id\":\"1\",\"user_token\":\"ONznh5Rr2LZTJWaaTfY0DFY1hrvBimwx\"}','2019-01-19 19:12:26');
INSERT INTO `oc_session` VALUES ('259b594bd214e1ba00a5e55261','false','2019-01-19 19:09:01');
INSERT INTO `oc_session` VALUES ('2c1fbe3ccfebc02588c58ecd99','false','2019-01-19 20:34:31');
INSERT INTO `oc_session` VALUES ('31e6c2e408fe54e89bc0ed2a2a','{\"user_id\":\"1\",\"user_token\":\"297OCuPMNJdRJFR2K23zM7TujuUEbi0c\"}','2019-01-19 20:30:19');
INSERT INTO `oc_session` VALUES ('3df5d3cb54372f20e7c9b84bd0','{\"user_id\":\"1\",\"user_token\":\"D1uWx8cSlDjBahd6RuMVx5CLhWfZl6bf\"}','2019-01-19 19:56:09');
INSERT INTO `oc_session` VALUES ('694cd625523568ed6ae814e67e','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-19 12:03:53');
INSERT INTO `oc_session` VALUES ('6defe6d1f21dda6a2862e06c79','false','2019-01-19 19:20:48');
INSERT INTO `oc_session` VALUES ('6e815e6a31c179aa31bf96ed41','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-15 13:40:55');
INSERT INTO `oc_session` VALUES ('7eafff610c25b4a728499b53ab','{\"user_id\":\"1\",\"user_token\":\"PGF7PKrsrEVmpCgSH7y3VVARIGL7pdBy\"}','2019-01-19 20:21:26');
INSERT INTO `oc_session` VALUES ('7febb23abcb99d3f8ff3b89493','false','2019-01-19 18:22:31');
INSERT INTO `oc_session` VALUES ('84c3cee64d20da5a4d2df45946','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-19 12:09:35');
INSERT INTO `oc_session` VALUES ('88b5a870a33a5cebe5f18d6fbd','{\"user_id\":\"1\",\"user_token\":\"ZyeHxzV2VVaOp3G58d2azK9rxOft7b1S\"}','2019-01-19 19:17:24');
INSERT INTO `oc_session` VALUES ('9c48d68037a1ead3acff0f4fe2','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-19 12:10:35');
INSERT INTO `oc_session` VALUES ('a371703bf1beb19ca2d3384488','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-19 12:04:15');
INSERT INTO `oc_session` VALUES ('b7adf4a6301467e3b10eee8e39','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-15 14:14:21');
INSERT INTO `oc_session` VALUES ('b97dcf3e45d38f328491185364','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-18 10:27:16');
INSERT INTO `oc_session` VALUES ('c4dc3c6409e72737d45245d5bb','false','2019-01-19 20:24:25');
INSERT INTO `oc_session` VALUES ('d3ec18f52d20558f9998e248d9','false','2019-01-19 17:05:54');
INSERT INTO `oc_session` VALUES ('dd067c11b3e8a17d0a938dd033','{\"user_id\":\"1\",\"user_token\":\"7xW8JTNKcqCguYEP2tNUKZ5FgNAUpfcm\"}','2019-01-19 21:00:43');
INSERT INTO `oc_session` VALUES ('dfda3e4981a948b1747105aaf4','{\"user_id\":\"1\",\"user_token\":\"x19EHFU0smNIiExg2RLfsVQ4WLzlme40\"}','2019-01-19 20:58:55');
INSERT INTO `oc_session` VALUES ('e40684f5c6611080adaba38cb4','false','2019-01-19 20:11:58');
INSERT INTO `oc_session` VALUES ('ef49f221aad02123ad1812a4ad','{\"language\":\"ru-ru\",\"currency\":\"RUB\"}','2019-01-19 12:03:25');
INSERT INTO `oc_session` VALUES ('fc18b1be7b14fd1624ec40f894','{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"5pPLCtKV4Zy3SireE1ehoYLnJJK259hp\",\"install\":\"6xESLJfuMa\",\"directory_file_manager\":\"img\",\"page_file_manager\":null}','2019-01-22 13:32:05');
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0);
INSERT INTO `oc_setting` VALUES (2,0,'config','config_shared','0',0);
INSERT INTO `oc_setting` VALUES (3,0,'config','config_secure','0',0);
INSERT INTO `oc_setting` VALUES (4,0,'total_voucher','total_voucher_sort_order','8',0);
INSERT INTO `oc_setting` VALUES (5,0,'total_voucher','total_voucher_status','1',0);
INSERT INTO `oc_setting` VALUES (6,0,'config','config_fraud_detection','0',0);
INSERT INTO `oc_setting` VALUES (7,0,'config','config_ftp_status','0',0);
INSERT INTO `oc_setting` VALUES (8,0,'config','config_ftp_root','',0);
INSERT INTO `oc_setting` VALUES (9,0,'config','config_ftp_password','',0);
INSERT INTO `oc_setting` VALUES (10,0,'config','config_ftp_username','',0);
INSERT INTO `oc_setting` VALUES (11,0,'config','config_ftp_port','21',0);
INSERT INTO `oc_setting` VALUES (12,0,'config','config_ftp_hostname','',0);
INSERT INTO `oc_setting` VALUES (13,0,'config','config_meta_title','Интернет магазин Opencart &quot;Русская сборка&quot;',0);
INSERT INTO `oc_setting` VALUES (14,0,'config','config_meta_description','Мой магазин',0);
INSERT INTO `oc_setting` VALUES (15,0,'config','config_meta_keyword','',0);
INSERT INTO `oc_setting` VALUES (16,0,'config','config_theme','default',0);
INSERT INTO `oc_setting` VALUES (17,0,'config','config_layout_id','4',0);
INSERT INTO `oc_setting` VALUES (18,0,'config','config_country_id','176',0);
INSERT INTO `oc_setting` VALUES (19,0,'config','config_zone_id','0',0);
INSERT INTO `oc_setting` VALUES (20,0,'config','config_language','ru-ru',0);
INSERT INTO `oc_setting` VALUES (21,0,'config','config_admin_language','ru-ru',0);
INSERT INTO `oc_setting` VALUES (22,0,'config','config_currency','RUB',0);
INSERT INTO `oc_setting` VALUES (23,0,'config','config_currency_auto','1',0);
INSERT INTO `oc_setting` VALUES (24,0,'config','config_length_class_id','1',0);
INSERT INTO `oc_setting` VALUES (25,0,'config','config_weight_class_id','1',0);
INSERT INTO `oc_setting` VALUES (26,0,'config','config_product_count','1',0);
INSERT INTO `oc_setting` VALUES (27,0,'config','config_limit_admin','20',0);
INSERT INTO `oc_setting` VALUES (28,0,'config','config_review_status','1',0);
INSERT INTO `oc_setting` VALUES (29,0,'config','config_review_guest','1',0);
INSERT INTO `oc_setting` VALUES (30,0,'config','config_voucher_min','1',0);
INSERT INTO `oc_setting` VALUES (31,0,'config','config_voucher_max','1000',0);
INSERT INTO `oc_setting` VALUES (32,0,'config','config_tax','0',0);
INSERT INTO `oc_setting` VALUES (33,0,'config','config_tax_default','shipping',0);
INSERT INTO `oc_setting` VALUES (34,0,'config','config_tax_customer','shipping',0);
INSERT INTO `oc_setting` VALUES (35,0,'config','config_customer_online','0',0);
INSERT INTO `oc_setting` VALUES (36,0,'config','config_customer_activity','0',0);
INSERT INTO `oc_setting` VALUES (37,0,'config','config_customer_search','0',0);
INSERT INTO `oc_setting` VALUES (38,0,'config','config_customer_group_id','1',0);
INSERT INTO `oc_setting` VALUES (39,0,'config','config_customer_group_display','[\"1\"]',1);
INSERT INTO `oc_setting` VALUES (40,0,'config','config_customer_price','0',0);
INSERT INTO `oc_setting` VALUES (41,0,'config','config_account_id','3',0);
INSERT INTO `oc_setting` VALUES (42,0,'config','config_invoice_prefix','INV-2019-00',0);
INSERT INTO `oc_setting` VALUES (203,0,'config','config_api_id','1',0);
INSERT INTO `oc_setting` VALUES (44,0,'config','config_cart_weight','1',0);
INSERT INTO `oc_setting` VALUES (45,0,'config','config_checkout_guest','1',0);
INSERT INTO `oc_setting` VALUES (46,0,'config','config_checkout_id','5',0);
INSERT INTO `oc_setting` VALUES (47,0,'config','config_order_status_id','1',0);
INSERT INTO `oc_setting` VALUES (48,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1);
INSERT INTO `oc_setting` VALUES (49,0,'config','config_complete_status','[\"5\",\"3\"]',1);
INSERT INTO `oc_setting` VALUES (50,0,'config','config_stock_display','0',0);
INSERT INTO `oc_setting` VALUES (51,0,'config','config_stock_warning','0',0);
INSERT INTO `oc_setting` VALUES (52,0,'config','config_stock_checkout','0',0);
INSERT INTO `oc_setting` VALUES (53,0,'config','config_affiliate_approval','0',0);
INSERT INTO `oc_setting` VALUES (54,0,'config','config_affiliate_auto','0',0);
INSERT INTO `oc_setting` VALUES (55,0,'config','config_affiliate_commission','5',0);
INSERT INTO `oc_setting` VALUES (56,0,'config','config_affiliate_id','4',0);
INSERT INTO `oc_setting` VALUES (57,0,'config','config_return_id','0',0);
INSERT INTO `oc_setting` VALUES (58,0,'config','config_return_status_id','2',0);
INSERT INTO `oc_setting` VALUES (59,0,'config','config_logo','catalog/logo.png',0);
INSERT INTO `oc_setting` VALUES (60,0,'config','config_icon','catalog/cart.png',0);
INSERT INTO `oc_setting` VALUES (61,0,'config','config_comment','',0);
INSERT INTO `oc_setting` VALUES (62,0,'config','config_open','',0);
INSERT INTO `oc_setting` VALUES (63,0,'config','config_image','',0);
INSERT INTO `oc_setting` VALUES (64,0,'config','config_fax','',0);
INSERT INTO `oc_setting` VALUES (65,0,'config','config_telephone','495 888-88-88',0);
INSERT INTO `oc_setting` VALUES (201,0,'config','config_email','root@locahhdf.ru',0);
INSERT INTO `oc_setting` VALUES (67,0,'config','config_geocode','',0);
INSERT INTO `oc_setting` VALUES (68,0,'config','config_owner','Иванов Иван',0);
INSERT INTO `oc_setting` VALUES (69,0,'config','config_address','г. Москва, ул. Ленина 10 оф. 32',0);
INSERT INTO `oc_setting` VALUES (70,0,'config','config_name','Интернет магазин Opencart &quot;Русская сборка&quot;',0);
INSERT INTO `oc_setting` VALUES (71,0,'config','config_seo_url','0',0);
INSERT INTO `oc_setting` VALUES (72,0,'config','config_file_max_size','300000',0);
INSERT INTO `oc_setting` VALUES (73,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0);
INSERT INTO `oc_setting` VALUES (74,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0);
INSERT INTO `oc_setting` VALUES (75,0,'config','config_maintenance','0',0);
INSERT INTO `oc_setting` VALUES (76,0,'config','config_password','1',0);
INSERT INTO `oc_setting` VALUES (202,0,'config','config_encryption','TZoc6br5xpBXNXN3Me3ooLnsQQEcRrj5ZrzS34gy52otyTtQ5rjN0K3zK3GbHReeZIEDhYbh5VBAFw6YEyIONt8yTyGTKUEF8FtjpQFMxl610232SIqtlufSxDHkRZJIhX93uwBeaBsktRlS59HX5IH3CuCjeWv7CbdEvIVjLAfgJYDOhils86Okw2TdDqZRMtkkJ9eNjeCVyjWwkqfiBHhVmO3Uzq253fUAuL4I1pqPLKlT7plojBHwviyi5ildW3UKVg2rui792rASbFCFchosJ6u9R4hBdVfyaH0k8S151fd7E5yOF4KB5IHPm1GihSaDPg5vinBXjoK9UcOC0ze22Em9Swawzatvxq4YgHmWM8XoXYhcXIzcBWQJ0DiURG41RKd89IK8xcBcUacmtU7JOynshEtk7Zw0hSxuLljCI8oVO8LLkHrNBSX13I7gebIvaEUPcPt2b5aoNoOtsv3vMwFeG18jqtktdlBPCLJaMtYsuv6k5HYBzrteowyAcsxtzX1XzkJxMQmY8TV4gyj6Yx2awR9ByTUZAxlmomVNn0aCxktTCE96SaFvLQzQL25WYuivdrb2oeowFu8dTNDS0ah5X9stCc1hKuYtQssioiGWVMsfzNx6HV4DhthJbSEtD9fmYoJfxSjdjVdxnJ35HIHD588wSc1s592s2UTHn3i5QIoxtb8zDg4to4pOEm3dnb9cK46JnegJVVYB3wcNZwdyys9oc4VYBCSlvMowolFnutGf5vbYLoH7bvXxaywNUOE8M3PrvJmDtTOaQaWwcRb9FEcAWXxHaP5NWs8qD4UcRrMMvvCYLDQxx4VTUJ2fsImh224VAdQkCNgAl3dmRN9EBewRbkwKWgbPFS4iaR0P98vkthOIFRvXhVo5qiHydszx7809GSOq4FL2y7BYEI5MTJpMf7nDHCRdyIh7qM8ZVZFrVJmEQCDBdXNzvGsUct4ctZALdZemGYvMBX4HY5SVJPcPu42SjfVhEiWD5hbY0x6f17nYjDNuHaNR',0);
INSERT INTO `oc_setting` VALUES (78,0,'config','config_compression','0',0);
INSERT INTO `oc_setting` VALUES (79,0,'config','config_error_display','1',0);
INSERT INTO `oc_setting` VALUES (80,0,'config','config_error_log','1',0);
INSERT INTO `oc_setting` VALUES (81,0,'config','config_error_filename','error.log',0);
INSERT INTO `oc_setting` VALUES (82,0,'config','config_google_analytics','',0);
INSERT INTO `oc_setting` VALUES (83,0,'config','config_mail_engine','mail',0);
INSERT INTO `oc_setting` VALUES (84,0,'config','config_mail_parameter','',0);
INSERT INTO `oc_setting` VALUES (85,0,'config','config_mail_smtp_hostname','',0);
INSERT INTO `oc_setting` VALUES (86,0,'config','config_mail_smtp_username','',0);
INSERT INTO `oc_setting` VALUES (87,0,'config','config_mail_smtp_password','',0);
INSERT INTO `oc_setting` VALUES (88,0,'config','config_mail_smtp_port','25',0);
INSERT INTO `oc_setting` VALUES (89,0,'config','config_mail_smtp_timeout','5',0);
INSERT INTO `oc_setting` VALUES (90,0,'config','config_mail_alert_email','',0);
INSERT INTO `oc_setting` VALUES (91,0,'config','config_mail_alert','[\"order\"]',1);
INSERT INTO `oc_setting` VALUES (92,0,'config','config_captcha','basic',0);
INSERT INTO `oc_setting` VALUES (93,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1);
INSERT INTO `oc_setting` VALUES (94,0,'config','config_login_attempts','5',0);
INSERT INTO `oc_setting` VALUES (95,0,'payment_free_checkout','payment_free_checkout_status','1',0);
INSERT INTO `oc_setting` VALUES (96,0,'payment_free_checkout','free_checkout_order_status_id','1',0);
INSERT INTO `oc_setting` VALUES (97,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0);
INSERT INTO `oc_setting` VALUES (98,0,'payment_cod','payment_cod_sort_order','5',0);
INSERT INTO `oc_setting` VALUES (99,0,'payment_cod','payment_cod_total','0.01',0);
INSERT INTO `oc_setting` VALUES (100,0,'payment_cod','payment_cod_order_status_id','1',0);
INSERT INTO `oc_setting` VALUES (101,0,'payment_cod','payment_cod_geo_zone_id','0',0);
INSERT INTO `oc_setting` VALUES (102,0,'payment_cod','payment_cod_status','1',0);
INSERT INTO `oc_setting` VALUES (103,0,'shipping_flat','shipping_flat_sort_order','1',0);
INSERT INTO `oc_setting` VALUES (104,0,'shipping_flat','shipping_flat_status','1',0);
INSERT INTO `oc_setting` VALUES (105,0,'shipping_flat','shipping_flat_geo_zone_id','0',0);
INSERT INTO `oc_setting` VALUES (106,0,'shipping_flat','shipping_flat_tax_class_id','9',0);
INSERT INTO `oc_setting` VALUES (107,0,'shipping_flat','shipping_flat_cost','5.00',0);
INSERT INTO `oc_setting` VALUES (108,0,'total_shipping','total_shipping_sort_order','3',0);
INSERT INTO `oc_setting` VALUES (109,0,'total_sub_total','sub_total_sort_order','1',0);
INSERT INTO `oc_setting` VALUES (110,0,'total_sub_total','total_sub_total_status','1',0);
INSERT INTO `oc_setting` VALUES (111,0,'total_tax','total_tax_status','0',0);
INSERT INTO `oc_setting` VALUES (112,0,'total_total','total_total_sort_order','9',0);
INSERT INTO `oc_setting` VALUES (113,0,'total_total','total_total_status','1',0);
INSERT INTO `oc_setting` VALUES (114,0,'total_tax','total_tax_sort_order','5',0);
INSERT INTO `oc_setting` VALUES (115,0,'total_credit','total_credit_sort_order','7',0);
INSERT INTO `oc_setting` VALUES (116,0,'total_credit','total_credit_status','1',0);
INSERT INTO `oc_setting` VALUES (117,0,'total_reward','total_reward_sort_order','2',0);
INSERT INTO `oc_setting` VALUES (118,0,'total_reward','total_reward_status','1',0);
INSERT INTO `oc_setting` VALUES (119,0,'total_shipping','total_shipping_status','1',0);
INSERT INTO `oc_setting` VALUES (120,0,'total_shipping','total_shipping_estimator','1',0);
INSERT INTO `oc_setting` VALUES (121,0,'total_coupon','total_coupon_sort_order','4',0);
INSERT INTO `oc_setting` VALUES (122,0,'total_coupon','total_coupon_status','1',0);
INSERT INTO `oc_setting` VALUES (123,0,'module_category','module_category_status','1',0);
INSERT INTO `oc_setting` VALUES (124,0,'module_account','module_account_status','1',0);
INSERT INTO `oc_setting` VALUES (125,0,'theme_default','theme_default_product_limit','15',0);
INSERT INTO `oc_setting` VALUES (126,0,'theme_default','theme_default_product_description_length','100',0);
INSERT INTO `oc_setting` VALUES (127,0,'theme_default','theme_default_image_thumb_width','228',0);
INSERT INTO `oc_setting` VALUES (128,0,'theme_default','theme_default_image_thumb_height','228',0);
INSERT INTO `oc_setting` VALUES (129,0,'theme_default','theme_default_image_popup_width','500',0);
INSERT INTO `oc_setting` VALUES (130,0,'theme_default','theme_default_image_popup_height','500',0);
INSERT INTO `oc_setting` VALUES (131,0,'theme_default','theme_default_image_category_width','80',0);
INSERT INTO `oc_setting` VALUES (132,0,'theme_default','theme_default_image_category_height','80',0);
INSERT INTO `oc_setting` VALUES (133,0,'theme_default','theme_default_image_product_width','228',0);
INSERT INTO `oc_setting` VALUES (134,0,'theme_default','theme_default_image_product_height','228',0);
INSERT INTO `oc_setting` VALUES (135,0,'theme_default','theme_default_image_additional_width','74',0);
INSERT INTO `oc_setting` VALUES (136,0,'theme_default','theme_default_image_additional_height','74',0);
INSERT INTO `oc_setting` VALUES (137,0,'theme_default','theme_default_image_related_width','200',0);
INSERT INTO `oc_setting` VALUES (138,0,'theme_default','theme_default_image_related_height','200',0);
INSERT INTO `oc_setting` VALUES (139,0,'theme_default','theme_default_image_compare_width','90',0);
INSERT INTO `oc_setting` VALUES (140,0,'theme_default','theme_default_image_compare_height','90',0);
INSERT INTO `oc_setting` VALUES (141,0,'theme_default','theme_default_image_wishlist_width','47',0);
INSERT INTO `oc_setting` VALUES (142,0,'theme_default','theme_default_image_wishlist_height','47',0);
INSERT INTO `oc_setting` VALUES (143,0,'theme_default','theme_default_image_cart_height','47',0);
INSERT INTO `oc_setting` VALUES (144,0,'theme_default','theme_default_image_cart_width','47',0);
INSERT INTO `oc_setting` VALUES (145,0,'theme_default','theme_default_image_location_height','50',0);
INSERT INTO `oc_setting` VALUES (146,0,'theme_default','theme_default_image_location_width','268',0);
INSERT INTO `oc_setting` VALUES (147,0,'theme_default','theme_default_directory','default',0);
INSERT INTO `oc_setting` VALUES (148,0,'theme_default','theme_default_status','1',0);
INSERT INTO `oc_setting` VALUES (149,0,'dashboard_activity','dashboard_activity_status','1',0);
INSERT INTO `oc_setting` VALUES (150,0,'dashboard_activity','dashboard_activity_sort_order','7',0);
INSERT INTO `oc_setting` VALUES (151,0,'dashboard_sale','dashboard_sale_status','1',0);
INSERT INTO `oc_setting` VALUES (152,0,'dashboard_sale','dashboard_sale_width','3',0);
INSERT INTO `oc_setting` VALUES (153,0,'dashboard_chart','dashboard_chart_status','1',0);
INSERT INTO `oc_setting` VALUES (154,0,'dashboard_chart','dashboard_chart_width','6',0);
INSERT INTO `oc_setting` VALUES (155,0,'dashboard_customer','dashboard_customer_status','1',0);
INSERT INTO `oc_setting` VALUES (156,0,'dashboard_customer','dashboard_customer_width','3',0);
INSERT INTO `oc_setting` VALUES (157,0,'dashboard_map','dashboard_map_status','1',0);
INSERT INTO `oc_setting` VALUES (158,0,'dashboard_map','dashboard_map_width','6',0);
INSERT INTO `oc_setting` VALUES (159,0,'dashboard_online','dashboard_online_status','1',0);
INSERT INTO `oc_setting` VALUES (160,0,'dashboard_online','dashboard_online_width','3',0);
INSERT INTO `oc_setting` VALUES (161,0,'dashboard_order','dashboard_order_sort_order','1',0);
INSERT INTO `oc_setting` VALUES (162,0,'dashboard_order','dashboard_order_status','1',0);
INSERT INTO `oc_setting` VALUES (163,0,'dashboard_order','dashboard_order_width','3',0);
INSERT INTO `oc_setting` VALUES (164,0,'dashboard_sale','dashboard_sale_sort_order','2',0);
INSERT INTO `oc_setting` VALUES (165,0,'dashboard_customer','dashboard_customer_sort_order','3',0);
INSERT INTO `oc_setting` VALUES (166,0,'dashboard_online','dashboard_online_sort_order','4',0);
INSERT INTO `oc_setting` VALUES (167,0,'dashboard_map','dashboard_map_sort_order','5',0);
INSERT INTO `oc_setting` VALUES (168,0,'dashboard_chart','dashboard_chart_sort_order','6',0);
INSERT INTO `oc_setting` VALUES (169,0,'dashboard_recent','dashboard_recent_status','1',0);
INSERT INTO `oc_setting` VALUES (170,0,'dashboard_recent','dashboard_recent_sort_order','8',0);
INSERT INTO `oc_setting` VALUES (171,0,'dashboard_activity','dashboard_activity_width','4',0);
INSERT INTO `oc_setting` VALUES (172,0,'dashboard_recent','dashboard_recent_width','8',0);
INSERT INTO `oc_setting` VALUES (173,0,'report_customer_activity','report_customer_activity_status','1',0);
INSERT INTO `oc_setting` VALUES (174,0,'report_customer_activity','report_customer_activity_sort_order','1',0);
INSERT INTO `oc_setting` VALUES (175,0,'report_customer_order','report_customer_order_status','1',0);
INSERT INTO `oc_setting` VALUES (176,0,'report_customer_order','report_customer_order_sort_order','2',0);
INSERT INTO `oc_setting` VALUES (177,0,'report_customer_reward','report_customer_reward_status','1',0);
INSERT INTO `oc_setting` VALUES (178,0,'report_customer_reward','report_customer_reward_sort_order','3',0);
INSERT INTO `oc_setting` VALUES (179,0,'report_customer_search','report_customer_search_sort_order','3',0);
INSERT INTO `oc_setting` VALUES (180,0,'report_customer_search','report_customer_search_status','1',0);
INSERT INTO `oc_setting` VALUES (181,0,'report_customer_transaction','report_customer_transaction_status','1',0);
INSERT INTO `oc_setting` VALUES (182,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0);
INSERT INTO `oc_setting` VALUES (183,0,'report_sale_tax','report_sale_tax_status','1',0);
INSERT INTO `oc_setting` VALUES (184,0,'report_sale_tax','report_sale_tax_sort_order','5',0);
INSERT INTO `oc_setting` VALUES (185,0,'report_sale_shipping','report_sale_shipping_status','1',0);
INSERT INTO `oc_setting` VALUES (186,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0);
INSERT INTO `oc_setting` VALUES (187,0,'report_sale_return','report_sale_return_status','1',0);
INSERT INTO `oc_setting` VALUES (188,0,'report_sale_return','report_sale_return_sort_order','7',0);
INSERT INTO `oc_setting` VALUES (189,0,'report_sale_order','report_sale_order_status','1',0);
INSERT INTO `oc_setting` VALUES (190,0,'report_sale_order','report_sale_order_sort_order','8',0);
INSERT INTO `oc_setting` VALUES (191,0,'report_sale_coupon','report_sale_coupon_status','1',0);
INSERT INTO `oc_setting` VALUES (192,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0);
INSERT INTO `oc_setting` VALUES (193,0,'report_product_viewed','report_product_viewed_status','1',0);
INSERT INTO `oc_setting` VALUES (194,0,'report_product_viewed','report_product_viewed_sort_order','10',0);
INSERT INTO `oc_setting` VALUES (195,0,'report_product_purchased','report_product_purchased_status','1',0);
INSERT INTO `oc_setting` VALUES (196,0,'report_product_purchased','report_product_purchased_sort_order','11',0);
INSERT INTO `oc_setting` VALUES (197,0,'report_marketing','report_marketing_status','1',0);
INSERT INTO `oc_setting` VALUES (198,0,'report_marketing','report_marketing_sort_order','12',0);
INSERT INTO `oc_setting` VALUES (212,0,'developer','developer_sass','1',0);
INSERT INTO `oc_setting` VALUES (211,0,'developer','developer_theme','1',0);
INSERT INTO `oc_setting` VALUES (208,0,'module_filter','module_filter_status','1',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` VALUES (1,'dhl','DHL');
INSERT INTO `oc_shipping_courier` VALUES (2,'fedex','Fedex');
INSERT INTO `oc_shipping_courier` VALUES (3,'ups','UPS');
INSERT INTO `oc_shipping_courier` VALUES (4,'royal-mail','Royal Mail');
INSERT INTO `oc_shipping_courier` VALUES (5,'usps','United States Postal Service');
INSERT INTO `oc_shipping_courier` VALUES (6,'auspost','Australia Post');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` VALUES (1,'order_sale',0.0000);
INSERT INTO `oc_statistics` VALUES (2,'order_processing',0.0000);
INSERT INTO `oc_statistics` VALUES (3,'order_complete',0.0000);
INSERT INTO `oc_statistics` VALUES (4,'order_other',0.0000);
INSERT INTO `oc_statistics` VALUES (5,'returns',0.0000);
INSERT INTO `oc_statistics` VALUES (6,'product',0.0000);
INSERT INTO `oc_statistics` VALUES (7,'review',0.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'В наличии');
INSERT INTO `oc_stock_status` VALUES (8,1,'Предзаказ');
INSERT INTO `oc_stock_status` VALUES (5,1,'Нет в наличии');
INSERT INTO `oc_stock_status` VALUES (6,1,'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Налоги','Облагаемые налогом','2018-06-06 23:00:00','2018-09-09 11:50:31');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (87,3,'НДС',18.0000,'F','2018-09-21 21:49:23','2018-09-09 11:49:32');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1);
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1);
INSERT INTO `oc_tax_rule` VALUES (120,10,87,'store',0);
INSERT INTO `oc_tax_rule` VALUES (128,9,86,'shipping',1);
INSERT INTO `oc_tax_rule` VALUES (127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','6dff45500188b75fc14ba35b15f792a79000aeaa','1Pg1m6YVs','John','Doe','root@locahhdf.ru','','','127.0.0.1',1,'2019-01-13 17:42:21');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/fb_chat\",\"extension\\/module\\/filter\",\"extension\\/module\\/ocfilter\",\"extension\\/module\\/ocfilter\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/fb_chat\",\"extension\\/module\\/filter\",\"extension\\/module\\/ocfilter\",\"extension\\/module\\/ocfilter\"]}');
INSERT INTO `oc_user_group` VALUES (10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO `oc_voucher_theme` VALUES (7,'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES (6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Новый год');
INSERT INTO `oc_voucher_theme_description` VALUES (7,1,'День рождения');
INSERT INTO `oc_voucher_theme_description` VALUES (8,1,'Другое');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000);
INSERT INTO `oc_weight_class` VALUES (2,1000.00000000);
INSERT INTO `oc_weight_class` VALUES (5,2.20460000);
INSERT INTO `oc_weight_class` VALUES (6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Килограмм','кг');
INSERT INTO `oc_weight_class_description` VALUES (2,1,'Грамм','г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,20,'Брест','BR',1);
INSERT INTO `oc_zone` VALUES (2,20,'Гомель','HO',1);
INSERT INTO `oc_zone` VALUES (3,20,'Минск','HM',1);
INSERT INTO `oc_zone` VALUES (4,20,'Гродно','HR',1);
INSERT INTO `oc_zone` VALUES (5,20,'Могилев','MA',1);
INSERT INTO `oc_zone` VALUES (6,20,'Минская область','MI',1);
INSERT INTO `oc_zone` VALUES (7,20,'Витебск','VI',1);
INSERT INTO `oc_zone` VALUES (8,80,'Abkhazia','AB',1);
INSERT INTO `oc_zone` VALUES (9,80,'Ajaria','AJ',1);
INSERT INTO `oc_zone` VALUES (10,80,'Tbilisi','TB',1);
INSERT INTO `oc_zone` VALUES (11,80,'Guria','GU',1);
INSERT INTO `oc_zone` VALUES (12,80,'Imereti','IM',1);
INSERT INTO `oc_zone` VALUES (13,80,'Kakheti','KA',1);
INSERT INTO `oc_zone` VALUES (14,80,'Kvemo Kartli','KK',1);
INSERT INTO `oc_zone` VALUES (15,80,'Mtskheta-Mtianeti','MM',1);
INSERT INTO `oc_zone` VALUES (16,80,'Racha Lechkhumi and Kvemo Svanet','RL',1);
INSERT INTO `oc_zone` VALUES (17,80,'Samegrelo-Zemo Svaneti','SZ',1);
INSERT INTO `oc_zone` VALUES (18,80,'Samtskhe-Javakheti','SJ',1);
INSERT INTO `oc_zone` VALUES (19,80,'Shida Kartli','SK',1);
INSERT INTO `oc_zone` VALUES (20,109,'Алматинская область','AL',1);
INSERT INTO `oc_zone` VALUES (21,109,'Алматы - город республ-го значения','AC',1);
INSERT INTO `oc_zone` VALUES (22,109,'Акмолинская область','AM',1);
INSERT INTO `oc_zone` VALUES (23,109,'Актюбинская область','AQ',1);
INSERT INTO `oc_zone` VALUES (24,109,'Астана - город республ-го значения','AS',1);
INSERT INTO `oc_zone` VALUES (25,109,'Атырауская область','AT',1);
INSERT INTO `oc_zone` VALUES (26,109,'Западно-Казахстанская область','BA',1);
INSERT INTO `oc_zone` VALUES (27,109,'Байконур - город республ-го значения','BY',1);
INSERT INTO `oc_zone` VALUES (28,109,'Мангистауская область','MA',1);
INSERT INTO `oc_zone` VALUES (29,109,'Южно-Казахстанская область','ON',1);
INSERT INTO `oc_zone` VALUES (30,109,'Павлодарская область','PA',1);
INSERT INTO `oc_zone` VALUES (31,109,'Карагандинская область','QA',1);
INSERT INTO `oc_zone` VALUES (32,109,'Костанайская область','QO',1);
INSERT INTO `oc_zone` VALUES (33,109,'Кызылординская область','QY',1);
INSERT INTO `oc_zone` VALUES (34,109,'Восточно-Казахстанская область','SH',1);
INSERT INTO `oc_zone` VALUES (35,109,'Северо-Казахстанская область','SO',1);
INSERT INTO `oc_zone` VALUES (36,109,'Жамбылская область','ZH',1);
INSERT INTO `oc_zone` VALUES (37,115,'Bishkek','GB',1);
INSERT INTO `oc_zone` VALUES (38,115,'Batken','B',1);
INSERT INTO `oc_zone` VALUES (39,115,'Chu','C',1);
INSERT INTO `oc_zone` VALUES (40,115,'Jalal-Abad','J',1);
INSERT INTO `oc_zone` VALUES (41,115,'Naryn','N',1);
INSERT INTO `oc_zone` VALUES (42,115,'Osh','O',1);
INSERT INTO `oc_zone` VALUES (43,115,'Talas','T',1);
INSERT INTO `oc_zone` VALUES (44,115,'Ysyk-Kol','Y',1);
INSERT INTO `oc_zone` VALUES (45,176,'Республика Хакасия','KK',1);
INSERT INTO `oc_zone` VALUES (46,176,'Московская область','MOS',1);
INSERT INTO `oc_zone` VALUES (47,176,'Чукотский АО','CHU',1);
INSERT INTO `oc_zone` VALUES (48,176,'Архангельская область','ARK',1);
INSERT INTO `oc_zone` VALUES (49,176,'Астраханская область','AST',1);
INSERT INTO `oc_zone` VALUES (50,176,'Алтайский край','ALT',1);
INSERT INTO `oc_zone` VALUES (51,176,'Белгородская область','BEL',1);
INSERT INTO `oc_zone` VALUES (52,176,'Еврейская АО','YEV',1);
INSERT INTO `oc_zone` VALUES (53,176,'Амурская область','AMU',1);
INSERT INTO `oc_zone` VALUES (54,176,'Брянская область','BRY',1);
INSERT INTO `oc_zone` VALUES (55,176,'Чувашская Республика','CU',1);
INSERT INTO `oc_zone` VALUES (56,176,'Челябинская область','CHE',1);
INSERT INTO `oc_zone` VALUES (57,176,'Карачаево-Черкесия','KC',1);
INSERT INTO `oc_zone` VALUES (58,176,'Забайкальский край','ZAB',1);
INSERT INTO `oc_zone` VALUES (59,176,'Ленинградская область','LEN',1);
INSERT INTO `oc_zone` VALUES (60,176,'Республика Калмыкия','KL',1);
INSERT INTO `oc_zone` VALUES (61,176,'Сахалинская область','SAK',1);
INSERT INTO `oc_zone` VALUES (62,176,'Республика Алтай','AL',1);
INSERT INTO `oc_zone` VALUES (63,176,'Чеченская Республика','CE',1);
INSERT INTO `oc_zone` VALUES (64,176,'Иркутская область','IRK',1);
INSERT INTO `oc_zone` VALUES (65,176,'Ивановская область','IVA',1);
INSERT INTO `oc_zone` VALUES (66,176,'Удмуртская Республика','UD',1);
INSERT INTO `oc_zone` VALUES (67,176,'Калининградская область','KGD',1);
INSERT INTO `oc_zone` VALUES (68,176,'Калужская область','KLU',1);
INSERT INTO `oc_zone` VALUES (69,176,'Республика Татарстан','TA',1);
INSERT INTO `oc_zone` VALUES (70,176,'Кемеровская область','KEM',1);
INSERT INTO `oc_zone` VALUES (71,176,'Хабаровский край','KHA',1);
INSERT INTO `oc_zone` VALUES (72,176,'Ханты-Мансийский АО - Югра','KHM',1);
INSERT INTO `oc_zone` VALUES (73,176,'Костромская область','KOS',1);
INSERT INTO `oc_zone` VALUES (74,176,'Краснодарский край','KDA',1);
INSERT INTO `oc_zone` VALUES (75,176,'Красноярский край','KYA',1);
INSERT INTO `oc_zone` VALUES (76,176,'Курганская область','KGN',1);
INSERT INTO `oc_zone` VALUES (77,176,'Курская область','KRS',1);
INSERT INTO `oc_zone` VALUES (78,176,'Республика Тыва','TY',1);
INSERT INTO `oc_zone` VALUES (79,176,'Липецкая область','LIP',1);
INSERT INTO `oc_zone` VALUES (80,176,'Магаданская область','MAG',1);
INSERT INTO `oc_zone` VALUES (81,176,'Республика Дагестан','DA',1);
INSERT INTO `oc_zone` VALUES (82,176,'Республика Адыгея','AD',1);
INSERT INTO `oc_zone` VALUES (83,176,'Москва','MOW',1);
INSERT INTO `oc_zone` VALUES (84,176,'Мурманская область','MUR',1);
INSERT INTO `oc_zone` VALUES (85,176,'Республика Кабардино-Балкария','KB',1);
INSERT INTO `oc_zone` VALUES (86,176,'Ненецкий АО','NEN',1);
INSERT INTO `oc_zone` VALUES (87,176,'Республика Ингушетия','IN',1);
INSERT INTO `oc_zone` VALUES (88,176,'Нижегородская область','NIZ',1);
INSERT INTO `oc_zone` VALUES (89,176,'Новгородская область','NGR',1);
INSERT INTO `oc_zone` VALUES (90,176,'Новосибирская область','NVS',1);
INSERT INTO `oc_zone` VALUES (91,176,'Омская область','OMS',1);
INSERT INTO `oc_zone` VALUES (92,176,'Орловская область','ORL',1);
INSERT INTO `oc_zone` VALUES (93,176,'Оренбургская область','ORE',1);
INSERT INTO `oc_zone` VALUES (94,176,'Пензенская область','PNZ',1);
INSERT INTO `oc_zone` VALUES (95,176,'Пермский край','PER',1);
INSERT INTO `oc_zone` VALUES (96,176,'Камчатский край','KAM',1);
INSERT INTO `oc_zone` VALUES (97,176,'Республика Карелия','KR',1);
INSERT INTO `oc_zone` VALUES (98,176,'Псковская область','PSK',1);
INSERT INTO `oc_zone` VALUES (99,176,'Ростовская область','ROS',1);
INSERT INTO `oc_zone` VALUES (100,176,'Рязанская область','RYA',1);
INSERT INTO `oc_zone` VALUES (101,176,'Ямало-Ненецкий АО','YAN',1);
INSERT INTO `oc_zone` VALUES (102,176,'Самарская область','SAM',1);
INSERT INTO `oc_zone` VALUES (103,176,'Республика Мордовия','MO',1);
INSERT INTO `oc_zone` VALUES (104,176,'Саратовская область','SAR',1);
INSERT INTO `oc_zone` VALUES (105,176,'Смоленская область','SMO',1);
INSERT INTO `oc_zone` VALUES (106,176,'Санкт-Петербург','SPE',1);
INSERT INTO `oc_zone` VALUES (107,176,'Ставропольский край','STA',1);
INSERT INTO `oc_zone` VALUES (108,176,'Республика Коми','KO',1);
INSERT INTO `oc_zone` VALUES (109,176,'Тамбовская область','TAM',1);
INSERT INTO `oc_zone` VALUES (110,176,'Томская область','TOM',1);
INSERT INTO `oc_zone` VALUES (111,176,'Тульская область','TUL',1);
INSERT INTO `oc_zone` VALUES (112,176,'Тверская область','TVE',1);
INSERT INTO `oc_zone` VALUES (113,176,'Тюменская область','TYU',1);
INSERT INTO `oc_zone` VALUES (114,176,'Республика Башкортостан','BA',1);
INSERT INTO `oc_zone` VALUES (115,176,'Ульяновская область','ULY',1);
INSERT INTO `oc_zone` VALUES (116,176,'Республика Бурятия','BU',1);
INSERT INTO `oc_zone` VALUES (117,176,'Республика Северная Осетия','SE',1);
INSERT INTO `oc_zone` VALUES (118,176,'Владимирская область','VLA',1);
INSERT INTO `oc_zone` VALUES (119,176,'Приморский край','PRI',1);
INSERT INTO `oc_zone` VALUES (120,176,'Волгоградская область','VGG',1);
INSERT INTO `oc_zone` VALUES (121,176,'Вологодская область','VLG',1);
INSERT INTO `oc_zone` VALUES (122,176,'Воронежская область','VOR',1);
INSERT INTO `oc_zone` VALUES (123,176,'Кировская область','KIR',1);
INSERT INTO `oc_zone` VALUES (124,176,'Республика Саха','SA',1);
INSERT INTO `oc_zone` VALUES (125,176,'Ярославская область','YAR',1);
INSERT INTO `oc_zone` VALUES (126,176,'Свердловская область','SVE',1);
INSERT INTO `oc_zone` VALUES (127,176,'Республика Марий Эл','ME',1);
INSERT INTO `oc_zone` VALUES (128,176,'Республика Крым','CR',1);
INSERT INTO `oc_zone` VALUES (129,220,'Черкассы','CK',1);
INSERT INTO `oc_zone` VALUES (130,220,'Чернигов','CH',1);
INSERT INTO `oc_zone` VALUES (131,220,'Черновцы','CV',1);
INSERT INTO `oc_zone` VALUES (132,220,'Днепропетровск','DN',1);
INSERT INTO `oc_zone` VALUES (133,220,'Донецк','DO',1);
INSERT INTO `oc_zone` VALUES (134,220,'Ивано-Франковск','IV',1);
INSERT INTO `oc_zone` VALUES (135,220,'Харьков','KH',1);
INSERT INTO `oc_zone` VALUES (136,220,'Хмельницкий','KM',1);
INSERT INTO `oc_zone` VALUES (137,220,'Кировоград','KR',1);
INSERT INTO `oc_zone` VALUES (138,220,'Киевская область','KV',1);
INSERT INTO `oc_zone` VALUES (139,220,'Киев','KY',1);
INSERT INTO `oc_zone` VALUES (140,220,'Луганск','LU',1);
INSERT INTO `oc_zone` VALUES (141,220,'Львов','LV',1);
INSERT INTO `oc_zone` VALUES (142,220,'Николаев','MY',1);
INSERT INTO `oc_zone` VALUES (143,220,'Одесса','OD',1);
INSERT INTO `oc_zone` VALUES (144,220,'Полтава','PO',1);
INSERT INTO `oc_zone` VALUES (145,220,'Ровно','RI',1);
INSERT INTO `oc_zone` VALUES (146,176,'Севастополь','SEV',1);
INSERT INTO `oc_zone` VALUES (147,220,'Сумы','SU',1);
INSERT INTO `oc_zone` VALUES (148,220,'Тернополь','TE',1);
INSERT INTO `oc_zone` VALUES (149,220,'Винница','VI',1);
INSERT INTO `oc_zone` VALUES (150,220,'Луцк','VO',1);
INSERT INTO `oc_zone` VALUES (151,220,'Ужгород','ZK',1);
INSERT INTO `oc_zone` VALUES (152,220,'Запорожье','ZA',1);
INSERT INTO `oc_zone` VALUES (153,220,'Житомир','ZH',1);
INSERT INTO `oc_zone` VALUES (154,220,'Херсон','KE',1);
INSERT INTO `oc_zone` VALUES (155,226,'Andijon','AN',1);
INSERT INTO `oc_zone` VALUES (156,226,'Buxoro','BU',1);
INSERT INTO `oc_zone` VALUES (157,226,'Farg\'ona','FA',1);
INSERT INTO `oc_zone` VALUES (158,226,'Jizzax','JI',1);
INSERT INTO `oc_zone` VALUES (159,226,'Namangan','NG',1);
INSERT INTO `oc_zone` VALUES (160,226,'Navoiy','NW',1);
INSERT INTO `oc_zone` VALUES (161,226,'Qashqadaryo','QA',1);
INSERT INTO `oc_zone` VALUES (162,226,'Qoraqalpog\'iston Republikasi','QR',1);
INSERT INTO `oc_zone` VALUES (163,226,'Samarqand','SA',1);
INSERT INTO `oc_zone` VALUES (164,226,'Sirdaryo','SI',1);
INSERT INTO `oc_zone` VALUES (165,226,'Surxondaryo','SU',1);
INSERT INTO `oc_zone` VALUES (166,226,'Toshkent City','TK',1);
INSERT INTO `oc_zone` VALUES (167,226,'Toshkent Region','TO',1);
INSERT INTO `oc_zone` VALUES (168,226,'Xorazm','XO',1);
INSERT INTO `oc_zone` VALUES (169,176,'Байконур - город республ-го значения','BY',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,176,0,3,'2018-09-09 11:48:13','0000-00-00 00:00:00');


