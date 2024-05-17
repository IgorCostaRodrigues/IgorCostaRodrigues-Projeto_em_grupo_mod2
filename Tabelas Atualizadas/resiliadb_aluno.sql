-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resiliadb
-- ------------------------------------------------------
-- Server version	8.0.37

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
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sobrenome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `id_turma` int DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_curso` int DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_turma` (`id_turma`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (201,'Antonio Juevan','Lourenço da Silva','antonio@example.com','444444444',2,'Aprovado',1),(202,'Carolina','Rocha Conrado','carolina@example.com','555555555',2,'Aprovado',2),(203,'Davi','Justino Marques Couto','davi@example.com','666666666',2,'Aprovado',1),(204,'Diego','Carvalho Feitosa','diego1@example.com','777777777',2,'Aprovado',2),(205,'Diego','Fernando Reis Batista','diego2@example.com','888888888',2,'Aprovado',1),(206,'Diego','Marques da Silva','diego3@example.com','999999999',2,'Aprovado',2),(207,'Eloise','Monteiro Faria','eloise@example.com','1010101010',2,'Aprovado',1),(208,'Emanuella','Vieira Brito','emanuella@example.com','1111111111',2,'Aprovado',2),(209,'Gabriela','Rocha Conrado','gabriela@example.com','1212121212',2,'Aprovado',1),(210,'Guilherme','Moraes Ferreira','guilherme@example.com','1313131313',2,'Aprovado',2),(211,'Guttenberg','Berto dos Santos Junior','guttenberg@example.com','1414141414',2,'Aprovado',1),(212,'Igor','Costa Rodrigues de Mendonça','igor@example.com','1515151515',2,'Aprovado',2),(213,'Isadora','Grigorio Maiolino','isadora@example.com','1616161616',2,'Aprovado',1),(214,'João','Guilherme dos Santos Mello','joao@example.com','1717171717',2,'Aprovado',2),(215,'KARLANA','CORDEIRO LIMA','karlana@example.com','1818181818',2,'Aprovado',1),(216,'Larissa','de Faria Abrahão','larissa@example.com','1919191919',2,'Aprovado',2),(217,'Leonardo','Xavier Garcia','leonardo@example.com','2020202020',2,'Aprovado',1),(218,'Luis','guilherme pereira pacheco','luis@example.com','2121212121',2,'Aprovado',2),(219,'Matheus','Lisboa Barros','matheus1@example.com','2323232323',2,'Aprovado',1),(220,'Matheus','Silva Mendoça','matheus2@example.com','2424242424',2,'Aprovado',2),(221,'Nilton','Cesar da Costa Silva','nilton@example.com','2525252525',2,'Aprovado',1),(222,'Patrick','Vieira Fortunato','patrick@example.com','2626262626',2,'Aprovado',1),(223,'Raphaela','Luzia Vargas Marcolino','raphaela@example.com','2727272727',2,'Aprovado',1),(224,'Tássio Felipe','Rodrigues dos Santos','tassio@example.com','2828282828',2,'Aprovado',2),(225,'Thiago','jaime barbosa de souza dos santos','thiago@example.com','2929292929',2,'Aprovado',1),(226,'Vitória','da Silva Tavares','vitoria@example.com','3030303030',2,'Aprovado',2),(227,'Washington','Luis Pessoa Ligel','washington@example.com','3131313131',1,'Aprovado',1),(228,'Ysmael','Marques de Carvalho','ysmael@example.com','3232323232',1,'Aprovado',2),(229,'Ana','Silva','ana@example.com','111111111',2,'Aproovado',1),(230,'Bruno','Oliveira','bruno@example.com','222222222',1,'Aprovado',2),(231,'Carlos','Santos','carlos@example.com','333333333',1,'Aprovado',1),(232,'Daniela','Pereira','daniela@example.com','444444444',1,'Aprovado',2),(233,'Eduardo','Martins','eduardo@example.com','555555555',2,'Aprovado',1),(234,'Fernanda','Almeida','fernanda@example.com','666666666',3,'Aprovado',2),(235,'Gabriel','Rodrigues','gabriel@example.com','777777777',1,'Aprovado',1),(236,'Helena','Costa','helena@example.com','888888888',1,'Aprovado',2),(237,'Isabela','Ferreira','isabela@example.com','999999999',2,'Aprovado',1),(238,'João','Ribeiro','joao@example.com','1010101010',2,'Aprovado',2),(239,'Karina','Gomes','karina@example.com','1111111111',1,'Aprovado',1),(240,'Luiz','Nascimento','luiz@example.com','1212121212',1,'Aprovado',2),(241,'Mariana','Carvalho','mariana@example.com','1313131313',2,'Aprovado',1),(242,'Nuno','Lopes','nuno@example.com','1414141414',3,'Evasao',2),(243,'Olivia','Mendes','olivia@example.com','1515151515',3,'Aprovado',1),(244,'Pedro','Freitas','pedro@example.com','1616161616',3,'Aprovado',1),(245,'Rafael','Faria','rafael@example.com','1717171717',2,'Aprovado',1),(246,'Sara','Teixeira','sara@example.com','1818181818',3,'Aproovado',1),(247,'Tiago','Pinto','tiago@example.com','1919191919',1,'Aprovado',1),(248,'Vitória','Oliveira','vitoria@example.com','2020202020',3,'Aprovado',2);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17  5:32:33
