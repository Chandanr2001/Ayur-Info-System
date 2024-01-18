-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gfgc_ayurveda
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_ayurveda;
USE gfgc_ayurveda;

--
-- Table structure for table `gfgc_ayurveda`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_ayurveda`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`categoryname`) VALUES 
 ('herbal shampoo'),
 ('Soaps'),
 ('tablets');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_ayurveda`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`email`,`password`,`firstname`,`lastname`,`country`,`zip`,`state`,`address`,`question`,`answer`,`customerid`) VALUES 
 ('ravishkumar@gmail.com','ravi123','fgsf','sfgs','sfgsdf','577777','sfgs','sfgsfd','sfdgdsf','dfsgdsf',1),
 ('ramesh@gmail.com','ramesh123','lokesh','kumar','india','577222','karnataka','shimoga','which is your best school','sports school',2),
 ('meghana@gmail.com','megha123','megha','mg','india','577201','karnataka','shimohs','where is air','everywhere',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_ayurveda`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`place`,`feedback`) VALUES 
 ('ravi@gmail.com',NULL,'the college is good'),
 ('ravi','shimoga','nice shop to buy'),
 ('ravi','shimgoa','nice website for herbals ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`herbals`
--

DROP TABLE IF EXISTS `herbals`;
CREATE TABLE `herbals` (
  `name` varchar(50) DEFAULT NULL,
  `scientificname` text,
  `usefullness` text,
  `available` text,
  `description` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ayurveda`.`herbals`
--

/*!40000 ALTER TABLE `herbals` DISABLE KEYS */;
INSERT INTO `herbals` (`name`,`scientificname`,`usefullness`,`available`,`description`,`id`) VALUES 
 ('sunti','sunti','helps for calf','all retail stores','used in many cooking items',1);
/*!40000 ALTER TABLE `herbals` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ayurveda`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password'),
 ('admin','1234'),
 ('ravi','ravi123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `productname` varchar(50) DEFAULT NULL,
  `productCast` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `totalAmount` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cardHolderName` varchar(50) DEFAULT NULL,
  `cardtype` varchar(50) DEFAULT NULL,
  `cardNum` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `charity` varchar(50) DEFAULT NULL,
  `orderid` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_ayurveda`.`orderlist`
--

/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`) VALUES 
 ('hp','30000','1','30000.0','sfgsdfgdg','ravi','credit card','534534534534534','566','60.000003999999997',1),
 ('maruthi','500000','1','500000.0','shimoga','ragvasjgfjg','credit card','38573953758357385','343','1000.00006',2),
 ('maruthi','500000','1','500000.0','','','credit card','','','1000.00006',3),
 ('samsung','40000.0','1','40000.0','jdskdjfksjd','fvjdfjdjf','credit card','35354354354354','123','40.0',4),
 ('samsung','40000.0','1','40000.0','jdskdjfksjd','fvjdfjdjf','credit card','35354354354354','123','40.0',5),
 ('hp','30000.0','1','30000.0','dfgsdfgsdfg','sdfgdsf','credit card','34523452345234','123','60.000004',6),
 ('hp','30000.0','1','30000.0','dfgsdfgsdfg','sdfgdsf','credit card','34523452345234','123','60.000004',7),
 ('hp','30000.0','1','30000.0','cxvbxcvbxcvb','ravi','debit card','23423423423','232','60.000004',8),
 ('hp','30000.0','1','30000.0','jayanagara shimoga','ravisjh','debit card','124578965214785','554','60.000004',9);
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`) VALUES 
 ('Nail Shampoo','3000','1','3000.0','shimoga','ravishkumar','debit card','1234567890123456','412','9.0',10),
 ('Nail Shampoo','3000','1','3000.0','shimoga','ravishkumar','debit card','1234567890123456','412','9.0',11),
 ('Nail Shampoo','3000','1','3000.0','shimoga','savi@gmail.com','debit card','1234567890123456','123','9.0',12),
 ('herbal tablets','200','1','200.0','shimoga','savi@gmail.com','credit card','123456789098765','123','1.0',13);
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `productprice` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `charity` varchar(50) DEFAULT NULL,
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_ayurveda`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`charity`,`productid`) VALUES 
 ('herbal shampoo','Nail Shampoo','3000','48','img2.jpg','nice shampoo for hairs','0.3',5),
 ('Soaps','herbal soaps','60','50','2.jpg','nice soaps','0.75',6),
 ('tablets','herbal tablets','200','599','tablets.jpg','protein tablets','0.5',7);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `storemobileno` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`storeid`),
  UNIQUE KEY `storemobileno` (`storemobileno`),
  UNIQUE KEY `storename` (`storename`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ayurveda`.`stores`
--

/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`storeid`,`storename`,`address`,`storemobileno`,`password`,`status`,`image`) VALUES 
 (1,'ravishop','shimoga','9985855852','ravi123','Accepted',NULL),
 (2,'ram shop','shimoga','9985888585','ram123','pending','screenshot-homepage.jpg');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ayurveda`.`therapy`
--

DROP TABLE IF EXISTS `therapy`;
CREATE TABLE `therapy` (
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ayurveda`.`therapy`
--

/*!40000 ALTER TABLE `therapy` DISABLE KEYS */;
INSERT INTO `therapy` (`name`,`address`,`phone`,`email`,`description`,`id`) VALUES 
 ('abc','shimog','8833888338','abc@gmail.com','nic center',1);
/*!40000 ALTER TABLE `therapy` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
