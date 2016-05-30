-- MySQL dump 10.13  Distrib 5.6.28-ndb-7.4.10, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	5.6.28-ndb-7.4.10-cluster-gpl

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apeidoPaterno` varchar(20) DEFAULT NULL,
  `apeidoMaterno` varchar(20) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `codigoPostal` char(5) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Pepe ','Otriz','Guadalupeno','6131365874','Bustamante #7854','95632','Tehotihuacan','Estado de Mexico'),(2,'Juan','Pacheco','Bolivar','6163695425','Juan Escutia #56421','56891','Guadalajara','Jalisco'),(3,'Daniel','Ceniceros','Uribe','6143455035','Juan Fonte #3604','31203','Chihuahua','Chihuahua'),(4,'Luis','Baeza','Contreras','616354856','Calle Bolivar #5689','32568','Delicias','Chihuahua'),(5,'Carolina','Alvarez','Curiel','6145897256','Fernando de Borja #304','31115','Chihuahua','Chihuahua'),(6,'Sylvia','Borunda','Sepulveda','3216589785','Aguacata #9658','56789','Merida','Yucatan'),(7,'Alberto','Herrera','Corral','8457985236','Misioneros #8521','69788','Puebla','Puebla'),(8,'Alfonso','Perez','Lopez','5169876543','Arena #852','14368','Hermosillo','Sonora'),(9,'Rebeca','Caballero','Rubio','8163259845','Heroes #4796','25874','Leon','Guanajuato'),(10,'Valeria','Campos','Villa','9638527452','Encino #5241','96745','Aguascalientes','Aguascalientes'),(11,'Ivan','Cisneros','Pollito','9647258545','Pistolas #8512','75368','Torreon ','Coahuila'),(12,'Jorge ','Olivas','Vegano','5168964532','Marte #8523 A','96374','Durango','Durango'),(13,'Jacobo','Garcia','Palacios','6148523456','Milagro #8456','31856','Chihuahua','Chihuahua'),(14,'Octavio','Sanchez','Espino','9643571278','Cebolla #789-96','74163','Monterrey','Nuevo Leon'),(15,'Alvaro','Loera','Garcia','3216549887','Frederic Chopin #9634','71935','Monte Morelos','Nuevo Leon'),(16,'Oscar','Villareal','Villalobos','7894561237','Bustamante #8794','12379','Cancun','Quintana Roo'),(17,'Veronica','Norte','Olivas','1597534286','JM Ratkay','75315','Veracruz','Veracruz'),(18,'Miguel Angel','Corral','Barraza','6195781459','Tracalosa Street #4852','84953','Tehotihuacan','Estado de Mexico'),(19,'3','ball','mty','9518526413','Intentalo #852','96374','Chilpancingo','Guerrero'),(20,'Ernesto','Lopez','Barraza','6548942356','Pueblo Paleta # 7426','56489','Zapopan','Jalisco'),(21,'Armando','Palacios ','Grande','9637418552','Ash Ketchum #8523','74196','Ensenada','Baja California'),(22,'Frank ','Underwood','','6348529674','Pennsylvania Ave #1600','20500','Washington','DC'),(23,'Juan','Zamboni','Portero','6257459685','Juan Alvarez #4578','30060','Merida','Yucatan'),(24,'Pedro','Infante','Urias','5551234578','calle #5874','85469','Monterrey','Nuevo Leon'),(25,'Joaquin ','Olguera','Ramirez','5873697418','Otomi #4567','85369','Chipancingo','Oaxaca'),(26,'Pepe','Toro','Ortiz','6142548495','Juan Escutia # 5235','56254','Chipanchingo','Coahila');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultas` (
  `numeroConsulta` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) DEFAULT NULL,
  `idDoctor` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `diagnostico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`numeroConsulta`),
  KEY `idCliente` (`idCliente`),
  KEY `idDoctor` (`idDoctor`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`idDoctor`) REFERENCES `doctores` (`idDoctor`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,1,5,'2016-03-01','InfecciÃ³n en la Garganta'),(2,8,7,'2015-10-25','Hueso roto de la rodilla'),(3,22,3,'2014-12-07','Bomito y Nauceaz (probable embarazo), hacer prueba de sangre'),(4,18,5,'2016-04-16','Infeccion en el oido'),(5,25,1,'2016-02-29','Diarrea por infeccion en el estomago'),(6,4,4,'2016-05-13','Le duele la cola, posibles lombices en el intestino delgado'),(7,9,5,'2016-04-30','Tiene cancer. Le quedan 3 dias de vida'),(8,10,3,'2016-05-12','No tiene nada. Queria faltar a la escuela nomas'),(10,24,1,'2016-05-08','Le duele la cabeza, tiene migrana'),(11,11,2,'2016-03-10','Herida de bala en la pierna'),(12,21,3,'2016-01-22','Cataratas en los ojos'),(13,20,7,'2016-05-19','Se rompio 143 Huesos, x-Ray recomendado por 5 meses en todos lados\r\n'),(14,7,4,'2015-11-12','Dedo indice izquierdo quebrado'),(15,15,6,'2016-01-01','Le huelen los pies nadamas, que se bane'),(16,24,7,'2016-05-04','Hemorroides, Tomar nixon por 2 semanas '),(17,13,6,'2016-04-02','Tiene 6 dedos en el pie derecho'),(18,16,1,'2016-02-12','Quemaduras de 3er grado en todo el cuerpo'),(19,7,7,'2016-05-16','Retencion de liquidos'),(20,15,6,'2016-04-30','Dolor de estomago por comer mucho. Pepto'),(21,5,6,'2016-01-28','Nada, no queria ir a la escuela y fingio dolor'),(22,24,7,'2016-05-07','Muerte por sobredosis de crack'),(23,22,5,'2016-04-26','Se partio el craneo ,Poner curitas en toda la cabeza'),(24,3,3,'2016-05-01','Embarazo, Tomar acido folico todos los dias'),(25,8,5,'2016-03-09','Estres, Tomar cerveza mas seguido'),(26,15,4,'2016-04-29','Le pega su esposa, Muchos huevos crudos en el desayuno '),(27,2,7,'2016-01-14','Deshidratacion por maraton guadalupe-reyes'),(28,8,6,'2016-03-26','Trauma posparto'),(29,23,4,'2016-04-25','Mal aliento, Lavarse los dientes '),(30,10,1,'2016-03-02','Dolor de pulmon por resfriado ');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Medicamento',1),(2,'Medicamento',2),(3,'Medicamento',3),(4,'Medicamento',4),(5,'Medicamento',5),(6,'Medicamento',6),(7,'Medicamento',7),(8,'Medicamento',8),(9,'Medicamento',9),(10,'Medicamento',10),(11,'Medicamento',11),(12,'Medicamento',12),(13,'Medicamento',13),(14,'Medicamento',14),(15,'Medicamento',15),(16,'Medicamento',16),(17,'Medicamento',17),(18,'Medicamento',18),(19,'Medicamento',19),(20,'Medicamento',20),(21,'Medicamento',21),(22,'Medicamento',22),(23,'Medicamento',23),(24,'Medicamento',24),(25,'Medicamento',25),(26,'Medicamento',26),(27,'Medicamento',27),(28,'Medicamento',28),(29,'Medicamento',29),(30,'Medicamento',30),(31,'Medicamento',31),(32,'AseoPersonal',32),(33,'AseoPersonal',33),(34,'Instrumento',34),(35,'Aseo Personal',35),(36,'Comestible',36),(37,'Medicamento',37),(38,'Medicamento',38),(39,'Comestible',39),(40,'Comestible',40),(41,'Medicamento',41),(42,'Instrumento',42),(43,'Comestible',43),(44,'Medicamento',44),(45,'Medicamento',45),(46,'Comestible',46),(47,'Medicamento',47),(48,'Comestible',48),(49,'Instrumento',49),(50,'Comestible',50),(51,'Medicamento',51),(52,'Medicamento',52),(53,'Medicamento',53),(54,'Medicamento',53),(55,'Medicamento',54),(56,'Medicamento',55),(57,'Medicamento',56),(58,'Medicamento',57),(59,'Medicamento',59),(60,'Aseo Personal',60),(61,'Aseo Personal',61),(62,'Aseo Personal',62),(63,'Comestible',63),(64,'Aseo Personal',64),(65,'Instrumento',65),(66,'Aseo Personal',66);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctores`
