-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: FruitMarket
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(30) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Weight` varchar(10) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `SupplierID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1001,'Lady Finger Bananas',17.95,'750 g',45,'SUPP0001'),(1002,'Pink Lady Apples',18.95,'1,5 kg',15,'SUPP0001'),(1003,'Red Anjou Pears',22.99,'1 kg',24,'SUPP0001'),(1004,'Cavendish Bananas',15.95,'1 kg',18,'SUPP0001'),(2001,'Tenderstem Broccoli',35.90,'400 g',8,'SUPP0002'),(2002,'Portabellini Mushrooms',18.99,'250 g',16,'SUPP0002'),(3001,'Raw Almonds',99.00,'1 kg',6,'SUPP0003'),(3002,'Macaroon Butter',32.95,'410 g',9,'SUPP0003'),(3003,'Organic Coconut Oil',89.95,'500 ml',15,'SUPP0003'),(4001,'Ayshire Milk',33.95,'3 l',23,'SUPP0004'),(4002,'Simonzola Blue Cheese',27.65,'270 g',4,'SUPP0004');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `q14`
--

DROP TABLE IF EXISTS `q14`;
/*!50001 DROP VIEW IF EXISTS `q14`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q14` AS SELECT 
 1 AS `User`,
 1 AS `Host`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_16`
--

DROP TABLE IF EXISTS `q1_16`;
/*!50001 DROP VIEW IF EXISTS `q1_16`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_16` AS SELECT 
 1 AS `CompanyName`,
 1 AS `ContactNo`,
 1 AS `ProductName`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_17`
--

DROP TABLE IF EXISTS `q1_17`;
/*!50001 DROP VIEW IF EXISTS `q1_17`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_17` AS SELECT 
 1 AS `Total_unit_price`,
 1 AS `Average_price`,
 1 AS `NumbeR_of_products`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_18`
--

DROP TABLE IF EXISTS `q1_18`;
/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_18` AS SELECT 
 1 AS `Count(ProductID)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q9`
--

DROP TABLE IF EXISTS `q9`;
/*!50001 DROP VIEW IF EXISTS `q9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q9` AS SELECT 
 1 AS `ProductID`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `ProductCategory`,
 1 AS `TotalPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qproducts`
--

DROP TABLE IF EXISTS `qproducts`;
/*!50001 DROP VIEW IF EXISTS `qproducts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qproducts` AS SELECT 
 1 AS `ProductID`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `SupplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` varchar(10) NOT NULL,
  `CompanyName` varchar(30) NOT NULL,
  `ContactPerson` varchar(30) NOT NULL,
  `ContactNo` varchar(13) NOT NULL DEFAULT '000-000-0000',
  `ProductCategory` varchar(55) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('SUPP0001','Fruit City','Themba','0115062089','Fruit'),('SUPP0002','Vegan Veggie Xpress','Chinyere','0137228936','Vegetables'),('SUPP0003','The Nut House','Sam','0216965133','Nuts'),('SUPP0004','The Lazy Cow','Angelo','0216964157','Dairy');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `q14`
--

/*!50001 DROP VIEW IF EXISTS `q14`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q14` AS select `mysql`.`user`.`User` AS `User`,`mysql`.`user`.`Host` AS `Host` from `mysql`.`user` where (`mysql`.`user`.`User` in ('Deno_R','root')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_16`
--

/*!50001 DROP VIEW IF EXISTS `q1_16`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_16` AS select `s`.`CompanyName` AS `CompanyName`,`s`.`ContactNo` AS `ContactNo`,`p`.`ProductName` AS `ProductName`,`p`.`Price` AS `Price` from (`products` `p` left join `suppliers` `s` on((`p`.`SupplierID` = `s`.`SupplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_17`
--

/*!50001 DROP VIEW IF EXISTS `q1_17`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_17` AS select sum(`products`.`Price`) AS `Total_unit_price`,round(avg(`products`.`Price`),2) AS `Average_price`,count(`products`.`Price`) AS `NumbeR_of_products` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_18`
--

/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_18` AS select count(distinct `products`.`SupplierID`) AS `Count(ProductID)` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q9`
--

/*!50001 DROP VIEW IF EXISTS `q9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q9` AS select `p`.`ProductID` AS `ProductID`,`p`.`ProductName` AS `ProductName`,`p`.`Price` AS `Price`,`p`.`Weight` AS `Weight`,`p`.`Stock` AS `Stock`,`s`.`ProductCategory` AS `ProductCategory`,round(((`p`.`Price` * `p`.`Stock`) * 1.15),4) AS `TotalPrice` from (`products` `p` join `suppliers` `s` on((`p`.`SupplierID` = `s`.`SupplierID`))) where (`p`.`Stock` < 20) order by `p`.`Price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qproducts`
--

/*!50001 DROP VIEW IF EXISTS `qproducts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qproducts` AS select `products`.`ProductID` AS `ProductID`,`products`.`ProductName` AS `ProductName`,`products`.`Price` AS `Price`,`products`.`Weight` AS `Weight`,`products`.`Stock` AS `Stock`,`products`.`SupplierID` AS `SupplierID` from `products` order by `products`.`Stock` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 13:30:31
