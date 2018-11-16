-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dicdata
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'vtn1','vtn1'),(2,'admin','admin'),(3,'a','a');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dic`
--

DROP TABLE IF EXISTS `dic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Từ` varchar(20) NOT NULL,
  `PhiênÂm` varchar(40) NOT NULL,
  `LoạiTừ` varchar(20) NOT NULL,
  `Nghĩa` varchar(50) NOT NULL,
  `Âm` varchar(100) NOT NULL,
  `Ảnh` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic`
--

LOCK TABLES `dic` WRITE;
/*!40000 ALTER TABLE `dic` DISABLE KEYS */;
INSERT INTO `dic` VALUES (2,'application','/ˌæplɪˈkeɪʃn/','danh từ','ứng dụng','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\application.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\app.png'),(3,'abacus','/ˈæbəkəs/','danh từ','bàn tính','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\abacus.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\abacus.jpg'),(4,'address','/əˈdres/','danh từ','địa chỉ','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\address.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\address.png'),(5,'abstract','/\'æbstrækt/','tính từ','trừu tượng','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\abstract.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\abstract.png'),(6,'background','/ˈbækɡraʊnd/','danh từ','bối cảnh','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\background.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\background.jpg'),(7,'binary','/ˈbaɪnəri/','tính từ','nhị phân','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\binary.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\binary.jpg'),(8,'capability','/ˌkeɪpəˈbɪləti/','danh từ','khả năng','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\capability.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\capability.jpg'),(9,'certification','/ˌsɜːtɪfɪˈkeɪʃn/','danh từ','giấy chứng nhận','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\certification.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\certification.png'),(10,'computer','/kəmˈpjuːtə(r)/','danh từ','máy tính','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\computer.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\computer.png'),(11,'customer','/ˈkʌstəmə(r)/','danh từ','khách hàng','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\customer.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\customer.jpg'),(12,'configuration','/kənˌfɪɡəˈreɪʃn/','danh từ','cấu hình','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\configuration.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\configuration.jpg'),(13,'command','/kəˈmɑːnd/','ngoại động từ','ra lệnh','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\command.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\command.jpg'),(14,'component','/kəmˈpəʊnənt/','danh từ','hợp thành','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\component.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\component.png'),(15,'convert','/kənˈvɜːt/','ngoại động từ','chuyển đổi','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\convert.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\convert.jpg'),(16,'data','/ˈdeɪtə/','danh từ','dữ liệu','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\data.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\data.jpg'),(17,'database','/ˈdeɪtəbeɪs/','danh từ','cơ sở dữ liệu','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\database.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\database.png'),(18,'decision',' /dɪˈsɪʒn/','danh từ','sự quyết định','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\decision.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\decision.jpg'),(19,'demand','/dɪˈmɑːnd/','ngoại động từ','đòi hỏi ','',''),(20,'dependable','/dɪˈpendəbl/','tính từ','đáng tin cậy','',''),(21,'detailed','/ˈdiːteɪld/','tính từ','chi tiết','',''),(22,'develop','/dɪˈveləp/','ngoại động từ','phát triển','',''),(23,'device','/dɪˈvaɪs/','danh từ','thiết bị','',''),(24,'disk','/dɪsk/','danh từ','đĩa','',''),(26,'drawback','/ˈdrɔːbæk/','danh từ','mặt hạn chế','',''),(27,'effective','/ɪˈfektɪv/','tính từ','có hiệu lực','',''),(28,'efficient','/ɪˈfɪʃnt/','tính từ','có hiệu suất cao','',''),(29,'employee','/¸emplɔi´i:/','danh từ','người lao động','',''),(30,'enterprise','/ˈentəpraɪz/','danh từ','tập đoàn , công ty','',''),(31,'environment','/ɪnˈvaɪrənmənt/','danh từ','môi trường','',''),(32,'equipment','/ɪˈkwɪpmənt/','danh từ','thiết bị , dụng cụ','',''),(33,'expertise','/ˌekspɜːˈtiːz/','danh từ','sự thành thạo','',''),(34,'gadget','/ˈɡædʒɪt/','danh từ','đồ vật , phụ tùng','',''),(35,'gateway','/ˈɡeɪtweɪ/','danh từ','cổng ra vào , cửa ngõ','',''),(36,'goal','/ɡəʊl/','tính từ','mục tiêu','',''),(37,'graphics','/ˈɡræfɪks/','danh từ','đồ họa','',''),(38,'hardware','/ˈhɑːdweə(r)/','danh từ','phần cứng','',''),(39,'implement','/ˈɪmplɪment/','danh từ','công cụ , phương tiện','',''),(40,'increase','/ɪnˈkriːs/','danh từ','sự tăng lên','',''),(41,'individual','/ˌɪndɪˈvɪdʒuəl/','tính từ','riêng lẻ , tách biệt','',''),(42,'inertia','/ɪˈnɜːʃə/','tính từ','quán tính','',''),(43,'install','/ɪnˈstɔːl/','động từ','cài đặt','',''),(44,'instruction','/ɪnˈstrʌkʃn/','danh từ','sự chỉ dẫn ','',''),(45,'insurance','/ɪnˈʃʊərəns/','danh từ','bảo hiểm','',''),(46,'integrate','/ˈɪntɪɡreɪt/','động từ','hợp thể , sáp nhập','',''),(47,'latest','/ˈleɪtɪst/','tính từ','gần đây nhất','',''),(48,'leadership','/ˈliːdəʃɪp/','danh từ','sự lãnh đạo','',''),(49,'low','/ləʊ/','tính từ','yếu , chậm','',''),(50,'maintain','/meɪnˈteɪn/','ngoại động từ','duy trì','',''),(51,'matrix','/ˈmeɪtrɪks/','danh từ','ma trận','',''),(52,'memory','/ˈmeməri/	','danh từ','bộ nhớ','',''),(53,'microprocessor','/ˌmaɪkrəʊˈprəʊsesə(r)/','danh từ','bộ vi xử lý','',''),(54,'monitor','/ˈmɒnɪtə(r)/','động từ','giám sát','',''),(55,'multiplication','/ˌmʌltɪplɪˈkeɪʃn/','danh từ','phép nhân','',''),(56,'multi','/mʌlti/','tính từ','đa nhiệm','',''),(57,'negotiate','/nɪˈɡəʊʃieɪt/','động từ','thương lượng , đàm phán','',''),(58,'numeric','/njuːˈmerɪkl/','danh từ','số học, thuộc về số học','',''),(59,'operating-system','/\'ɔpəreitiɳ \'sistəm/','danh từ','hệ điều hành','',''),(60,'operation','/ɒpəˈreɪʃn/','danh từ','sự hoạt động','',''),(61,'order','/ˈɔːdə(r)/','động từ','yêu cầu','',''),(62,'input','/´input/','động từ','nhập vào, đưa vào','',''),(63,'output','/ˈaʊtpʊt/','động từ','ra , đưa ra ','',''),(64,'packet','/\'pækit/','danh sách','gói ','',''),(65,'perform','/pəˈfɔːm/','ngoại động từ','tiến hành , thực hiện','',''),(66,'port','/pɔːt/','danh từ','cổng','',''),(67,'priority','/praɪˈɒrəti/','danh từ','sự ưu tiên','',''),(68,'protocol','/ˈprəʊtəkɒl/','danh từ','giao thức','',''),(69,'provide','/prəˈvaɪd/','động từ','cung cấp','',''),(70,'quality','/ˈkwɒləti/','danh từ','chất lượng','',''),(71,'quantity','/ˈkwɒntəti/','danh từ','số lượng','',''),(72,'rapid','/ˈræpɪd/','tính từ','nhanh chóng , mau lẹ','',''),(73,'replace','/rɪˈpleɪs/','ngoại động từ','thay thế ','',''),(74,'research','/rɪˈsɜːtʃ/','danh từ','sự nghiên cứu','',''),(75,'resource','/ri\'sɔ:rs/','danh từ','nguồn , tài nguyên','',''),(76,'respond','/rɪˈspɒnd/','ngoại động từ','hưởng ứng , phản hồi','',''),(77,'ribbon','/ˈrɪbən/','danh từ','dải ruy băng','',''),(78,'schedule','/ˈskedʒuːl/','danh từ','kế hoạch làm việc','',''),(79,'signal','/\'signəl/','danh từ','tín hiệu , dấu hiệu','',''),(80,'similar','/ˈsɪmələ(r)/','tính từ','giống nhau','',''),(81,'simultaneous','/ˌsɪmlˈteɪniəs/','tính từ','đồng thời ','',''),(82,'solution','/səˈluːʃn/','danh từ','sự giải quyết, giải pháp','',''),(83,'storage','/ˈstɔːrɪdʒ/','danh từ','sự lưu trữ , cất giữ','',''),(84,'substantial','/səbˈstænʃl/','tính từ',' thực tế , thực chất','',''),(85,'subtraction','/səbˈtrækʃn/','danh từ','phép trừ','',''),(86,'switch','/switʃ/','danh từ','công tắc','',''),(87,'technology','/tekˈnɒlədʒi/','danh từ','công nghệ','',''),(88,'text','/tekst/','danh từ','văn bản','',''),(89,'tiny','/ˈtaɪni/','tính từ','nhỏ bé','',''),(90,'transmit','/trænsˈmɪt/','ngoại động từ','truyền , phát','',''),(91,'analysis','/ə\'næləsis/','danh từ','sự phân tích','',''),(92,'available','/ə\'veɪləbl/','tính từ','sẵn có','',''),(93,'compatible','/kәm’pætәbl/','tính từ','tương thích','',''),(94,'consultant','/kən\'sʌltənt/','danh từ','tư vấn viên','',''),(95,'convenience','/kən\'vi:njəns/','danh từ','sự tiện lợi','',''),(97,'function','/ˈfʌŋkʃən/','danh từ','hàm ','',''),(98,'mathematical','/¸mæθi´mætikl/','tính từ','toán học','',''),(99,'pulse','/pʌls/','danh từ','xung nhịp','',''),(100,'a','a','a','a','a','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\a.jpg'),(101,'abacuss','/ˈæbəkəs/','danh từ','bàn tính','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Audio\\abacus.mp3','C:\\Users\\votun\\Documents\\NetBeansProjects\\JavaApplication1\\src\\Image1\\abacus.jpg');
/*!40000 ALTER TABLE `dic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `Code` int(11) NOT NULL,
  `Từ` varchar(45) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (0,'addition',55),(0,'capability',56),(0,'abacus',57),(0,'customer',59),(0,'abstract',60),(0,'data',61),(0,'database',62),(0,'background',63),(0,'configuration',64),(0,'application',65),(0,'address',66),(0,'binary',67),(0,'equipment',68),(0,'a',69),(0,'component',70),(0,'computer',71);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likee`
--

DROP TABLE IF EXISTS `likee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likee` (
  `code` int(11) NOT NULL,
  `Từ` varchar(45) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likee`
--

LOCK TABLES `likee` WRITE;
/*!40000 ALTER TABLE `likee` DISABLE KEYS */;
INSERT INTO `likee` VALUES (0,'addition',15),(0,'capability',16),(0,'binary',18);
/*!40000 ALTER TABLE `likee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 14:08:40
