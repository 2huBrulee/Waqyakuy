-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Amazonpedia
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `animal_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conservation_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_td` char(68) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cry` char(68) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `size` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'tatu carreta','vulnerable','20b64b140d73d033dd058e19dd6a08f8028e9494f7cf809ea0dcc867b0bfff3a','','El tatú carreta o armadillo gigante (Priodontes maximus) está en situación vulnerable ya que, aunque tiene una población aparentemente generalizada, se le estima una disminución de su población debido a la périda de hábitat y a la caza como viene siendo habitual. ',80,120),(2,'Delfin rosado','vulnerable','20b64b140d73d033dd058e19dd6a08f8028e9494f7cf809ea0dcc867b0bfff4','','El delfín rosado (Inia geoffrensis), es un delfín de río considerado vulnerable según la IUCN. En Ecuador está catalogado como en peligro de extinción.Sin embargo es muy importante conservarlo ya que es la única especie de cetáceo que habita exclusivamente en aguas dulces de América .',80,120),(3,'Nutria gigante','vulnerable','12341234123412341234123412341234123412341234123412341234123412341234',NULL,'Las nutrias son mamíferos carnívoros de la familia de los mustélidos que comprende 13 especies dentro de 7 géneros, encontrándose nutrias por prácticamente todo el mundo. Sin embargo, algunas de ellas están amenazadas como es el caso de la nutria gigante.',10,30),(4,'boa constrictor','vulnerable','20b64b140d73d033dd058e19dd6a08f8028e9494f7cf809ea0dcc867b0bfff3a.jpg',NULL,'La boa constrictor (Boa constrictor) es una especie de serpiente de la familia de las boas (Boidae). Es una nativa de América, desde Argentina hasta el norte de México. Solo la subespecie Boa constrictor constrictor posee el final de su cola de un color rojizo (boa cola roja).\n\nVive en hábitats con poca cantidad de agua, como desiertos y sabana, a la vez que se la puede encontrar en bosques húmedos y terrenos de cultivo. Es un reptil tanto terrestre como arbóreo.',20,20),(5,'jaguar','casi amenazado','fa5bf879acb91bd614cfdbcaff2dc80acf09fcaa3a1cbc137deb406ce5978df9.jpg',NULL,'El jaguar, yaguar o yaguareté N 1​ (Panthera onca) es un carnívoro félido de la subfamilia de los Panterinos y género Panthera. Es la única de las cuatro especies actuales de este género que se encuentra en América. También es el mayor félido de América y el tercero del mundo, después del tigre (Panthera tigris) y el león (Panthera leo). Su distribución actual se extiende desde el extremo sur de Estados Unidos continuando por gran parte de América Central y Sudamérica hasta el norte y noreste de Argentina. Exceptuando algunas poblaciones en Arizona (suroeste de Tucson), esta especie ya ha sido prácticamente extirpada en los Estados Unidos desde principios de la década de 1900.',15,100),(6,'aguila harpia','casi amenazado','8ddd29a5a18b3228c9b3c9a152954669c691f6870e1139dbd3d90037b640b55d.jpg',NULL,'La arpía mayor,2​ águila harpía o simplemente harpía (Harpia harpyja) es una especie de ave accipitriforme de la familia Accipitridae que vive en la zona neotropical. Es el águila más grande del Hemisferio Occidental y del Hemisferio Austral, y la única especie del género Harpia. Su hábitat es el bosque lluvioso. No se reconocen subespecies.',12,15);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal_area`
--

DROP TABLE IF EXISTS `animal_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal_area` (
  `animal_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `animal_area_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`animal_area_id`),
  KEY `animal_area_animal_animal_id_fk` (`animal_id`),
  KEY `animal_area_area_area_id_fk` (`area_id`),
  CONSTRAINT `animal_area_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `animal_area_area_area_id_fk` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_area`
--