--

DROP TABLE IF EXISTS `doctores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctores` (
  `idDoctor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apeidoPaterno` varchar(20) DEFAULT NULL,
  `apeidoMaterno` varchar(20) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDoctor`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `doctores_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctores`
--

LOCK TABLES `doctores` WRITE;
/*!40000 ALTER TABLE `doctores` DISABLE KEYS */;
INSERT INTO `doctores` VALUES (1,'Simi','Lechuga','Tomate','6142875309','Siempre viva #5847',28),(2,'Aby','Franco','De la O','5559088745','KamuDamu #9539',29),(3,'Alberto','Mejia','Paquot','8935743928','Ocotillos #9503',30),(4,'DjArm','Mancha','Dancha','3827582596','MiamiParty #4583',31),(5,'Balam','Parma','Acevedo','8949472965','ArrazateMiPrima@hotmail.com',32),(6,'Alberto','Tasabia','Fresnillo','9392853958','Elizondo St #231',33),(7,'Cesar','Marquez','Zaragoza','8934638572','Tecnologico #959',34);
/*!40000 ALTER TABLE `doctores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apeidoPaterno` varchar(20) DEFAULT NULL,
  `apeidoMaterno` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `seguroSocial` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `puesto` varchar(20) DEFAULT NULL,
  `turno` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Miguel Angelo','Gutierrez','Guzman','ElchapoXdXdLol@yahoo.mx',62451,254,'Limpieza','Nocturno'),(2,'Johnny ','Deep','Deeper','jdd@gmail.com',2747,896,'General','Matutino'),(3,'Tracka','Skate','Otomi','trakaloso@yahoo.com',2845,950,'Limpieza','Matutino'),(4,'Hector','Himself','Treina','yo30Poke@hotmail.com.mx',945,9502,'General','Nocturno'),(5,'Jannyn ','Diaz','Luna','Jano32@gmail.com',894,8492,'Limpieza','Nocturno'),(6,'Elias','Garcia','Vargas','Chavillo@gmail.com',840,5693,'Limpieza','Nocturno'),(7,'Ricardo','Loya','Arjona','RichieAr@yahoo.mx',9304,938,'General','Vespertino'),(8,'Carlos','Garcia','Casas','elhouses@gmail.com',739,5379,'Limpieza','Vespertino'),(9,'Javier','Almanza','Guzman','elChapoXdXdLol2@gmail.com',243,3849,'General','Matutino'),(10,'Hector Alberto','Bustillos','Gonzalez','hector.bustillos.9@gmail.com',739,6479,'General','Vespertino'),(11,'Ramiro','Nomeacuerdo','Diaz','sinverDenver@yahoo.com',749,6487,'Limpieza','Vespertino'),(12,'Leonardo','Di','Caprio','oscar@yahoo.com',492,9430,'Limpieza','Nocturno'),(13,'Alan','Musk','Gonzalez','teslam@gmail.com',3892,849,'General','Vespertino'),(14,'melissa','canez','smith','mrsmith@yahoo.us',389,8394,'Limpieza','Matutino'),(15,'Alfonso','Barroso','Mozxo','XdXdMBa@gmail.com',849,8849,'General','Matutino'),(16,'John Jose','Sanchez','Arriola','ElStunt@gmail.com',874,7483,'General','Vespertino'),(17,'Victoria','Celayo','Ramos','laRussia@gmail.com.mx',849,8493,'General','Nocturno'),(18,'Heber Eduardo','Ortiz','Chung','Jackie45@yahoo.com',8490,748,'General','Nocturno'),(19,'Priscila Guadalupe','Villarreal','Corona','bebeConsentido.@yahoo.com',839,8493,'General','Vespertino'),(20,'Luisa Fernanda','Villalobos','Garcia','Chopana@gmail.com',839,9430,'General','Matutino'),(21,'Carlos','Garcia','Vargas','Choflan@gmail.com',943,8499,'General','Matutino'),(22,'Daniel','Villarreal','Corona','DanyDown@gmail.com',845,6743,'Limpieza','Nocturno'),(23,'Maria Fernanda','Italia','Roma','moxa1000@yahoo.com',839,8743,'Limpieza','Nocturno'),(24,'Jesus Jose','Sanchez','Muhamed','ConLosTerroristas@yahoo.com',666,8394,'General','Vespertino'),(25,'Adriana','Chinolla','Strump','estrama@gmail.com',834,7493,'Limpieza','Vespertino'),(26,'Sebastian','De la','Riva','RiveraMaya@yahoo.com',893,7938,'General','Nocturno'),(27,'Chiquillo','Loco','Locochon','Loxula5000@gmail.com',123,9876,'Nadie','Nocturno'),(28,'Simi','Lechuga','Tomate','Chilaca880@gmail.com',783,7390,'Doctor','Nocturno'),(29,'Aby ','Franco','De la O','WhoisThere@yahoo.com.mx',738,7389,'Doctor','Vespertino'),(30,'Alberto','Mejia ','Paquot','RicosSomos@yahoo.com',294,8930,'Doctor','Nocturno'),(31,'DjArm','Mancha','Dancha','Dj1@yahoo.com',907,2341,'Doctor','Vespertino'),(32,'Balam','Parma ','Acevedo','CuidaElArbolMota@gmail.com',429,4890,'Doctor','Matutino'),(33,'Alberto','Tasabia','Fresnillo','penolers@yahoo.com.mx',257,9294,'Doctor','Matutino'),(34,'Cesar ','Marquez','Zaragoza','lehcelala@gmail.com',849,7389,'Doctor','Nocturno');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofertas` (
  `idOfertas` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) DEFAULT NULL,
  `oferta` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idOfertas`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` VALUES (1,1,25,'2016-03-03'),(2,8,32,'2016-05-13'),(3,9,10,'2016-04-08'),(4,13,15,'2016-04-29'),(5,14,20,'2016-05-04'),(6,17,30,'2016-05-19'),(7,20,25,'2016-04-28'),(8,22,18,'2016-05-07'),(9,25,30,'2016-05-17'),(10,28,80,'2016-05-01'),(11,30,99,'2016-05-08'),(12,36,30,'2016-05-28'),(13,40,20,'2015-11-30'),(14,42,15,'2016-05-04'),(15,45,10,'2016-05-14'),(16,58,5,'2016-05-19'),(17,38,100,'2016-05-26'),(18,65,75,'2016-07-01'),(19,56,60,'2016-05-21');
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Pepto bismol',80,20),(2,'Ciprofloxacino',25,8),(3,'Paracetamol',35,45),(4,'Doxicilicla',54,53),(5,'Geroprazol',55,37),(6,'Aciclovir',84,22),(7,'Amikasin',120,35),(8,'Anforeticina B',280,99),(9,'Clorenfacicol',88,150),(10,'ACIDO ACETIL SALICILICO',350,10),(11,'Etionamide',55,10),(12,'Morfina',600,9),(13,'Pentamidina',95,24),(14,'Viagra',689,39),(15,'Vancomicina',89,15),(16,'Aspirina',80,195),(17,'Estreptomicina',63,29),(18,'Penicilamina',675,51),(19,'Rifampicina',160,57),(20,'Antineoplasticos',399,15),(21,'Azitromicina',529,52),(22,'Amoxicilina',99,85),(23,'Cloramfenicol',490,52),(24,'Ampicilina',15,150),(25,'Doxiciclina',237,5984),(26,'Cafazolina',25,30),(27,'Cefoxitin',50,23),(28,'Ceflazidime',119,45),(29,'Cefuroxima',69,39),(30,'Eritromicina',52,154),(31,'Clidamicina',259,50),(32,'Condones Similares',5,5060),(33,'Condones Troyan',350,500),(34,'Prueba de embarazo economica',45,189),(35,'Condones PlayBoy',200,360),(36,'Sabritas',11,35),(37,'Alcohol Etilico',30,85),(38,'Pomada de la Campana',59,150),(39,'Doritos Nacho Preparados',12,45),(40,'Suavicremas',8,86),(41,'Ice Crem Foot',249,15),(42,'Inyecciones ',15,400),(43,'Pastillas Halls',10,90),(44,'Unguento Anal',450,5),(45,'Axepcia emergencias',250,8),(46,'Coca-cola 500ml',12,50),(47,'Vitacilina ',15,400),(48,'Agua Ciel 1lt',10,486),(49,'Supocitorios',25,150),(50,'Suerox',30,82),(51,'Mecambrea',45,25),(52,'Vitacilina bebe',90,63),(53,'Vitamina C',85,74),(54,'Vitamina A',14,50),(55,'Esteroides',900,52),(56,'Pastilla quita cancer',10000,1),(57,'Nikzon',250,10),(58,'Acepcia Crema',150,20),(59,'X-Ray',179,20),(60,'Shampo Tio Nacho',400,52),(61,'Shampoo Piojin',115,20),(62,'Desodorante Old-Spice',60,85),(63,'Paleta Vitamina C',9,250),(64,'Desodorante para Pies',81,52),(65,'Juguete Erotico',400,3),(66,'PaÃ±ales Adulto',59,120);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursales` (
  `idSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `numeroEmpleado` int(11) NOT NULL,
  `telefono` char(10) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,3,'6147289308','Universidad # 7268'),(2,4,'6972568748','Av. Tecnologico #8548'),(3,6,'4204243472','Sativa #8300'),(4,3,'6142349867','Fco. Villa #8392'),(5,5,'8296496283','Paracetamol #9437'),(6,8,'6141381449','Pereferico de la Juventud #7-A'),(7,7,'7266492746','Ortiz Mena #8712'),(8,4,'6144239867','Americas #5418'),(9,2,'648937563','Julion Alvarez #829'),(10,3,'8375846734','Juan Escutia #839'),(11,5,'6141847346','Av. Colegio Militar #4548'),(12,19,'0000000000','En el FashionMAll'),(13,4,'6149205749','PaseleGracias #8930'),(14,3,'7638930475','Leonardo Bravio #900'),(15,1,'6143895763','En la Liber');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventamaster`
--

DROP TABLE IF EXISTS `ventamaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventamaster` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idCliente` (`idCliente`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `ventamaster_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `ventamaster_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventamaster`
--

LOCK TABLES `ventamaster` WRITE;
/*!40000 ALTER TABLE `ventamaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventamaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventaproduc`
--

DROP TABLE IF EXISTS `ventaproduc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventaproduc` (
  `idVenta` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `ventaproduc_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `ventamaster` (`idVenta`),
  CONSTRAINT `ventaproduc_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventaproduc`
--

LOCK TABLES `ventaproduc` WRITE;
/*!40000 ALTER TABLE `ventaproduc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventaproduc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-24  7:59:01
