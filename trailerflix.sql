CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `actricesyactores`
--

DROP TABLE IF EXISTS `actricesyactores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actricesyactores` (
  `idActor` int NOT NULL AUTO_INCREMENT,
  `nombreActor` varchar(100) NOT NULL,
  PRIMARY KEY (`idActor`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actricesyactores`
--

LOCK TABLES `actricesyactores` WRITE;
/*!40000 ALTER TABLE `actricesyactores` DISABLE KEYS */;
INSERT INTO `actricesyactores` VALUES (1,'Adam Nagaitis'),(2,'Adeel Akhtar'),(3,'Aidan Gallagher'),(4,'Alana Cavanaugh'),(5,'Alice Braga'),(6,'Alicia Vikander'),(7,'Amy Manson'),(8,'Amybeth McNulty'),(9,'Angus Macfadyen'),(10,'Anya Taylor-Joy'),(11,'Awkwafina'),(12,'Benjamin Sokolow'),(13,'Bill Hader'),(14,'Bill Skarsgård'),(15,'Brett Cullen'),(16,'Bruce Harwood'),(17,'Bryce Dallas Howard'),(18,'Burn Gorman'),(19,'Cailee Spaeny'),(20,'Caitriona Balfe'),(21,'Camila Mendes'),(22,'Candice Patton'),(23,'Carl Weathers'),(24,'Carlos Valdes'),(25,'Casey Cott'),(26,'Chadwick Boseman'),(27,'Charlie Tahan'),(28,'Chloe Pirrie'),(29,'Chris Bartlett'),(30,'Chris Evans'),(31,'Chris Hemsworth'),(32,'Chris Messina'),(33,'Chris Pratt'),(34,'Christian Bale'),(35,'Claire Fox'),(36,'Claire Foy'),(37,'Claire Selby'),(38,'Colin Farrell'),(39,'Common'),(40,'Corey Johnson'),(41,'Corey Stoll'),(42,'Corrine Koslo'),(43,'Courteney Cox'),(44,'Dalila Bela'),(45,'Danai Gurira'),(46,'Daniel Kaluuya'),(47,'Danielle Panabaker'),(48,'Dash Mihok'),(49,'David Castañeda'),(50,'David Duchovny'),(51,'David Harbour'),(52,'David Schwimmer'),(53,'Domhnall Gleeson'),(54,'Dominic Mafham'),(55,'Dwayne Johnson'),(56,'Ed Harris'),(57,'Elliot Page'),(58,'Emilia Clarke'),(59,'Emily Bayiokos'),(60,'Emily Watson'),(61,'Emma Thompson'),(62,'Emmy Raver-Lampman'),(63,'Enver Gjokaj'),(64,'Evan Rachel Wood'),(65,'Ewan McGregor'),(66,'Florence Pugh'),(67,'Frances Conroy'),(68,'Gana Bayarsaikhan'),(69,'Geena Davis'),(70,'Geraldine James'),(71,'Giancarlo Esposito'),(72,'Gillian Anderson'),(73,'Grant Gustin'),(74,'Gwyneth Paltrow'),(75,'Génesis Rodríguez'),(76,'Harry Melling'),(77,'Helena Bonham Carter'),(78,'Henry Cavill'),(79,'Ioan Gruffudd'),(80,'Irrfan Khan'),(81,'Isaiah Mustafa'),(82,'Jack Black'),(83,'James McAvoy'),(84,'James Weber Brown'),(85,'Janina Elkin'),(86,'Jared Harris'),(87,'Jason Clarke'),(88,'Jay Ryan'),(89,'Jeff Daniels'),(90,'Jeffrey Wright'),(91,'Jennifer Aniston'),(92,'Jennifer Ehle'),(93,'Jeremy Renner'),(94,'Jesse L. Martin'),(95,'Jessica Chastain'),(96,'Jessie Buckley'),(97,'Jim Parsons'),(98,'Jing Tian'),(99,'Joaquin Phoenix'),(100,'John Boyega'),(101,'John Malkovich'),(102,'Johnny Galecki'),(103,'Jon Bernthal'),(104,'Jorja Fox'),(105,'Josh Lucas'),(106,'Jude Law'),(107,'Judy Greer'),(108,'Jurnee Smollett'),(109,'Kaley Cuoco'),(110,'Karen Gillan'),(111,'Kate Mara'),(112,'Kate Walsh'),(113,'Kate Winslet'),(114,'Kerry Bishé'),(115,'Kevin Hart'),(116,'Kit Harington'),(117,'Kristen Wiig'),(118,'Kunal Nayyar'),(119,'Kyle Chandler'),(120,'Laurence Fishburne'),(121,'Lee Pace'),(122,'Lena Headey'),(123,'Lia Williams'),(124,'Lili Reinhart'),(125,'Lisa Kudrow'),(126,'Lorina Kamburova'),(127,'Louis Partridge'),(128,'Lucas Jade Zumann'),(129,'Luke Allen-Gale'),(130,'Luke Hemsworth'),(131,'Lupita Nyong\'o'),(132,'Mackenzie Davis'),(133,'Madelaine Petsch'),(134,'Margot Robbie'),(135,'Marion Cotillard'),(136,'Marisol Nichols'),(137,'Mark Ruffalo'),(138,'Martin Freeman'),(139,'Mary Elizabeth Winstead'),(140,'Matt Damon'),(141,'Matt LeBlanc'),(142,'Matt Smith'),(143,'Matthew Perry'),(144,'Mayim Bialik'),(145,'Melissa Rauch'),(146,'Michael B. Jordan'),(147,'Michael Peña'),(148,'Millie Bobby Brown'),(149,'Miranda Cosgrove'),(150,'Misty Rosas'),(151,'Mitch Pileggi'),(152,'Moses Ingram'),(153,'Mädchen Amick'),(154,'Nick Jonas'),(155,'Nick Robinson'),(156,'Nikolaj Coster-Waldau'),(157,'Nina Bergman'),(158,'Noah Jupe'),(159,'O.T. Fagbenle'),(160,'Olivia Colman'),(161,'Omar Epps'),(162,'Omar Sy'),(163,'Oscar Isaac'),(164,'Patrick Fugit'),(165,'Paul Ritter'),(166,'Pedro Pascal'),(167,'Peter Dinklage'),(168,'Peter Ferdinando'),(169,'R. H. Thomson'),(170,'Rachel Weisz'),(171,'Ray Winstone'),(172,'Rhona Mitra'),(173,'Rinko Kikuchi'),(174,'Rio Hackford'),(175,'Robert De Niro'),(176,'Robert Downey Jr.'),(177,'Robert Patrick'),(178,'Robert Sheehan'),(179,'Rosie Perez'),(180,'Ryan Gosling'),(181,'Salli Richardson-Whitfield'),(182,'Sam Claflin'),(183,'Scarlett Johansson'),(184,'Scoot McNairy'),(185,'Scott Eastwood'),(186,'Sean Bean'),(187,'Shea Whigham'),(188,'Simon Helberg'),(189,'Sonoya Mizuno'),(190,'Sophie Turner'),(191,'Stacy Martin'),(192,'Stellan Skarsgård'),(193,'Tessa Thompson'),(194,'Thandie Newton'),(195,'Theo James'),(196,'Thomas Brodie-Sangster'),(197,'Tobias Menzies'),(198,'Toby Huss'),(199,'Toby Jones'),(200,'Tom Braidwood'),(201,'Tom Cavanagh'),(202,'Tom Hopper'),(203,'Vanesa Kirby'),(204,'Vincent D\'Onofrio'),(205,'Vincent Piazza'),(206,'Will Smith'),(207,'William Hurt'),(208,'Willow Smith'),(209,'Zazie Beetz');
/*!40000 ALTER TABLE `actricesyactores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `idCatalogo` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `resumen` longtext NOT NULL,
  `temporadas` varchar(3) NOT NULL,
  `idCategoria` int NOT NULL,
  `trailer` varchar(255) NOT NULL,
  PRIMARY KEY (`idCatalogo`),
  UNIQUE KEY `idCatalogo` (`idCatalogo`),
  KEY `contenido_fk0` (`idCategoria`),
  CONSTRAINT `contenido_fk0` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,'/posters/1.jpg','The Crown','Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.','4',1,''),(2,'/posters/2.jpg','Riverdale','El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.','5',1,''),(3,'/posters/3.jpg','The Mandalorian','Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.','2',1,'https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy','La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.','1',1,''),(5,'/posters/5.jpg','Gambito de Dama','En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.','1',1,''),(6,'/posters/6.jpg','Enola Holmes','La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.','N/A',2,''),(7,'/posters/7.jpg','Guasón','Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.','N/A',2,'https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game','Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.','N/A',2,''),(9,'/posters/9.jpg','Juego de tronos','En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.','8',1,''),(10,'/posters/10.jpg','The Flash','Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.','6',1,''),(11,'/posters/11.jpg','The Big Bang Theory','Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.','12',1,'https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends','\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.','10',1,''),(13,'/posters/13.jpg','Anne with an \'E\'','Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.','2',1,''),(14,'/posters/14.jpg','Expedientes Secretos \'X\'','Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'.','11',1,'https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl','Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.','1',1,'https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld','\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.','3',1,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire','Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).','4',1,'https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava','Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.','N/A',2,''),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn','Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.','N/A',2,''),(20,'/posters/20.jpg','Archivo','2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.','N/A',2,'https://www.youtube.com/embed/VHSoCnDioAo'),(21,'/posters/21.jpg','Jumanji - The next level','Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?','N/A',2,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'/posters/22.jpg','3022','La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.','N/A',2,'https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'/posters/23.jpg','IT - Capítulo 2','En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.','N/A',2,'https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'/posters/24.jpg','Pantera Negra','T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.','N/A',2,'https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)','Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.','N/A',2,'https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'/posters/26.jpg','Centígrados','Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.','N/A',2,''),(27,'/posters/27.jpg','DOOM: Aniquilación','Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.','N/A',2,'https://www.youtube.com/embed/nat3u3gAVLE'),(28,'/posters/28.jpg','Contagio','De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.','N/A',2,'https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'/posters/29.jpg','Viuda Negra','Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.','N/A',2,'https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian','Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.','N/A',2,'https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina','Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.','N/A',2,'https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World','Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.','N/A',2,''),(33,'/posters/33.jpg','Soy leyenda','Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.','N/A',2,'https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna','Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.','N/A',2,''),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección','Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.','N/A',2,'');
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogoactoresreparto`
--

DROP TABLE IF EXISTS `catalogoactoresreparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogoactoresreparto` (
  `idCatalogoActor` int NOT NULL,
  `idCatalogo` int NOT NULL,
  `idActor` int NOT NULL,
  PRIMARY KEY (`idCatalogoActor`),
  UNIQUE KEY `idCatalogoActor` (`idCatalogoActor`),
  KEY `catalogoActoresReparto_fk0` (`idCatalogo`),
  KEY `catalogoActoresReparto_fk1` (`idActor`),
  CONSTRAINT `catalogoActoresReparto_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `catalogoActoresReparto_fk1` FOREIGN KEY (`idActor`) REFERENCES `actricesyactores` (`idActor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogoactoresreparto`
--

LOCK TABLES `catalogoactoresreparto` WRITE;
/*!40000 ALTER TABLE `catalogoactoresreparto` DISABLE KEYS */;
INSERT INTO `catalogoactoresreparto` VALUES (1,3,166),(2,3,23),(3,3,150),(4,3,29),(5,3,174),(6,3,71),(7,4,202),(8,4,49),(9,4,62),(10,4,178),(11,4,3),(12,4,57),(13,5,10),(14,5,196),(15,5,76),(16,5,152),(17,5,28),(18,5,85),(19,2,124),(20,2,25),(21,2,21),(22,2,136),(23,2,133),(24,2,153),(25,1,35),(26,1,160),(27,1,142),(28,1,197),(29,1,203),(30,1,77),(31,6,148),(32,6,78),(33,6,182),(34,6,77),(35,6,127),(36,6,2),(37,7,99),(38,7,175),(39,7,209),(40,7,67),(41,7,15),(42,7,187),(43,8,176),(44,8,30),(45,8,137),(46,8,31),(47,8,183),(48,8,93),(49,9,58),(50,9,122),(51,9,190),(52,9,116),(53,9,167),(54,9,156),(55,10,73),(56,10,24),(57,10,47),(58,10,22),(59,10,94),(60,10,201),(61,11,97),(62,11,102),(63,11,109),(64,11,188),(65,11,118),(66,11,145),(67,11,144),(68,12,91),(69,12,43),(70,12,125),(71,12,52),(72,12,143),(73,12,141),(74,13,8),(75,13,70),(76,13,169),(77,13,42),(78,13,44),(79,13,128),(80,14,72),(81,14,50),(82,14,151),(83,14,177),(84,14,200),(85,14,16),(86,15,86),(87,15,192),(88,15,60),(89,15,165),(90,15,96),(91,15,1),(92,16,64),(93,16,194),(94,16,90),(95,16,193),(96,16,56),(97,16,130),(98,17,121),(99,17,184),(100,17,132),(101,17,114),(102,17,198),(103,17,4),(104,18,95),(105,18,101),(106,18,38),(107,18,39),(108,18,69),(109,18,79),(110,19,134),(111,19,65),(112,19,139),(113,19,108),(114,19,179),(115,19,32),(116,20,191),(117,20,172),(118,20,195),(119,20,168),(120,20,123),(121,20,199),(122,21,55),(123,21,115),(124,21,82),(125,21,110),(126,21,11),(127,21,154),(128,22,149),(129,22,112),(130,22,161),(131,22,9),(132,22,104),(133,22,63),(134,23,14),(135,23,95),(136,23,13),(137,23,83),(138,23,81),(139,23,88),(140,24,26),(141,24,146),(142,24,131),(143,24,45),(144,24,138),(145,24,46),(146,25,34),(147,25,140),(148,25,20),(149,25,105),(150,25,158),(151,25,103),(152,26,75),(153,26,205),(154,26,12),(155,26,59),(156,27,7),(157,27,129),(158,27,157),(159,27,54),(160,27,84),(161,27,126),(162,28,135),(163,28,140),(164,28,120),(165,28,106),(166,28,113),(167,28,92),(168,28,74),(169,29,183),(170,29,66),(171,29,51),(172,29,159),(173,29,170),(174,29,207),(175,29,171),(176,30,140),(177,30,95),(178,30,117),(179,30,89),(180,30,147),(181,30,186),(182,30,111),(183,31,6),(184,31,53),(185,31,163),(186,31,189),(187,31,40),(188,31,37),(189,31,68),(190,32,17),(191,32,33),(192,32,80),(193,32,204),(194,32,162),(195,32,155),(196,32,107),(197,33,206),(198,33,5),(199,33,27),(200,33,48),(201,33,181),(202,33,208),(203,33,61),(204,34,180),(205,34,36),(206,34,87),(207,34,119),(208,34,41),(209,34,164),(210,35,100),(211,35,185),(212,35,19),(213,35,98),(214,35,173),(215,35,18);
/*!40000 ALTER TABLE `catalogoactoresreparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogogenero`
--

DROP TABLE IF EXISTS `catalogogenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogogenero` (
  `idCatalogoGenero` int NOT NULL,
  `idGenero` int NOT NULL,
  `idCatalogo` int NOT NULL,
  PRIMARY KEY (`idCatalogoGenero`),
  UNIQUE KEY `idCatalogoGenero` (`idCatalogoGenero`),
  KEY `catalogoGenero_fk0` (`idGenero`),
  KEY `catalogoGenero_fk1` (`idCatalogo`),
  CONSTRAINT `catalogoGenero_fk0` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`),
  CONSTRAINT `catalogoGenero_fk1` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogogenero`
--

LOCK TABLES `catalogogenero` WRITE;
/*!40000 ALTER TABLE `catalogogenero` DISABLE KEYS */;
INSERT INTO `catalogogenero` VALUES (1,3,3),(2,8,3),(3,3,4),(4,8,4),(5,6,5),(6,9,5),(7,15,5),(8,6,2),(9,13,2),(10,9,2),(11,6,1),(12,10,1),(13,9,6),(14,6,6),(15,13,6),(16,5,7),(17,16,7),(18,6,7),(19,2,8),(20,14,8),(21,1,8),(22,2,9),(23,8,9),(24,6,9),(25,3,10),(26,8,10),(27,4,11),(28,8,11),(29,9,11),(30,4,12),(31,7,12),(32,6,12),(33,6,13),(34,7,13),(35,19,13),(36,6,14),(37,3,14),(38,6,15),(39,10,15),(40,19,16),(41,3,16),(42,9,17),(43,6,17),(44,17,17),(45,1,18),(46,6,18),(47,16,18),(48,1,19),(49,9,19),(50,4,19),(51,1,20),(52,14,20),(53,16,20),(54,4,21),(55,9,21),(56,2,21),(57,3,22),(58,16,22),(59,18,23),(60,16,23),(61,8,23),(62,1,24),(63,2,24),(64,8,24),(65,6,25),(66,11,25),(67,2,25),(68,6,26),(69,16,26),(70,12,26),(71,1,27),(72,14,27),(73,18,27),(74,6,28),(75,16,28),(76,9,28),(77,6,29),(78,1,29),(79,2,29),(80,6,30),(81,14,30),(82,2,30),(83,6,31),(84,14,31),(85,16,31),(86,16,32),(87,2,32),(88,9,32),(89,6,33),(90,18,33),(91,9,33),(92,6,34),(93,10,34),(94,1,35),(95,8,35),(96,14,35);
/*!40000 ALTER TABLE `catalogogenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Serie'),(2,'Película');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `nombreGenero` varchar(50) NOT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Acción'),(2,'Aventura'),(3,'Ciencia Ficción'),(4,'Comedia'),(5,'Crimen'),(6,'Drama'),(7,'Familia'),(8,'Fantasía'),(9,'Ficción'),(10,'Hechos verídicos'),(11,'Historia'),(12,'Intriga'),(13,'Misterio'),(14,'Sci-Fi'),(15,'Sucesos'),(16,'Suspenso'),(17,'Tecnología'),(18,'Terror'),(19,'Western');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_peliculas_actores_generos`
--

DROP TABLE IF EXISTS `vista_peliculas_actores_generos`;
/*!50001 DROP VIEW IF EXISTS `vista_peliculas_actores_generos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_peliculas_actores_generos` AS SELECT 
 1 AS `pelicula_id`,
 1 AS `pelicula_poster`,
 1 AS `pelicula_nombre`,
 1 AS `pelicula_categoria`,
 1 AS `pelicula_generos`,
 1 AS `pelicula_resumen`,
 1 AS `pelicula_temporadas`,
 1 AS `pelicula_actores`,
 1 AS `pelicula_trailer`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'trailerflix'
--

--
-- Dumping routines for database 'trailerflix'
--

--
-- Final view structure for view `vista_peliculas_actores_generos`
--

/*!50001 DROP VIEW IF EXISTS `vista_peliculas_actores_generos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_peliculas_actores_generos` AS select `p`.`idCatalogo` AS `pelicula_id`,`p`.`poster` AS `pelicula_poster`,`p`.`titulo` AS `pelicula_nombre`,`ca`.`nombreCategoria` AS `pelicula_categoria`,group_concat(distinct `g`.`nombreGenero` separator ',') AS `pelicula_generos`,`p`.`resumen` AS `pelicula_resumen`,`p`.`temporadas` AS `pelicula_temporadas`,group_concat(distinct `a`.`nombreActor` separator ',') AS `pelicula_actores`,`p`.`trailer` AS `pelicula_trailer` from (((((`catalogo` `p` join `categorias` `ca` on((`p`.`idCategoria` = `ca`.`idCategoria`))) join `catalogoactoresreparto` `pa` on((`p`.`idCatalogo` = `pa`.`idCatalogo`))) join `actricesyactores` `a` on((`pa`.`idActor` = `a`.`idActor`))) left join `catalogogenero` `pg` on((`p`.`idCatalogo` = `pg`.`idCatalogo`))) left join `generos` `g` on((`pg`.`idGenero` = `g`.`idGenero`))) group by `p`.`idCatalogo`,`p`.`titulo` */;
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

-- Dump completed on 2023-09-28  1:36:03
