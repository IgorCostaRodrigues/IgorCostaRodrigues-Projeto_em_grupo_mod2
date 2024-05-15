-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resiliadb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_turma` (`id_turma`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (201,'Antonio Juevan','Lourenço da Silva','antonio@example.com','444444444',8,'Aprovado'),(202,'Carolina','Rocha Conrado','carolina@example.com','555555555',7,'Evasao'),(203,'Davi','Justino Marques Couto','davi@example.com','666666666',5,'Aprovado'),(204,'Diego','Carvalho Feitosa','diego1@example.com','777777777',8,'Aprovado'),(205,'Diego','Fernando Reis Batista','diego2@example.com','888888888',5,'Aprovado'),(206,'Diego','Marques da Silva','diego3@example.com','999999999',6,'Aprovado'),(207,'Eloise','Monteiro Faria','eloise@example.com','1010101010',5,'Aprovado'),(208,'Emanuella','Vieira Brito','emanuella@example.com','1111111111',8,'Aprovado'),(209,'Gabriela','Rocha Conrado','gabriela@example.com','1212121212',5,'Aprovado'),(210,'Guilherme','Moraes Ferreira','guilherme@example.com','1313131313',7,'Evasao'),(211,'Guttenberg','Berto dos Santos Junior','guttenberg@example.com','1414141414',5,'Aprovado'),(212,'Igor','Costa Rodrigues de Mendonça','igor@example.com','1515151515',7,'Evasao'),(213,'Isadora','Grigorio Maiolino','isadora@example.com','1616161616',7,'Aprovado'),(214,'João','Guilherme dos Santos Mello','joao@example.com','1717171717',7,'Aprovado'),(215,'KARLANA','CORDEIRO LIMA','karlana@example.com','1818181818',5,'Aprovado'),(216,'Larissa','de Faria Abrahão','larissa@example.com','1919191919',6,'Aprovado'),(217,'Leonardo','Xavier Garcia','leonardo@example.com','2020202020',6,'Evasao'),(218,'Luis','guilherme pereira pacheco','luis@example.com','2121212121',6,'Evasao'),(219,'Matheus','Lisboa Barros','matheus1@example.com','2323232323',5,'Evasao'),(220,'Matheus','Silva Mendoça','matheus2@example.com','2424242424',5,'Aprovado'),(221,'Nilton','Cesar da Costa Silva','nilton@example.com','2525252525',7,'Evasao'),(222,'Patrick','Vieira Fortunato','patrick@example.com','2626262626',8,'Evasao'),(223,'Raphaela','Luzia Vargas Marcolino','raphaela@example.com','2727272727',5,'Evasao'),(224,'Tássio Felipe','Rodrigues dos Santos','tassio@example.com','2828282828',5,'Evasao'),(225,'Thiago','jaime barbosa de souza dos santos','thiago@example.com','2929292929',5,'Evasao'),(226,'Vitória','da Silva Tavares','vitoria@example.com','3030303030',7,'Evasao'),(227,'Washington','Luis Pessoa Ligel','washington@example.com','3131313131',8,'Aprovado'),(228,'Ysmael','Marques de Carvalho','ysmael@example.com','3232323232',7,'Aprovado'),(229,'Ana','Silva','ana@example.com','111111111',5,'Aprovado'),(230,'Bruno','Oliveira','bruno@example.com','222222222',6,'Aprovado'),(231,'Carlos','Santos','carlos@example.com','333333333',7,'Evasao'),(232,'Daniela','Pereira','daniela@example.com','444444444',8,'Aprovado'),(233,'Eduardo','Martins','eduardo@example.com','555555555',5,'Aprovado'),(234,'Fernanda','Almeida','fernanda@example.com','666666666',6,'Aprovado'),(235,'Gabriel','Rodrigues','gabriel@example.com','777777777',7,'Aprovado'),(236,'Helena','Costa','helena@example.com','888888888',8,'Evasao'),(237,'Isabela','Ferreira','isabela@example.com','999999999',5,'Evasao'),(238,'João','Ribeiro','joao@example.com','1010101010',6,'Evasao'),(239,'Karina','Gomes','karina@example.com','1111111111',7,'Aprovado'),(240,'Luiz','Nascimento','luiz@example.com','1212121212',8,'Evasao'),(241,'Mariana','Carvalho','mariana@example.com','1313131313',5,'Evasao'),(242,'Nuno','Lopes','nuno@example.com','1414141414',6,'Evasao'),(243,'Olivia','Mendes','olivia@example.com','1515151515',7,'Aprovado'),(244,'Pedro','Freitas','pedro@example.com','1616161616',8,'Aprovado'),(245,'Rafael','Faria','rafael@example.com','1717171717',5,'Aprovado'),(246,'Sara','Teixeira','sara@example.com','1818181818',6,'Aprovado'),(247,'Tiago','Pinto','tiago@example.com','1919191919',7,'Aprovado'),(248,'Vitória','Oliveira','vitoria@example.com','2020202020',8,'Evasao');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER log_status_aluno
AFTER UPDATE ON Aluno
FOR EACH ROW
BEGIN
    IF OLD.id_turma <> NEW.id_turma THEN
        INSERT INTO logaluno (id_aluno, id_turma_anterior, id_turma_nova)
        VALUES (NEW.id_aluno, OLD.id_turma, NEW.id_turma);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(100) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Desenvolvimento Web'),(2,'Análise de Dados');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilitador`
--

DROP TABLE IF EXISTS `facilitador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilitador` (
  `id_facilitador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_facilitador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitador`
--

LOCK TABLES `facilitador` WRITE;
/*!40000 ALTER TABLE `facilitador` DISABLE KEYS */;
/*!40000 ALTER TABLE `facilitador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logaluno`
--

DROP TABLE IF EXISTS `logaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logaluno` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_aluno` int(11) DEFAULT NULL,
  `status_anterior` varchar(20) DEFAULT NULL,
  `status_atual` varchar(20) DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id_aluno` (`id_aluno`),
  CONSTRAINT `logaluno_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logaluno`
--

LOCK TABLES `logaluno` WRITE;
/*!40000 ALTER TABLE `logaluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `logaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_modulo` varchar(100) NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_modulo`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `nome_turma` varchar(100) NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (5,'Turma A',1),(6,'Turma B',2),(7,'Turma C',1),(8,'Turma C',2);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'resiliadb'
--

--
-- Dumping routines for database 'resiliadb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15  9:47:25