LOCK TABLES `animal_area` WRITE;
/*!40000 ALTER TABLE `animal_area` DISABLE KEYS */;
INSERT INTO `animal_area` VALUES (4,3,2),(5,1,3),(6,2,4),(1,2,5),(2,1,6),(3,3,7);
/*!40000 ALTER TABLE `animal_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` char(68) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `size` float DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weather` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'manu',NULL,'2017-11-12 11:49:29',50,'parque nacional','selvatico'),(2,'tingo maria',NULL,'2017-11-12 11:49:32',40,'parque nacional','selvatico'),(3,'tambopata',NULL,'2017-11-12 11:49:33',30,'parque nacional','selvatico');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_region`
--

DROP TABLE IF EXISTS `area_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_region` (
  `area_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_region_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`area_region_id`),
  KEY `area_region_area_area_id_fk` (`area_id`),
  KEY `area_region_Region_region_id_fk` (`region_id`),
  CONSTRAINT `area_region_Region_region_id_fk` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`),
  CONSTRAINT `area_region_area_area_id_fk` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_region`
--

LOCK TABLES `area_region` WRITE;
/*!40000 ALTER TABLE `area_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carriers`
--

DROP TABLE IF EXISTS `carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carriers` (
  `carrier_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `transmission` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vb_id` int(11) NOT NULL,
  PRIMARY KEY (`carrier_id`),
  KEY `carriers_virus_bacteria_vb_id_fk` (`vb_id`),
  KEY `carriers_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `carriers_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `carriers_virus_bacteria_vb_id_fk` FOREIGN KEY (`vb_id`) REFERENCES `virus_bacteria` (`vb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carriers`
--

LOCK TABLES `carriers` WRITE;
/*!40000 ALTER TABLE `carriers` DISABLE KEYS */;
/*!40000 ALTER TABLE `carriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characteristic`
--

DROP TABLE IF EXISTS `characteristic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characteristic` (
  `char_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`char_id`),
  KEY `characteristic_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `characteristic_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characteristic`
--

LOCK TABLES `characteristic` WRITE;
/*!40000 ALTER TABLE `characteristic` DISABLE KEYS */;
INSERT INTO `characteristic` VALUES (1,1,'Tiene numerosísimos nombres como son Tatú Carreta (Argentina, Paraguay); Pejichi (Bolivia); Tatú Canastra, Tatú-açu (Brasil); Yungunturu, Carachupa Mamán (Perú); Tatú Gigante (Ecuador); Reuzengordeldier, Granmankapasi (Surinam); Tatú-guazú (Guatemala).Si se llama armadillo gigante es por que es la especie de armadillo más grande que existe actualmente. Mide entre 75 y 100 cm, pudiendo medir la cola hasta 50 cm. Pesan hasta 60 kg en cautividad, y en su medio natural se tienen datos de entre 18,7 y 32,3 kg.','caracteristicas'),(2,2,'El delfín rosado (Inia geoffrensis), es un delfín de río considerado vulnerable según la IUCN. En Ecuador está catalogado como en peligro de extinción.Sin embargo es muy importante conservarlo ya que es la única especie de cetáceo que habita exclusivamente en aguas dulces de América .','caracteristicas'),(3,4,'Miden entre 0,5 y 4 m, dependiendo de la subespecie y el sexo del animal, siendo las hembras normalmente mayores que los machos. El mayor ejemplar en cautividad es una hembra de 5,5 m de Surinam que se encuentra en el Zoo de San Diego.\n\nPresenta una atractiva coloración que consiste en superficies dorsales de tonos rojizos que quedan dentro de un fondo que puede ser blanco, rosado, marrón o dorado, dependiendo de la subespecie o los cruzamientos llevados a cabo en cautividad. Durante los días próximos a la muda, las serpientes adquieren una piel de color grisáceo poco vistosa y sus ojos se vuelven de color blanco cremoso.\n\nEn la naturaleza es raro que vivan más de 20 años, aunque en cautividad pueden alcanzar los 30 con relativa facilidad. En el Jardín Zoológico de Filadelfia se registró el caso de una Boa constrictor que llegó a vivir 40 años 3 meses y 14 días.\n\n','caracteristicas'),(4,5,'Panthera onca está calificado en la Lista Roja de la UICN como «especie casi amenazada» y su número está en declive.1​ Entre los factores que lo amenazan se incluyen la pérdida y la fragmentación de su hábitat. A pesar de que el comercio internacional de ejemplares de esta especie o sus partes está prohibido,8​ este félido muere con frecuencia a mano de los humanos, especialmente en conflictos con ganaderos. Aunque reducida, su distribución geográfica continúa siendo amplia. A lo largo de la historia, esta distribución le ha otorgado un lugar prominente en la mitología de numerosas culturas indígenas americanas, como los mayas y los aztecas.','caracteristicas'),(5,6,'Es la rapaz más poderosa; las dimensiones promedio de la hembra de la arpía mayor son 100 cm de largo, 200 cm de envergadura y un peso de 9 kg. El macho tiene dimensiones más pequeñas: hasta 196 cm de envergadura y un peso aproximado de 8 kg. Es una de las águilas más grandes del mundo, siendo superada en envergadura (distancia entre los extremos de las alas) solamente por el águila monera (Pithecophaga jefferyi), el águila marcial (Polemaetus bellicosus, 206.5 cm), el águila real (Aquila chrysaetos, 207 cm), el águila audaz (Aquila audax, 210 cm), el pigargo gigante (Haliaeetus pelagicus, 212.5 cm) y el pigargo europeo (Haliaeetus albicilla, 218.5 cm), aunque generalmente el cuerpo de la arpía mayor es más robusto y más largo que el de las anteriores. Los adultos de ambos géneros tienen plumaje de similar color, que consiste de tres tonalidades básicas: gris en la cabeza; gris muy oscuro, casi negro en algunos ejemplares, en la doble cresta en la cabeza, el cuello, parte superior del cuerpo y de las alas; y gris muy claro, casi blanco, en la parte inferior del cuerpo y de las alas. En las patas tiene unas líneas oscuras. En la cola tiene franjas del gris oscuro y del gris muy pálido. El pico es gris muy oscuro. La piel en las patas es amarilla clara. Las uñas son de color gris muy oscuro. Posee un pico fuerte y garras que pueden alcanzar los 15 cm de largo. Pueden vivir hasta los 40 años. Sus ojos tienen el iris color chocolate y en ocasiones este puede ser de color amarillo. Existen diferencias entre las aves jóvenes y adultas: las últimas presentan una banda ancha negra. Estas aves forman parejas de por vida.','caracteristicas'),(6,3,'Las nutrias son mamíferos carnívoros de la familia de los mustélidos que comprende 13 especies dentro de 7 géneros, encontrándose nutrias por prácticamente todo el mundo. Sin embargo, algunas de ellas están amenazadas como es el caso de la nutria gigante.Esta es una de las nutrias más amenazadas de Latinoamérica ya que ha sido severamente perseguida por su piel y ya se encuentra localmente extinta en muchas zonas de su distribución original. ','caracteristicas');
/*!40000 ALTER TABLE `characteristic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diet` (
  `diet_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `food_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`diet_id`),
  KEY `diet_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `diet_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet`
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
INSERT INTO `diet` VALUES (1,4,'murcielagos','Sienten especial predilección por los murciélagos, a los que capturan desde los árboles en pleno vuelo. Mata a sus presas mediante constricción hasta estrangularlas.'),(2,5,'mamiferos diurnos','Al igual que el resto de los félidos, es un carnívoro estricto, esto es, que se alimenta exclusivamente de carne.37​ Es un cazador solitario y oportunista y su dieta abarca más de 80 especies diferentes.29​44​ Prefiere presas grandes, fundamentalmente mamíferos diurnos, como capibaras, tapires, pecaríes y en ocasiones ciervos, pero también caza caimanes e incluso anacondas adultas, aunque incluye entre sus presas prácticamente de todas las especies pequeñas que pueda capturar, como ranas, agutíes, aves grandes, peces, puercoespines o tortugas;29​37​60​61​ un estudio llevado a cabo en la Reserva natural de Cockscomb de Belice reveló que los ejemplares que vivían en la zona tenían una dieta compuesta principalmente por armadillos y pacas.56​ En algunas zonas, como Brasil y Venezuela, en su hábitat natural también se cría ganado, por lo que algunos individuos pueden especializarse en la captura de animales domésticos.41​'),(3,6,'mamiferos','Ocupa el dosel superior de los bosques, y acostumbra estar cerca de los «barreros» (sitios con sal aflorante), donde se encuentran varias especies de animales, sobre todo mamíferos, que constituyen parte de su dieta. '),(4,1,'hormigas','Se alimenta de hojas y hormigas'),(5,2,'peces de rio ','estos delfines se alimentan de los peces que conviven con ellos en los rios'),(6,3,'carnivoros','Las nutrias son mamíferos carnívoros de la familia de los mustélidos que comprende 13 especies dentro de 7 géneros, encontrándose nutrias por prácticamente todo el mundo.');
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
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
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `donation_amount` float NOT NULL,
  `date` datetime NOT NULL,
  `visit_id` int(11) NOT NULL,
  PRIMARY KEY (`donation_id`),
  KEY `donation_visit_visit_id_fk` (`visit_id`),
  CONSTRAINT `donation_visit_visit_id_fk` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitat`
--

DROP TABLE IF EXISTS `habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitat` (
  `habitat_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `svg` char(68) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`habitat_id`),
  KEY `habitat_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `habitat_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat`
--

LOCK TABLES `habitat` WRITE;
/*!40000 ALTER TABLE `habitat` DISABLE KEYS */;
INSERT INTO `habitat` VALUES (1,4,'Es una nativa de América, desde Argentina hasta el norte de México.',NULL),(2,5,'El hábitat de P. onca incluye las selvas húmedas de Centro y Sudamérica, zonas húmedas abiertas y de forma estacional inundadas, y praderas secas. De entre estos hábitats, prefiere el bosque denso;44​ este félido ha perdido terreno más rápidamente en las regiones más secas, como la pampa argentina o las praderas áridas de México y el suroeste de los Estados Unidos.1​ Puede vivir en bosques tropicales, subtropicales y caducifolios secos. Está estrechamente relacionado con el agua y a menudo prefiere vivir al lado de ríos, pantanales y selvas densas con mucha vegetación que le permiten asediar a sus presas. Se han encontrado ejemplares a altitudes de hasta 3800 m, pero suelen evitar los bosques de montaña y no viven ni en el Eje Neovolcánico ni en la cordillera de los Andes.','Panthera_onca_distribution'),(3,6,'Se extiende desde el Sureste de México, pasando por Centroamérica, hasta el Sureste de Brasil y Paraguay y el Norte de Argentina. Vive tanto en la vertiente atlántica como en la pacífica.','Harpy_Eagle_Range'),(4,1,'Los últimos estudios indican que el armadillo gigante ha tenido un declive del 30 al 50 % de su población en las tres últimas décadas (unos 21 años). Sin intervención, esta tendencia continuará igual.Tiene una amplia área de distribución, pero sin embargo es raro encontrarlo y vive en zonas parcheadas.','Priodontes maximus'),(5,2,'Habita en los ríos y lagunas de la cuenca alta del río Amazonas y el Orinoco, por debajo de los 400 metros sobre el nivel del mar. Se distribuye por Venezuela, Colombia, Ecuador, Perú, Bolivia, Brasil y Guyana. Vive en agua dulce solo.Además de habitar ríos, está bien adaptado a vivir en la várzea (zonas de bosque inundado); también se le encuentra en pequeñas formaciones de lagos conectadas a los ríos, en canales a excepción de estuarios y cascadas; también se les encuentra en la desembocadura de los ríos.','Inia geoffrensis'),(6,3,'Es endémico de Sur América.Al norte su distribución llega hasta cerca del mar Caribe, aunque no lo incluye. Al sur su distribución llega hasta Argentina, aunque las poblaciones de Argentina y Uruguay se consideran extinguidas. La especie no se encuentra en Chile. La mayoría de ejemplares se encuentran en la Amazonía brasileña y las regiones limítrofes de estas zonas.','Pteronura brasiliensis');
/*!40000 ALTER TABLE `habitat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `img_link` char(68) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `images_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `images_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'holaholaholaholaholaholaholaholaholaholaholaholaholaholaholaholahola'),(2,2,'holaholaholaholaholaholaholaholaholaholaholaholaholaholaholaholahola');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'robado','se robaron mi pinguino','2017-11-11 20:13:00'),(2,'banana','se robaron mi banana','2017-11-11 21:21:14'),(3,'wey','funca','2017-11-12 09:01:28');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubigeo` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Loreto','8765'),(2,'Lima','6579'),(3,'Ucayali','8453');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `creation_date` datetime NOT NULL,
  `place` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `report_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `report_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,1,'robado','2017-07-11 20:11:56','ucayali');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starring`
--

DROP TABLE IF EXISTS `starring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `starring` (
  `news_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `starring_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`starring_id`),
  KEY `starring_animal_animal_id_fk` (`animal_id`),
  KEY `starring_news_news_id_fk` (`news_id`),
  CONSTRAINT `starring_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `starring_news_news_id_fk` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starring`
--

LOCK TABLES `starring` WRITE;
/*!40000 ALTER TABLE `starring` DISABLE KEYS */;
INSERT INTO `starring` VALUES (1,1,1),(1,2,2),(2,2,3),(3,4,5);
/*!40000 ALTER TABLE `starring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomy`
--

DROP TABLE IF EXISTS `taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy` (
  `taxon_id` int(11) NOT NULL AUTO_INCREMENT,
  `scientific_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subspecies` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kingdom` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phylum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_t` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genus` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `species` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animal_id` int(11) NOT NULL,
  PRIMARY KEY (`taxon_id`),
  KEY `taxonomy_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `taxonomy_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomy`
--

LOCK TABLES `taxonomy` WRITE;
/*!40000 ALTER TABLE `taxonomy` DISABLE KEYS */;
INSERT INTO `taxonomy` VALUES (1,'Boa constrictor',NULL,'Animalia','Chordata','Sauropsida','Squamata','Boidae','Boa','Boa constrictor',4),(2,'Panthera onca',NULL,'Animalia','Chordata','Mammalia','Carnivora','Felidae','Panthera','Panthera onca',5),(3,'Harpia harpyja',NULL,'Animalia','Chordata','Aves','Accipitriformes','Accipitridae','Harpia','Harpia harpyja',6),(4,'Priodontes maximus',NULL,'Animalia','Chordata','mammalia','Cingulata','Dasypodidae','Priodontes','Armadillo',1),(5,'Delfin Rosado',NULL,'Animalia','Chordata','Mammalia','Cetacea','INIIDAE','inia geoffrensis','Ara militaris',2),(6,'Pteronura brasiliensis',NULL,'Animalia','Chordata','Mammalia',NULL,'Mustelidae',NULL,'Pteronura brasiliensis',3);
/*!40000 ALTER TABLE `taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threat`
--

DROP TABLE IF EXISTS `threat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threat` (
  `threat_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`threat_id`),
  KEY `threat_animal_animal_id_fk` (`animal_id`),
  CONSTRAINT `threat_animal_animal_id_fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threat`
--

LOCK TABLES `threat` WRITE;
/*!40000 ALTER TABLE `threat` DISABLE KEYS */;
/*!40000 ALTER TABLE `threat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_m` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_f` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virus_bacteria`
--

DROP TABLE IF EXISTS `virus_bacteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virus_bacteria` (
  `vb_id` int(11) NOT NULL AUTO_INCREMENT,
  `vb_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`vb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virus_bacteria`
--

LOCK TABLES `virus_bacteria` WRITE;
/*!40000 ALTER TABLE `virus_bacteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `virus_bacteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `favorites` tinyint(1) DEFAULT NULL,
  `animal_id` int(11) NOT NULL,
  PRIMARY KEY (`visit_id`),
  KEY `visit_user__fk` (`animal_id`),
  KEY `visit_user_User_fk` (`user_id`),
  CONSTRAINT `visit_user_User_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `visit_user__fk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-12 12:09:35
