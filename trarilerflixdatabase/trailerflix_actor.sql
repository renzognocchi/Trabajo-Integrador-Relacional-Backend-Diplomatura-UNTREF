-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id_UNIQUE` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=841 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Gwyneth Paltrow'),(2,'Pedro Pascal'),(3,'Florence Pugh'),(4,'David Harbour'),(5,'Carl Weathers'),(6,'Misty Rosas'),(7,'O.T. Fagbenle'),(8,'Rachel Weisz'),(9,'William Hurt'),(10,'Ray Winstone'),(11,'Kristen Wiig'),(12,'Jeff Daniels'),(13,'Michael Peña'),(14,'Sean Bean'),(15,'Kate Mara'),(16,'Alicia Vikander'),(17,'Domhnall Gleeson'),(18,'Oscar Isaac'),(19,'Sonoya Mizuno'),(20,'Corey Johnson'),(21,'Claire Selby'),(22,'Gana Bayarsaikhan'),(23,'Bryce Dallas Howard'),(24,'Chris Bartlett'),(25,'Chris Pratt'),(26,'Irrfan Khan'),(27,'Vincent D\'Onofrio'),(28,'Omar Sy'),(29,'Nick Robinson'),(30,'Judy Greer'),(31,'Will Smith'),(32,'Alice Braga'),(33,'Rio Hackford'),(34,'Giancarlo Esposito'),(35,'Tom Hopper'),(36,'David Castañeda'),(37,'Emmy Raver-Lampman'),(38,'Robert Sheehan'),(39,'Aidan Gallagher'),(40,'Elliot Page'),(41,'Anya Taylor-Joy'),(42,'Thomas Brodie-Sangster'),(43,'Harry Melling'),(44,'Moses Ingram'),(45,'Chloe Pirrie'),(46,'Janina Elkin'),(47,'Lili Reinhart'),(48,'Casey Cott'),(49,'Camila Mendes'),(50,'Marisol Nichols'),(51,'Madelaine Petsch'),(52,'Mädchen Amick'),(53,'Claire Fox'),(54,'Olivia Colman'),(55,'Charlie Tahan'),(56,'Matt Smith'),(57,'Tobias Menzies'),(58,'Dash Mihok'),(59,'Salli Richardson-Whitfield'),(60,'Willow Smith'),(61,'Emma Thompson'),(62,'Ryan Gosling'),(63,'Claire Foy'),(64,'Jason Clarke'),(65,'Kyle Chandler'),(66,'Corey Stoll'),(67,'Patrick Fugit'),(68,'John Boyega'),(69,'Scott Eastwood'),(70,'Cailee Spaeny'),(71,'Jing Tian'),(72,'Rinko Kikuchi'),(73,'Burn Gorman'),(74,'Ahston Kutcher'),(75,'Dermot Mulroney'),(76,'Josh Gad'),(77,'Lukas Haas'),(78,'Matthew Modine'),(79,'J.K. Simmons'),(80,'Lesley Ann Warren'),(81,'Noah Wyle'),(82,'Anthony Michael'),(83,'Vanesa Kirby'),(84,'Joey Slotnick'),(85,'J.G. Hertzler'),(86,'Helena Bonham Carter'),(87,'Wayne Pére'),(88,'Millie Bobby Brown'),(89,'Henry Cavill'),(90,'Sheila Shaw'),(91,'Sam Claflin'),(92,'Gemma Zamprogna'),(93,'Louis Partridge'),(94,'John DiMaggio'),(95,'Adeel Akhtar'),(96,'Jesse Eisenberg'),(97,'Andrew Garfield'),(98,'Joaquin Phoenix'),(99,'Justin Timberlake'),(100,'Robert De Niro'),(101,'Armie Hammer'),(102,'Zazie Beetz'),(103,'Max Minghella'),(104,'Frances Conroy'),(105,'Rooney Mara'),(106,'Brenda Song'),(107,'Brett Cullen'),(108,'Rashida Jones'),(109,'Shea Whigham'),(110,'John Gertz'),(111,'Robert Downey Jr.'),(112,'Ryan Phillippe'),(113,'Rachael Leigh Cook'),(114,'Chris Evans'),(115,'Mark Ruffalo'),(116,'Chris Hemsworth'),(117,'Scarlett Johansson'),(118,'Jeremy Renner'),(119,'Tim Robbins'),(120,'Claire Forlani'),(121,'Richard Rountree'),(122,'Tygh Runyan'),(123,'Emilia Clarke'),(124,'Ned Bellamy'),(125,'Tyler Labine'),(126,'Lena Headey'),(127,'Anna Kendrick'),(128,'Sophie Turner'),(129,'Daniel Dae Kim'),(130,'Kit Harington'),(131,'Shamier Anderson'),(132,'Peter Dinklage'),(133,'Toni Collette'),(134,'Nikolaj Coster-Waldau'),(135,'Ben Affleck'),(136,'Grant Gustin'),(137,'Gal Gadot'),(138,'Carlos Valdes'),(139,'Jason Momoa'),(140,'Danielle Panabaker'),(141,'Ezra Miller'),(142,'Candice Patton'),(143,'Ray Fisher'),(144,'Jesse L. Martin'),(145,'Amy Adams'),(146,'Tom Cavanagh'),(147,'Jeremy Irons'),(148,'Jim Parsons'),(149,'Connie Nielsen'),(150,'Johnny Galecki'),(151,'Charlie Sheen'),(152,'Kaley Cuoco'),(153,'Jon Cryer'),(154,'Simon Helberg'),(155,'Angus T. Jones'),(156,'Kunal Nayyar'),(157,'Conchata Ferrel'),(158,'Holland Taylor'),(159,'Melissa Rauch'),(160,'Marin Hinkle'),(161,'Mayim Bialik'),(162,'Jennifer Aniston'),(163,'Courteney Cox'),(164,'Lisa Kudrow'),(165,'David Schwimmer'),(166,'Jennifer Bini Taylor'),(167,'Matthew Perry'),(168,'Melanie Lynskey'),(169,'Ashton Kutcher'),(170,'Amber Tamblyn'),(171,'Úrsula Corberó'),(172,'Matt LeBlanc'),(173,'Álvaro Morte'),(174,'Amybeth McNulty'),(175,'Itziar Ituño'),(176,'Geraldine James'),(177,'Pedro Alonso'),(178,'Alba Flores'),(179,'R. H. Thomson'),(180,'Miguel Herrán'),(181,'Corrine Koslo'),(182,'Jaime Lorente'),(183,'Dalila Bela'),(184,'Esther Acebo'),(185,'Lucas Jade Zumann'),(186,'Enrique Arce'),(187,'Gillian Anderson'),(188,'Winona Ryder'),(189,'David Duchovny'),(190,'Finn Wolfhard'),(191,'Mitch Pileggi'),(192,'Gaten Matarazzo'),(193,'Robert Patrick'),(194,'Caleb McLaughlin'),(195,'Natalia Dyer'),(196,'Tom Braidwood'),(197,'Charlie'),(198,'Bruce Harwood'),(199,'Heaton'),(200,'Jared Harris'),(201,'Stellan Skarsgård'),(202,'Joe Keery'),(203,'Sandra Bullock'),(204,'George Clooney'),(205,'Emily Watson'),(206,'Paul Ritter'),(207,'Orto Ignatiussen'),(208,'Jessie Buckley'),(209,'Phaldut Sharma'),(210,'Adam Nagaitis'),(211,'Amy Warren'),(212,'Evan Rachel Wood'),(213,'Basher Savage'),(214,'Thandiwe Newton'),(215,'Adam Cozens'),(216,'Jeffrey Wright'),(217,'Jaeden Martell'),(218,'Tessa Thompson'),(219,'Jeremy Ray'),(220,'Ed Harris'),(221,'Sophia Lillis'),(222,'Chosen Jacobs'),(223,'Jack Dylan'),(224,'Luke Hemsworth'),(225,'Wyatt Oleff'),(226,'Rodrigo Santoro'),(227,'Simon Quarterman'),(228,'Clifton Collins Jr.'),(229,'Anthony Hopkins'),(230,'Nicholas Hamilton'),(231,'Tom Hanks'),(232,'Bill Paxton'),(233,'Kevin Bacon'),(234,'Gary Sinise'),(235,'Kathleen Quinlan'),(236,'Roger Corman'),(237,'Ingrid Bolsø Berdal'),(238,'Chris Ellis'),(239,'Angela Sarafyan'),(240,'Shannon Woodward'),(241,'Xander Berkeley'),(242,'Talulah Riley'),(243,'Liev Schreiber'),(244,'Julia Stiles'),(245,'Seamus Davey-Fitzpatrick'),(246,'Louis Herthum'),(247,'David Thewils'),(248,'Ben Barnes'),(249,'Jimmi Simpson'),(250,'Leonardo Nam'),(251,'Aaron Paul'),(252,'Vincent Cassel'),(253,'Izabella Alvarez'),(254,'Jeff Daniel Phillips'),(255,'Lee Pace'),(256,'Pete Postlethwaite'),(257,'Scoot McNairy'),(258,'Mia Farrow'),(259,'Mackenzie Davis'),(260,'Kerry Bishé'),(261,'Toby Huss'),(262,'Alana Cavanaugh'),(263,'Predrag Bjelac'),(264,'Carlo Sabatini'),(265,'Amy Huck'),(266,'Jessica Chastain'),(267,'Ellen Burstyn'),(268,'John Malkovich'),(269,'Colin Farrell'),(270,'Linda Blair'),(271,'Common'),(272,'Max von Sydow'),(273,'Geena Davis'),(274,'Ioan Gruffudd'),(275,'Lee J. Cobb'),(276,'Margot Robbie'),(277,'Kitty Winn'),(278,'Ewan McGregor'),(279,'Mary Elizabeth Winstead'),(280,'Jack MacGowran'),(281,'Jurnee Smollett'),(282,'Rosie Perez'),(283,'Jason Miller'),(284,'William O\'Malley'),(285,'Chris Messina'),(286,'Barton Heyman'),(287,'Stacy Martin'),(288,'Rainn Wilson'),(289,'Rhona Mitra'),(290,'Theo James'),(291,'Steve Carell'),(292,'Peter Ferdinando'),(293,'Lia Williams'),(294,'Toby Jones'),(295,'Miranda Cosgrove'),(296,'Kate Walsh'),(297,'Jenna Fischer'),(298,'Omar Epps'),(299,'Angus Macfadyen'),(300,'John Krasinski'),(301,'Jorja Fox'),(302,'B.J. Novak'),(303,'Enver Gjokaj'),(304,'Kate Flannery'),(305,'Brian Baumgartner'),(306,'Bill Skarsgård'),(307,'Leslie David Baker'),(308,'Bill Hader'),(309,'Mindy Kaling'),(310,'James McAvoy'),(311,'Isaiah Mustafa'),(312,'Jay Ryan'),(313,'Chadwick Boseman'),(314,'Angela Kinsey'),(315,'Michael B. Jordan'),(316,'Freddie Highmore'),(317,'Lupita Nyong\'o'),(318,'Danai Gurira'),(319,'Antonia Thomas'),(320,'Martin Freeman'),(321,'Daniel Kaluuya'),(322,'Hill Harper'),(323,'Christian Bale'),(324,'Richard Schiff'),(325,'Matt Damon'),(326,'Caitriona Balfe'),(327,'Christina Chang'),(328,'Josh Lucas'),(329,'Paige Spara'),(330,'Noah Jupe'),(331,'Fiona Gubelmann'),(332,'Jon Bernthal'),(333,'Génesis Rodríguez'),(334,'Vincent Piazza'),(335,'Benjamin Sokolow'),(336,'Will Yun Lee'),(337,'Emily Bayiokos'),(338,'Nicholas Gonzalez'),(339,'Amy Manson'),(340,'Luke Allen-Gale'),(341,'Eddie Redmayne'),(342,'Felicity Jones'),(343,'Nina Bergman'),(344,'Charlie Cox'),(345,'Dominic Mafham'),(346,'Simon McBurney'),(347,'James Weber Brown'),(348,'Lorina Kamburova'),(349,'David Thewlis'),(350,'Marion Cotillard'),(351,'Maxine Peake'),(352,'Laurence Fishburne'),(353,'Jude Law'),(354,'Harry Lloyd'),(355,'Kate Winslet'),(356,'Tom Prior'),(357,'Benedict Cumberbatch'),(358,'Keira Knightley'),(359,'Matthew Goode'),(360,'Rory Kinnear'),(361,'Jennifer Ehle'),(362,'Allen Leech'),(363,'Matthew Beard'),(364,'Charles Dance'),(365,'Mark Strong'),(366,'James Northcote'),(367,'Taraji P. Henson'),(368,'Octavia Spencer'),(369,'Janelle Monáe'),(370,'Kevin Costner'),(371,'Kirsten Dunst'),(372,'Mahershala Ali'),(373,'Glen Powell'),(374,'Ariana Neal'),(375,'Russell Crowe'),(376,'Jennifer Connelly'),(377,'Paul Bettany'),(378,'Christopher Plummer'),(379,'Adam Goldberg'),(380,'Anthony Rapp'),(381,'Judd Hirsch'),(382,'Jennifer Lawrence'),(383,'Michael Sheen'),(384,'Andy García'),(385,'Rebekah Staton'),(386,'Aurora Perrineau'),(387,'Kristin Brock'),(388,'Rhashan Stone'),(389,'Phoebe Fox'),(390,'Julee Cerda'),(391,'Fred Melamed'),(392,'Anne Hathaway'),(393,'Patrick Wilson'),(394,'Andre Braugher'),(395,'Dianne Wiest'),(396,'David Morse'),(397,'Jimi Mistry'),(398,'William B. Davis'),(399,'Cherry Jones'),(400,'Ryan Robbins'),(401,'Alice Eve'),(402,'Clea DuVall'),(403,'Susannah Fielding'),(404,'Don Thompson'),(405,'Bryan Cranston'),(406,'Alan Arkin'),(407,'John Goodman'),(408,'Victor Garber'),(409,'Tate Donovan'),(410,'Rory Cochrane'),(411,'Noomi Rapace'),(412,'Michael Fassbender'),(413,'Charlize Theron'),(414,'Logan Marshall-Green'),(415,'Guy Pearce'),(416,'Demetri Goritsas'),(417,'Idris Elba'),(418,'Kadiff Kirwan'),(419,'Sean Harris'),(420,'Sope Dirisu'),(421,'Jackson Bews'),(422,'Rafe Spall'),(423,'Kate Dickie'),(424,'Annabel Davis'),(425,'Emut Elliott'),(426,'Billy Griffin Jr.'),(427,'Benedict Wong'),(428,'Paul Lawrence Kitson'),(429,'Lucy Hutchinson'),(430,'Jeff Mash'),(431,'Ian Whyte'),(432,'Branwell Donaghey'),(433,'Vladimir Furdik'),(434,'Patrick Kennedy'),(435,'C.C. Smiff'),(436,'Lydia Wilson'),(437,'Alastair Mackenzie'),(438,'Chetna Pandya'),(439,'Shane Steyn'),(440,'Tuppence Middleton'),(441,'John Lebar'),(442,'Katherine Waterston'),(443,'Billy Crudup'),(444,'Ian Bonar'),(445,'Danny McBride'),(446,'Elisabeth Hopper'),(447,'Demián Bichir'),(448,'Nick Bartlett'),(449,'Carmen Ejogo'),(450,'Wunmi Mosaku'),(451,'Jussie Smollett'),(452,'Alex Lawther'),(453,'Callie Hernandez'),(454,'Jerome Flynn'),(455,'Amy Seimetz'),(456,'Susannah Doyle'),(457,'Nathaniel Dean'),(458,'Madeline Brewer'),(459,'Alexander England'),(460,'Benjamin Rigby'),(461,'Uli Latukefu'),(462,'Tess Haubrich'),(463,'Andrew Crawford'),(464,'Guy Pierce'),(465,'James Franco'),(466,'Javier Botet'),(467,'Jake Gyllenhaal'),(468,'Rebecca Ferguson'),(469,'Ryan Reynolds'),(470,'Hiroyuki Sanada'),(471,'Airyon Bakare'),(472,'Olga Dihovichnaya'),(473,'Naoko Mori'),(474,'Haruka Kuroda'),(475,'Camiel Warren-Taylor'),(476,'Ariane Labed'),(477,'Rosamund Pike'),(478,'Sarah Snook'),(479,'Michael Kelly'),(480,'Sam Riley'),(481,'Aneurin Barnard'),(482,'Jola Bokinni'),(483,'Simon Russell Beale'),(484,'Faye Marsay'),(485,'Jonathan Aris'),(486,'Jonas Karlsson'),(487,'Tim Woodward'),(488,'Eugene O\'Hare'),(489,'Katherine Parkinson'),(490,'Indira Ainger'),(491,'Chris O\'Dowd'),(492,'James Lance'),(493,'Richard Ayoade'),(494,'David Ajala'),(495,'Matt Berry'),(496,'Sarah Abbott'),(497,'Jake Davies'),(498,'Clint Dyer'),(499,'Letitia Wright'),(500,'Noel Fielding'),(501,'Peter Serafinowicz'),(502,'Graham Linehan'),(503,'Babs Olusanmokun'),(504,'Tom Binns'),(505,'Georgina Campbell'),(506,'Lewis Macleod'),(507,'Jesse Plemons'),(508,'Gemma Chan'),(509,'Aldis Hodge'),(510,'Kiran Sonia Sawar'),(511,'Emily Berrington'),(512,'Lucy Carless'),(513,'Miley Cyrus'),(514,'Colin Morgan'),(515,'Anthony Mackie'),(516,'Theo Stevenson'),(517,'Nicole Beharie'),(518,'Pixie Davies'),(519,'Gugu Mbatha-Raw'),(520,'Tom Goodman-Hill'),(521,'Simona Brown'),(522,'Ivanno Jeremiah'),(523,'Eve Hewson'),(524,'Ruth Bradley'),(525,'Toma Bateman'),(526,'Will Tudor'),(527,'Robert Aramayo'),(528,'Neil Maskell'),(529,'Tyler Howitt'),(530,'Georgie Glen'),(531,'Billy Jenkins'),(532,'Bella Dayne'),(533,'Kamontip Krissy Ashton'),(534,'Thusitha Jayasumdera'),(535,'Rob Horrocks'),(536,'Danny Webb'),(537,'Joakim Skarli'),(538,'Olivia Wilde'),(539,'Matt Letscher'),(540,'Carrie-Anne Moss'),(541,'Portia Doubleday'),(542,'Dominic Cooper'),(543,'Imogen Poots'),(544,'Ramón Rodríguez'),(545,'Michael Keaton'),(546,'Rami Malek'),(547,'Kid Cudi'),(548,'Dakota Johnson'),(549,'Harrison Gilbertson'),(550,'Carmela Zumbado'),(551,'Spike Jonze'),(552,'Jalil Jay Lynch'),(553,'Tom Cruise'),(554,'Nick Chinlund'),(555,'Jon Voight'),(556,'Chad Randall'),(557,'Emmanuelle Béart'),(558,'Julianne Nicholson'),(559,'Henry Czerny'),(560,'Jean Smart'),(561,'Jean Reno'),(562,'Ving Rhames'),(563,'Kristin Scott Thomas'),(564,'Angourie Rice'),(565,'Evan Peters'),(566,'Sosie Bacon'),(567,'David Denman'),(568,'Vanessa Redgrave'),(569,'Neal Huff'),(570,'Ingeborga Dapkünaitè'),(571,'James McArdle'),(572,'Elizabeth Debicki'),(573,'John Douglas Thompson'),(574,'Luca Calvani'),(575,'Joe Tippett'),(576,'Sylvester Groth'),(577,'Cameron Mann'),(578,'Hugh Grant'),(579,'Chinasa Ogbuagu'),(580,'Christian Berkel'),(581,'Jamie Foxx'),(582,'Misha Kuznetsov'),(583,'Kerry Washington'),(584,'Guy Williams'),(585,'Marianna Di Martino'),(586,'Dwayne Johnson'),(587,'Regina King'),(588,'Kevin Hart'),(589,'Harry Lennix'),(590,'Jack Black'),(591,'Karen Gillan'),(592,'Nick Jonas'),(593,'Clifton Powell'),(594,'Bokeem Woodbine'),(595,'Sharon Warren'),(596,'Rhys Darby'),(597,'C.J. Sanders'),(598,'Bobby Cannavale'),(599,'Curtis Armstrong'),(600,'Alex Wolff'),(601,'Michaela Coel'),(602,'Ser\'Darius Blain'),(603,'Daniel Lapaine'),(604,'Hannah John-Kamen'),(605,'Andrew Roux'),(606,'Claire Keelan'),(607,'Sinéad Matthews'),(608,'Anna Wilson-Jones'),(609,'Paul Popplewell'),(610,'Julia Davis'),(611,'Ashley Thomas'),(612,'Kerrie Hayes'),(613,'Amy Beth Hayes'),(614,'Madison Iseman'),(615,'Morgan Turner'),(616,'Sean Buxton'),(617,'Mason Guccione'),(618,'Colin Hanks'),(619,'Awkwafina'),(620,'Danny DeVito'),(621,'Danny Glover'),(622,'Chris Pine'),(623,'Robin Wright'),(624,'Lilly Aspell'),(625,'Amr Waked'),(626,'Kristoffer Polaha'),(627,'Jeffrey Tambor'),(628,'Cynthia Addai-Robinson'),(629,'John Lithgow'),(630,'Andy Umberger'),(631,'Alison Wright'),(632,'Daeg Faerch'),(633,'Seth Lee'),(634,'Tait Fletcher'),(635,'Angel Giuffria'),(636,'Ron Yuan'),(637,'Scott Hunter'),(638,'Dennis Keiffer'),(639,'Jake Presley'),(640,'Hugh Jackman'),(641,'Allison Janney'),(642,'Geraldine Viswanathan'),(643,'Rafael Casal'),(644,'Stephen Spinella'),(645,'Annaleigh Ashford'),(646,'Ray Romano'),(647,'Hari Dhillon'),(648,'Jeremy Shamos'),(649,'Stephanie Kurtzuba'),(650,'Catherine Curtin'),(651,'Kathrine Narducci'),(652,'Ray Abruzzo'),(653,'Ben Stiller'),(654,'Robin Williams'),(655,'Carla Gugino'),(656,'Dick Van Dyke'),(657,'Steve Coogan'),(658,'Jake Cherry'),(659,'Mickey Rooney'),(660,'Bill Cobbs'),(661,'Owen Wilson'),(662,'Ricky Gervais'),(663,'Kim Raver'),(664,'Mizuo Peck'),(665,'Gwilym Lee'),(666,'Ben Hardy'),(667,'Joseph Mazzello'),(668,'Lucy Boynton'),(669,'Aidan Gillen'),(670,'Tom Hollander'),(671,'Mike Myers'),(672,'Julianne Hough'),(673,'Diego Boneta'),(674,'Alec Baldwin'),(675,'Russell Brand'),(676,'Malin Åkerman'),(677,'Paul Giamatti'),(678,'Catherine Zeta-Jones'),(679,'Mary J. Blige'),(680,'Erica Frene'),(681,'Shane Hartline'),(682,'James Martin Kelly'),(683,'Will Forte'),(684,'Eli Roth'),(685,'Joel Courtney'),(686,'Elle Fanning'),(687,'Riley Griffiths'),(688,'Noah Emmerich'),(689,'AJ Michalka'),(690,'Ryan Lee'),(691,'Ron Eldard'),(692,'Gabriel Basso'),(693,'Justice Smith'),(694,'Daniella Pineda'),(695,'James Cromwell'),(696,'Ted Levine'),(697,'Jeff Goldblum'),(698,'BD Wong'),(699,'Geraldine Chaplin'),(700,'Isabella Sermon'),(701,'Kevin Layne'),(702,'Harrison Ford'),(703,'Shia LaBeouf'),(704,'Cate Blanchett'),(705,'Karen Allen'),(706,'John Hurt'),(707,'Jim Broadbent'),(708,'Igor Jijikine'),(709,'Dimitri Diatchenko'),(710,'Sean Astin'),(711,'Josh Brolin'),(712,'Jeff Cohen'),(713,'Corey Feldman'),(714,'Kerri Green'),(715,'Martha Plimpton'),(716,'Jonathan Ke Quan'),(717,'John Matuszak'),(718,'Robert Davi'),(719,'Bonnie Hunt'),(720,'Paul Newman'),(721,'Larry the Cable Guy'),(722,'Tony Shalhoub'),(723,'Cheech Marin'),(724,'Michael Wallis'),(725,'George Carlin'),(726,'Paul Dooley'),(727,'Chris Miller'),(728,'Tom McGrath'),(729,'Danny Jacobs'),(730,'Andy Richter'),(731,'Nicole Sullivan'),(732,'Christopher Knights'),(733,'Wayne Knight'),(734,'Dale Midkiff'),(735,'Fred Gwynne'),(736,'Denise Crosby'),(737,'Brad Greenquist'),(738,'Michael Lombard'),(739,'Miko Hughes'),(740,'Blaze Berdahl'),(741,'Susan Blommaert'),(742,'Mara Clark'),(743,'Craig T. Nelson'),(744,'JoBeth Williams'),(745,'Beatrice Straight'),(746,'Dominique Dunne'),(747,'Oliver Robins'),(748,'Heather O\'Rourke'),(749,'Michael McManus'),(750,'Virginia Kiser'),(751,'Martin Casella'),(752,'Audrey Tautou'),(753,'Ian McKellen'),(754,'Alfred Molina'),(755,'Jürgen Prochnow'),(756,'Jean-Yves Berteloot'),(757,'Etienne Chicot'),(758,'Rowan Atkinson'),(759,'Natalie Imbruglia'),(760,'Ben Miller'),(761,'Greg Wise'),(762,'Tasha de Vasconcelos'),(763,'Douglas McFerran'),(764,'Steve Nicolson'),(765,'Terence Harvey'),(766,'Frances McDormand'),(767,'Kate Hudson'),(768,'Jason Lee'),(769,'Zoey Deschanel'),(770,'Michael Angarano'),(771,'Anna Paquin'),(772,'Fairuza Balk'),(773,'Joan Cusack'),(774,'Mike White'),(775,'Sarah Silverman'),(776,'Lee Wilkof'),(777,'Kate McGregor-Stewart'),(778,'Adam Pascal'),(779,'Suzzane Douglas'),(780,'Macaulay Culkin'),(781,'Joe Pesci'),(782,'Daniel Stern'),(783,'John Heard'),(784,'Catherine O\'Hara'),(785,'Roberts Blossom'),(786,'Devin Ratray'),(787,'Michael C. Maronna'),(788,'Hillary Wolf'),(789,'Vince Vaughn'),(790,'Will Ferrell'),(791,'Rose Byrne'),(792,'Aasif Mandvi'),(793,'Josh Brener'),(794,'Dylan O\'Brien'),(795,'Tiya Sircar'),(796,'Tobit Raphael'),(797,'Jessica Szohr'),(798,'Rob Riggle'),(799,'Eric André'),(800,'Harvey Guillén'),(801,'Gary Anthony Williams'),(802,'Bruno Amato'),(803,'Karen Ceesay'),(804,'Rebecca Hazlewood'),(805,'Sacha Dhawan'),(806,'Diedrich Bader'),(807,'Pippa Black'),(808,'Parvesh Ceena'),(809,'Thushari Jayasekera'),(810,'Ben Rappaport'),(811,'Guru Singh'),(812,'Rizwan Manji'),(813,'Anisha Nagarajan'),(814,'Carla Gallo'),(815,'Radhika Chaudhari'),(816,'Nicholas Logan'),(817,'Blake Lively'),(818,'Óscar Jaenada'),(819,'Janelle Bailley'),(820,'Chelsea Moody'),(821,'Angelo Josue Lozano Corzo'),(822,'José Manuel Trujillo Salas'),(823,'Sedona Legge'),(824,'Pablo Calva'),(825,'John Hawkes'),(826,'Sam Worthington'),(827,'Martin Henderson'),(828,'Thomas M. Wright'),(829,'Clive Standen'),(830,'Mia Goth'),(831,'Vanessa Kirby'),(832,'Raúl Juliá'),(833,'Anjelica Huston'),(834,'Christopher Lloyd'),(835,'Christina Ricci'),(836,'Carel Struycken'),(837,'Dan Hedaya'),(838,'Jimmy Workman'),(839,'Elizabeth Wilson'),(840,'Dana Ivey');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-31 19:18:48