-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: superDatabase
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `ogp_addons`
--

DROP TABLE IF EXISTS `ogp_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_addons` (
                              `addon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                              `name` varchar(80) NOT NULL,
                              `url` varchar(200) NOT NULL,
                              `path` varchar(80) NOT NULL,
                              `addon_type` varchar(7) NOT NULL,
                              `home_cfg_id` varchar(7) NOT NULL,
                              `post_script` longtext NOT NULL,
                              `group_id` int(11) DEFAULT NULL,
                              PRIMARY KEY (`addon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_addons`
--

LOCK TABLES `ogp_addons` WRITE;
/*!40000 ALTER TABLE `ogp_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_adminExternalLinks`
--

DROP TABLE IF EXISTS `ogp_adminExternalLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_adminExternalLinks` (
                                          `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                                          `name` varchar(80) NOT NULL,
                                          `url` varchar(200) NOT NULL,
                                          `user_id` varchar(7) NOT NULL,
                                          PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_adminExternalLinks`
--

LOCK TABLES `ogp_adminExternalLinks` WRITE;
/*!40000 ALTER TABLE `ogp_adminExternalLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_adminExternalLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_arrange_ports`
--

DROP TABLE IF EXISTS `ogp_arrange_ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_arrange_ports` (
                                     `range_id` int(11) NOT NULL AUTO_INCREMENT,
                                     `ip_id` int(11) NOT NULL,
                                     `home_cfg_id` int(11) NOT NULL,
                                     `start_port` smallint(11) unsigned NOT NULL,
                                     `end_port` smallint(11) unsigned NOT NULL,
                                     `port_increment` smallint(11) unsigned NOT NULL,
                                     PRIMARY KEY (`range_id`),
                                     UNIQUE KEY `ip_id` (`ip_id`,`home_cfg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Remote servers and IPs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_arrange_ports`
--

LOCK TABLES `ogp_arrange_ports` WRITE;
/*!40000 ALTER TABLE `ogp_arrange_ports` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_arrange_ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_config_homes`
--

DROP TABLE IF EXISTS `ogp_config_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_config_homes` (
                                    `home_cfg_id` int(20) NOT NULL AUTO_INCREMENT,
                                    `game_key` varchar(64) NOT NULL,
                                    `game_name` varchar(255) NOT NULL,
                                    `home_cfg_file` varchar(64) DEFAULT NULL,
                                    PRIMARY KEY (`home_cfg_id`),
                                    UNIQUE KEY `game_key` (`game_key`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_config_homes`
--

LOCK TABLES `ogp_config_homes` WRITE;
/*!40000 ALTER TABLE `ogp_config_homes` DISABLE KEYS */;
INSERT INTO `ogp_config_homes` VALUES (1,'7daystodie_linux32','7 Days to Die','7daystodie_linux32.xml'),(2,'7daystodie_linux64','7 Days to Die','7daystodie_linux64.xml'),(3,'7daystodie_win64','7 Days to Die','7daystodie_win64.xml'),(4,'Smashball_linux32','Smashball','Smashball.xml'),(5,'Synergy_linux32','Synergy','Synergy.xml'),(6,'aliensvspredator_win32','Aliens vs Predator','aliensvspredator_win32.xml'),(7,'aoc_linux32','Age of Chivalry','aoc.xml'),(8,'arkse_linux64','ARK: Survival Evolved','arkse_linux64.xml'),(9,'arkse_win64','ARK: Survival Evolved','arkse_win64.xml'),(10,'arma2_linux','Arma 2','arma2_linux.xml'),(11,'arma2_win32','Arma 2','arma2_win32.xml'),(12,'arma2co_linux','Arma 2 Combined Operations','arma2co_linux.xml'),(13,'arma2co_win32','Arma 2 Combined Operations','arma2co_win32.xml'),(14,'arma2oa_linux','Arma 2 Operation Arrowhead','arma2oa_linux.xml'),(15,'arma2oa_win32','Arma 2 Operation Arrowhead','arma2oa_win32.xml'),(16,'arma3_linux32','Arma 3','arma3_linux32.xml'),(17,'arma3_win32','Arma 3','arma3_win32.xml'),(18,'arma3_win64','Arma 3','arma3_win64.xml'),(19,'assettocorsa_linux32','Assetto Corsa','assettocorsa_linux32.xml'),(20,'assettocorsa_win32','Assetto Corsa','assettocorsa_win32.xml'),(21,'atlas_linux64','Atlas','atlas_linux64.xml'),(22,'atlas_win64','Atlas','atlas_win64.xml'),(23,'avorion_linux64','Avorion','avorion_linux64.xml'),(24,'bf2_linux32','Battlefield 2','bf2.xml'),(25,'bf2_win32','Battlefield 2','bf2_win.xml'),(26,'bfbc2_win32','Battlefield Bad Company 2','bfbc2.xml'),(27,'bigbrotherbot_linux32','Big Brother Bot','bigbrotherbot_linux32.xml'),(28,'bigbrotherbot_win32','Big Brother Bot','bigbrotherbot_win32.xml'),(29,'bloodfrontier_linux32','Blood Frontier','bloodfrontier.xml'),(30,'brainbread2_linux32','BrainBread 2','brainbread2_linux32.xml'),(31,'brainbread2_win32','BrainBread 2','brainbread2_win32.xml'),(32,'bukkit_linux32','Bukkit','bukkit_linux32.xml'),(33,'bukkit_linux64','Bukkit','bukkit_linux64.xml'),(34,'bukkit_win32','Bukkit','bukkit_win32.xml'),(35,'bukkit_win64','Bukkit','bukkit_win64.xml'),(36,'callofduty2_linux32','Call of Duty 2','callofduty2_linux32.xml'),(37,'callofduty2_win32','Call of Duty 2','callofduty2_win32.xml'),(38,'callofduty4mw_linux32','Call of Duty 4: Modern Warfare','callofduty4mw_linux32.xml'),(39,'callofduty4mw_win32','Call of Duty 4: Modern Warfare','callofduty4mw_win32.xml'),(40,'callofduty_linux32','Call of Duty','callofduty_linux32.xml'),(41,'callofduty_win32','Call of Duty','callofduty_win32.xml'),(42,'callofdutymw2_win32','Call of Duty: Modern Warfare 2 (IW4x)','callofdutymw2_win32.xml'),(43,'callofdutymw3_win32','Call of Duty: Modern Warfare 3','callofdutymw3_win32.xml'),(44,'callofdutyuo_linux32','Call of Duty: United Offensive','callofdutyuo_linux32.xml'),(45,'callofdutyuo_win32','Call of Duty: United Offensive','callofdutyuo_win32.xml'),(46,'callofdutywaw_linux32','Call of Duty: World at War','callofdutywaw_linux32.xml'),(47,'callofdutywaw_win32','Call of Duty: World at War','callofdutywaw_win32.xml'),(48,'citadelfwf_linux64','Citadel: Forged with Fire','citadelfwf_linux64.xml'),(49,'citadelfwf_win64','Citadel: Forged with Fire','citadelfwf_win64.xml'),(50,'cod_blackops_win32','CoD: Black Ops','cod_bo_win.xml'),(51,'colonysurvival_win64','Colony Survival','colonysurvival_win64.xml'),(52,'conanexiles_win64','Conan Exiles','conanexiles_win64.xml'),(53,'css_linux32','Counter Strike Source','counterstrike_source.xml'),(54,'css_win32','Counter Strike Source','counterstrike_source_win.xml'),(55,'cs2d_linux32','CS2D','cs2d_linux32.xml'),(56,'cs2d_win32','CS2D','cs2d_win32.xml'),(57,'csgo_linux32','Counter Strike Global Offensive','csgo_linux.xml'),(58,'csgo_win32','Counter Strike Global Offensive','csgo_win.xml'),(59,'cspromod_linux32','CSPromod','cspro_mod_linux.xml'),(60,'cspromod_win32','CSPromod','cspro_mod_win.xml'),(61,'cstrike_linux32','Counter-Strike','cstrike.xml'),(62,'cstrike_win32','Counter-Strike','cstrike_win.xml'),(63,'czero_linux32','Counter-Strike Condition Zero','czero_linux.xml'),(64,'czero_win32','Counter-Strike Condition Zero','czero_win.xml'),(65,'dayz_arma2co_linux','DayZ Mod (CO)','dayz_arma2co_linux.xml'),(66,'dayz_arma2co_win32','DayZ Mod (CO)','dayz_arma2co_win32.xml'),(67,'dayz_arma2oa_win32','DayZ Mod (OA)','dayz_arma2oa_win32.xml'),(68,'dayz_win64','DayZ','dayz_win64.xml'),(69,'dmc_linux32','Death Match Classic','dmc.xml'),(70,'dmc_win32','Death Match Classic','dmc_win.xml'),(71,'dod_linux32','Day of Defeat','dod.xml'),(72,'dod_win32','Day of Defeat','dod_win.xml'),(73,'dods_linux32','Day of Defeat Source','dods.xml'),(74,'dods_win32','Day of Defeat Source','dods_win.xml'),(75,'doi_linux32','Day of Infamy','doi.xml'),(76,'doi_win32','Day of Infamy','doi_win.xml'),(77,'dontstarvetogether_linux32','Dont Starve Together','dontstarvetogether_linux32.xml'),(78,'dystopia_linux32','Dystopia','dystopia.xml'),(79,'eco_win64','Eco','eco_win64.xml'),(80,'empyriongs_win64','Empyrion ├óÔé¼ÔÇ£ Galactic Survival','empyriongs_win64.xml'),(81,'esmod_linux32','Eternal-Silence','esmod.xml'),(82,'feedthebeast_linux32','Feed The Beast Server','feedthebeast.xml'),(83,'feedthebeast_win32','Feed The Beast Server','feedthebeast_win.xml'),(84,'fgms_linux32','FlightGear Multiplayer Server','fgms_linux32.xml'),(85,'fof_linux32','Fistful of Frags','fistful_of_frags_linux.xml'),(86,'fof_win32','Fistful of Frags','fistful_of_frags_win.xml'),(87,'fivem_linux32','FiveM','fivem_linux32.xml'),(88,'fivem_win32','FiveM','fivem_win32.xml'),(89,'freecol_linux32','FreeCol','freecol_linux32.xml'),(90,'freecol_linux64','FreeCol','freecol_linux64.xml'),(91,'freecol_win32','FreeCol','freecol_win32.xml'),(92,'freecol_win64','FreeCol','freecol_win64.xml'),(93,'GarrysMod_linux32','Garrys Mod','garrysmod.xml'),(94,'GarrysMod_win32','Garrys Mod','garrysmod_win.xml'),(95,'gearbox_linux32','Gearbox','gearbox.xml'),(96,'halo_ce_win32','Halo CE','halo_ce_win.xml'),(97,'hidden_source_linux32','Hidden: Source','hidden_source.xml'),(98,'hl2d_linux32','Half-Life 2: Deathmatch','hl2dm.xml'),(99,'hl2d_win32','Half-Life 2: Deathmatch','hl2dm_win.xml'),(100,'hldm_linux32','Half Life: Death Match','hldm_linux32.xml'),(101,'hldm_win32','Half Life: Death Match','hldm_win32.xml'),(102,'hltv_linux32','HLTV','hltv_linux32.xml'),(103,'homefront_win32','Homefront','homefront_win32.xml'),(104,'hurtworld_linux32','Hurtworld','hurtworld_linux32.xml'),(105,'hurtworld_linux64','Hurtworld','hurtworld_linux64.xml'),(106,'hurtworld_win64','Hurtworld','hurtworld_win64.xml'),(107,'il2_win32','IL-2 Sturmovik','il2_win32.xml'),(108,'ins_linux32','Insurgency','insurgency_linux32.xml'),(109,'ins_win32','Insurgency','insurgency_win32.xml'),(110,'insurgencymic_win32','Insurgency: Modern Infantry Combat','insurgencymic_win32.xml'),(111,'insurgencysandstorm_linux64','Insurgency: Sandstorm','insurgencysandstorm_linux64.xml'),(112,'ivmp_linux32','IV Multiplayer','ivmp_linux32.xml'),(113,'ivmp_win32','IV Multiplayer','ivmp_win32.xml'),(114,'jcmp_linux32','Just Cause 2 Multiplayer','jcmp_linux.xml'),(115,'jcmp_win32','Just Cause 2 Multiplayer (Windows)','jcmp_win32.xml'),(116,'jediknight2_linux32','Jedi Knight 2','jediknight2.xml'),(117,'jediknightja_linux32','Jedi Knight: Jedi Academy','jediknightja.xml'),(118,'killingfloor_linux32','Killing Floor','killingfloor.xml'),(119,'killingfloor2_linux64','Killing Floor 2','killingfloor2_linux64.xml'),(120,'killingfloor2_win64','Killing Floor 2','killingfloor2_win64.xml'),(121,'killingfloor_win32','Killing Floor','killingfloor_win.xml'),(122,'left4dead2_linux32','Left 4 Dead 2','left4dead2_linux32.xml'),(123,'left4dead2_win32','Left 4 Dead 2','left4dead2_win32.xml'),(124,'left4dead_linux32','Left 4 Dead','left4dead_linux32.xml'),(125,'lifeisfeudal_win32','Life is Feudal','lifeisfeudal_win32.xml'),(126,'mafia2online_linux32','Mafia 2 Online','mafia2online_linux32.xml'),(127,'mafia2online_win32','Mafia 2 Online','mafia2online_win32.xml'),(128,'minecraft_linux32','Minecraft','minecraft_linux32.xml'),(129,'minecraft_linux64','Minecraft','minecraft_linux64.xml'),(130,'minecraft_win32','Minecraft','minecraft_win32.xml'),(131,'minecraft_win64','Minecraft','minecraft_win64.xml'),(132,'miscreated_win64','Miscreated','miscreated_win64.xml'),(133,'mohaa_linux32','Medal Of Honor: Allied Assault','mohaa.xml'),(134,'mohaa_win32','Medal Of Honor: Allied Assault (Windows)','mohaa_win.xml'),(135,'mohbr_win32','Medal Of Honor: Breakthrough (Windows)','mohbr_win.xml'),(136,'mohsp_linux32','Medal Of Honor: Spearhead','mohsp.xml'),(137,'mohsp_win32','Medal Of Honor: Spearhead (Windows)','mohsp_win.xml'),(138,'mohspdemo_win32','Medal Of Honor: Spearhead Demo Server (Windows)','mohspdemo_win.xml'),(139,'mordhau_linux64','Mordhau','mordhau_linux64.xml'),(140,'mab_warband_win32','Mount and Blade Warband','mount-and-blade_warband_win32.xml'),(141,'multitheftauto_linux32','Multi Theft Auto','multitheftauto_linux32.xml'),(142,'multitheftauto_linux64','Multi Theft Auto','multitheftauto_linux64.xml'),(143,'multitheftauto_win32','Multi Theft Auto','multitheftauto_win32.xml'),(144,'multitheftauto_win64','Multi Theft Auto','multitheftauto_win64.xml'),(145,'mumble_linux32','Murmur [Mumble server]','murmur.xml'),(146,'mumble_win32','Murmur [Mumble server]','murmur_win.xml'),(147,'ns2_linux32','Natural Selection 2','natural_selection_2_linux32.xml'),(148,'nexuiz_linux32','Nexuiz','nexuiz_32.xml'),(149,'nexuiz_linux64','Nexuiz','nexuiz_64.xml'),(150,'nexuiz_win32','Nexuiz','nexuiz_win.xml'),(151,'nmrih_steam_linux32','No More Room In Hell','nmrih_linux32.xml'),(152,'nmrih_steam_win32','No More Room In Hell','nmrih_win32.xml'),(153,'nucleardawn_linux','Nuclear Dawn (Linux)','nuclear_dawn.xml'),(154,'nucleardawn_win32','Nuclear Dawn','nuclear_dawn_win.xml'),(155,'ootow_win64','Outlaws of the Old West','ootow.xml'),(156,'openttd_linux32','OpenTTD','openttd_linux32.xml'),(157,'openttd_linux64','OpenTTD','openttd_linux64.xml'),(158,'openttd_win32','OpenTTD','openttd_win32.xml'),(159,'openttd_win64','OpenTTD','openttd_win64.xml'),(160,'pixark_win64','PixARK','pixark_win64.xml'),(161,'postscriptum_linux64','Post Scriptum','postscriptum_linux64.xml'),(162,'pvkii_linux32','Pirates, Vikings and Knights II','pvkii.xml'),(163,'quake3_linux32','Quake 3','quake3_linux.xml'),(164,'quake4_linux32','Quake 4','quake4_linux.xml'),(165,'redorchestra2_win32','Red Orchestra 2','redorchestra2_win32.xml'),(166,'reignofkings_win64','Reign of Kings','reignofkings_win64.xml'),(167,'ricochet_linux32','Ricochet','ricochet.xml'),(168,'risingstorm2_win64','Rising Storm 2: Vietnam','risingstrorm2_win64.xml'),(169,'rorserver_linux32','Rigs of Rods','ror_linux32.xml'),(170,'rorserver_win32','Rigs of Rods','ror_win.xml'),(171,'rust_linux64','Rust','rust_linux64.xml'),(172,'rust_win64','Rust','rust_win64.xml'),(173,'sanandreasmp_linux32','San Andreas Multiplayer','sanandreasmp_linux32.xml'),(174,'sanandreasmp_win32','San Andreas Multiplayer','sanandreasmp_win32.xml'),(175,'serioussamhdfe_win32','Serious Sam HD The First Encounter','serious_sam_hd_TFE_win.xml'),(176,'serioussamhdse_win32','Serious Sam HD The Second Encounter','serious_sam_hd_TSE_win.xml'),(177,'sms_linux32','ShootMania Storm','shootmania_storm_linux32.xml'),(178,'sms_win32','ShootMania Storm','shootmania_storm_win32.xml'),(179,'shoutcast_linux32','Shoutcast server','shoutcast.xml'),(180,'shoutcast_bot_linux32','Shoutcast server Bot','shoutcast_bot.xml'),(181,'sinusbot_linux64','SinusBot for TS 3 and Discord','sinusbot_linux64.xml'),(182,'smokinguns_linux32','Smokin Guns','smokin_guns.xml'),(183,'smokinguns_win32','Smokin Guns','smokin_guns_win.xml'),(184,'sniperelitev2_win32','Sniper Elite V2','sniperelitev2_win32.xml'),(185,'soldatserver_linux32','Soldat','soldat.xml'),(186,'space_engineers_win32','Space Engineers','space_engineers_win32.xml'),(187,'space_engineers_win64','Space Engineers','space_engineers_win64.xml'),(188,'spigotmc_linux','Spigot Server','spigotmc_linux.xml'),(189,'squad_linux64','Squad','squad_linux64.xml'),(190,'squad_win64','Squad','squad_win64.xml'),(191,'starbound_linux64','Starbound','starbound_linux64.xml'),(192,'starbound_win64','Starbound','starbound_win64.xml'),(193,'stationeers_linux64','Stationeers','stationeers_linux64.xml'),(194,'teamspeak2_linux32','TeamSpeak 2','teamspeak2.xml'),(195,'teamspeak2_win32','TeamSpeak 2','teamspeak2_win.xml'),(196,'teamspeak3_linux32','TeamSpeak 3','teamspeak3_linux32.xml'),(197,'teamspeak3_linux64','TeamSpeak 3','teamspeak3_linux64.xml'),(198,'teamspeak3_win32','TeamSpeak 3','teamspeak3_win32.xml'),(199,'teamspeak3_win64','TeamSpeak 3','teamspeak3_win64.xml'),(200,'tekkit_linux32','Tekkit','tekkit_linux32.xml'),(201,'tekkit_linux64','Tekkit','tekkit_linux64.xml'),(202,'tekkit_win32','Tekkit','tekkit_win32.xml'),(203,'tekkit_win64','Tekkit','tekkit_win64.xml'),(204,'terraria_win64','Terraria','terraria_win64.xml'),(205,'tf2_linux32','Team Fortress 2','tf2.xml'),(206,'tf2_win32','Team Fortress 2','tf2_win.xml'),(207,'tfc_linux32','Team Fortress Classic','tfc.xml'),(208,'tfc_win32','Team Fortress Classic','tfc_win32.xml'),(209,'theforest_win32','The Forest','theforest_win32.xml'),(210,'trackmanianations_linux32','TrackMania Nations','trackmanianations_linux32.xml'),(211,'trackmanianations_win32','TrackMania Nations','trackmanianations_win32.xml'),(212,'trackmanianf_linux32','TrackMania Nations Forever','trackmanianf_linux32.xml'),(213,'trackmanianf_win32','TrackMania Nations Forever','trackmanianf_win32.xml'),(214,'unreal_tournament_linux32','Unreal Tournament','unreal_tournament_linux32.xml'),(215,'unturned_linux32','Unturned','unturned_linux32.xml'),(216,'unturned_linux64','Unturned','unturned_linux64.xml'),(217,'unturned_win32','Unturned','unturned_win32.xml'),(218,'unturned_win64','Unturned','unturned_win64.xml'),(219,'ioUrT_linux32','Urban Terror 4','urban_terror_4.xml'),(220,'ioUrT_linux64','Urban Terror 4','urban_terror_4_64bit.xml'),(221,'ioUrT_windows32','Urban Terror 4','urban_terror_4_win.xml'),(222,'ut2004_linux32','Unreal Tournament 2004','ut2004_linux.xml'),(223,'ut2004_win32','Unreal Tournament 2004','ut2004_win.xml'),(224,'ut3_linux32','Unreal Tournament 3','ut3_linux.xml'),(225,'ut3_win32','Unreal Tournament 3','ut3_win.xml'),(226,'vbox_linux32','VirtualBox','vbox_linux32.xml'),(227,'ventrilo_linux32','Ventrilo','ventrilo_linux32.xml'),(228,'ventrilo_win32','Ventrilo','ventrilo_win32.xml'),(229,'vicecitymp_linux32','Vice City Multiplayer','vicecitymp_linux32.xml'),(230,'vicecitymp_linux64','Vice City Multiplayer','vicecitymp_linux64.xml'),(231,'vicecitymp_win32','Vice City Multiplayer','vicecitymp_win32.xml'),(232,'vicecitymp_win64','Vice City Multiplayer','vicecitymp_win64.xml'),(233,'warsow_linux32','Warsow','warsow_linux32.xml'),(234,'warsow_linux64','Warsow','warsow_linux64.xml'),(235,'warsow_win32','Warsow','warsow_win32.xml'),(236,'warsow_win64','Warsow','warsow_win64.xml'),(237,'enemyterritory_linux32','Wolfenstein: Enemy Territory','wolfet.xml'),(238,'wolfrtcw_1.4_linux32','Wolfenstein: Return To Castle Wolfenstein 1.4','wolfrtcw_1.4_linux.xml'),(239,'wreckfest_win32','Wreckfest','wreckfest_win32.xml'),(240,'wurmu_win32','Wurm Unlimited','wurmu_win32.xml'),(241,'xonotic_linux32','Xonotic','xonotic_linux32.xml'),(242,'xonotic_linux64','Xonotic','xonotic_linux64.xml'),(243,'xonotic_win32','Xonotic','xonotic_win32.xml'),(244,'zps_linux32','Zombie Panic! Source','zps_linux32.xml'),(245,'zps_win32','Zombie Panic! Source','zps_win32.xml');
/*!40000 ALTER TABLE `ogp_config_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_config_mods`
--

DROP TABLE IF EXISTS `ogp_config_mods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_config_mods` (
                                   `mod_cfg_id` int(50) NOT NULL AUTO_INCREMENT,
                                   `home_cfg_id` varchar(50) NOT NULL,
                                   `mod_key` varchar(100) NOT NULL COMMENT 'mod short name - used by the game server for startup commands - ex cstrike',
                                   `mod_name` varchar(255) NOT NULL COMMENT 'Mod value is user defined string - like Counter-Strike',
                                   `def_precmd` text,
                                   `def_postcmd` text,
                                   PRIMARY KEY (`mod_cfg_id`),
                                   UNIQUE KEY `home_cfg_id` (`home_cfg_id`,`mod_key`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_config_mods`
--

LOCK TABLES `ogp_config_mods` WRITE;
/*!40000 ALTER TABLE `ogp_config_mods` DISABLE KEYS */;
INSERT INTO `ogp_config_mods` VALUES (1,'1','7daystodie1','Stable',NULL,NULL),(2,'1','7daystodie2','Unstable build',NULL,NULL),(3,'2','7daystodie1','Stable',NULL,NULL),(4,'2','7daystodie2','Unstable build',NULL,NULL),(5,'3','7daystodie1','Stable',NULL,NULL),(6,'3','7daystodie2','Unstable build',NULL,NULL),(7,'4','smashball','none',NULL,NULL),(8,'5','synergy','none',NULL,NULL),(9,'6','default','None',NULL,NULL),(10,'7','ageofchivalry','none',NULL,NULL),(11,'8','default','None',NULL,NULL),(12,'9','default','None',NULL,NULL),(13,'10','arma2','none',NULL,NULL),(14,'11','arma2','none',NULL,NULL),(15,'12','arma2co','none',NULL,NULL),(16,'13','arma2co','none',NULL,NULL),(17,'14','arma2oa','none',NULL,NULL),(18,'15','arma2oa','none',NULL,NULL),(19,'16','Arma3','none',NULL,NULL),(20,'17','Arma3','none',NULL,NULL),(21,'18','Arma3','none',NULL,NULL),(22,'19','assettocorsa','None',NULL,NULL),(23,'20','assettocorsa','None',NULL,NULL),(24,'21','default','None',NULL,NULL),(25,'22','default','None',NULL,NULL),(26,'23','avorion','none',NULL,NULL),(27,'24','bf2','Battlefield 2',NULL,NULL),(28,'24','xpack','Special Forces',NULL,NULL),(29,'24','fh2','Forgotten Hope 2',NULL,NULL),(30,'25','bf2','Battlefield 2',NULL,NULL),(31,'25','xpack','Special Forces',NULL,NULL),(32,'25','fh2','Forgotten Hope 2',NULL,NULL),(33,'26','bfbc2','none',NULL,NULL),(34,'27','b3','None',NULL,NULL),(35,'28','b3','None',NULL,NULL),(36,'29','1','none',NULL,NULL),(37,'30','brainbread2','none',NULL,NULL),(38,'31','brainbread2','none',NULL,NULL),(39,'32','bukkit','None',NULL,NULL),(40,'33','bukkit','None',NULL,NULL),(41,'34','bukkit','None',NULL,NULL),(42,'35','bukkit','None',NULL,NULL),(43,'36','default','None',NULL,NULL),(44,'37','default','None',NULL,NULL),(45,'38','default','None',NULL,NULL),(46,'39','default','None',NULL,NULL),(47,'40','default','None',NULL,NULL),(48,'41','default','None',NULL,NULL),(49,'42','default','None',NULL,NULL),(50,'43','default','None',NULL,NULL),(51,'44','default','None',NULL,NULL),(52,'45','default','None',NULL,NULL),(53,'46','default','None',NULL,NULL),(54,'47','default','None',NULL,NULL),(55,'48','default','None',NULL,NULL),(56,'49','default','None',NULL,NULL),(57,'50','default','none',NULL,NULL),(58,'51','colonysurvival','none',NULL,NULL),(59,'52','default','None',NULL,NULL),(60,'53','cstrike','none',NULL,NULL),(61,'54','cstrike','none',NULL,NULL),(62,'55','default','None',NULL,NULL),(63,'56','default','None',NULL,NULL),(64,'57','csgo','none',NULL,NULL),(65,'58','csgo','none',NULL,NULL),(66,'59','cspromod','none',NULL,NULL),(67,'60','cspromod','none',NULL,NULL),(68,'61','cstrike','none',NULL,NULL),(69,'62','cstrike','none',NULL,NULL),(70,'63','czero','none',NULL,NULL),(71,'64','czero','none',NULL,NULL),(72,'65','dayzmod','none',NULL,NULL),(73,'66','dayzmod','none',NULL,NULL),(74,'67','dayzmod','none',NULL,NULL),(75,'68','default','None',NULL,NULL),(76,'69','dmc','none',NULL,NULL),(77,'70','dmc','none',NULL,NULL),(78,'71','dod','none',NULL,NULL),(79,'72','dod','none',NULL,NULL),(80,'73','dod','none',NULL,NULL),(81,'74','dod','none',NULL,NULL),(82,'75','doi','none',NULL,NULL),(83,'76','doi','none',NULL,NULL),(84,'77','dontstarvetogether','none',NULL,NULL),(85,'78','dystopia','none',NULL,NULL),(86,'79','default','None',NULL,NULL),(87,'80','empyriongs1','Stable',NULL,NULL),(88,'80','empyriongs2','Unstable Test Branch',NULL,NULL),(89,'81','esmod','none',NULL,NULL),(90,'82','feedthebeast','none',NULL,NULL),(91,'83','feedthebeast','none',NULL,NULL),(92,'84','fgms','None',NULL,NULL),(93,'85','fof','none',NULL,NULL),(94,'86','fof','none',NULL,NULL),(95,'87','default','None',NULL,NULL),(96,'88','default','None',NULL,NULL),(97,'89','freecol','None',NULL,NULL),(98,'90','freecol','None',NULL,NULL),(99,'91','freecol','None',NULL,NULL),(100,'92','freecol','None',NULL,NULL),(101,'93','garrysmod','none',NULL,NULL),(102,'94','garrysmod','none',NULL,NULL),(103,'95','gearbox','none',NULL,NULL),(104,'96','halo_ce','none',NULL,NULL),(105,'97','hiddensource','none',NULL,NULL),(106,'98','hl2mp','none',NULL,NULL),(107,'99','hl2mp','none',NULL,NULL),(108,'100','valve','none',NULL,NULL),(109,'101','valve','none',NULL,NULL),(110,'102','valve','none',NULL,NULL),(111,'103','default','None',NULL,NULL),(112,'104','default','None',NULL,NULL),(113,'105','default','None',NULL,NULL),(114,'106','default','None',NULL,NULL),(115,'107','none','None',NULL,NULL),(116,'108','insurgency','none',NULL,NULL),(117,'109','insurgency','none',NULL,NULL),(118,'110','insurgency','None',NULL,NULL),(119,'111','sandstorm','none',NULL,NULL),(120,'112','ivmp','None',NULL,NULL),(121,'113','ivmp','None',NULL,NULL),(122,'114','jcmp','none',NULL,NULL),(123,'115','jcmp','none',NULL,NULL),(124,'116','base','BaseJK2',NULL,NULL),(125,'116','DS-Online','DS-Online',NULL,NULL),(126,'116','Movie_Battles','Movie_Battles',NULL,NULL),(127,'116','Forcemod_2','Forcemod_2',NULL,NULL),(128,'116','Jedi Enhancers','Jedi Enhancers',NULL,NULL),(129,'116','JediMod','JediMod',NULL,NULL),(130,'117','base','BaseJK3',NULL,NULL),(131,'117','MBII','MovieBattles II',NULL,NULL),(132,'117','lugormod','Lugormod',NULL,NULL),(133,'117','forcemod','Force Mod',NULL,NULL),(134,'117','ojpenhanced','OJP Enhanced',NULL,NULL),(135,'117','ojpbasic','OJP Basic',NULL,NULL),(136,'118','KFmod.KFGameType','none',NULL,NULL),(137,'119','killingfloor2','none',NULL,NULL),(138,'120','killingfloor2','none',NULL,NULL),(139,'121','KFmod.KFGameType','none',NULL,NULL),(140,'122','left4dead2','none',NULL,NULL),(141,'123','left4dead2','none',NULL,NULL),(142,'124','left4dead','none',NULL,NULL),(143,'125','default','None',NULL,NULL),(144,'126','m2o','None',NULL,NULL),(145,'127','m2o','None',NULL,NULL),(146,'128','default','None',NULL,NULL),(147,'129','default','None',NULL,NULL),(148,'130','default','None',NULL,NULL),(149,'131','default','None',NULL,NULL),(150,'132','MiscreatedDedicatedServer','none',NULL,NULL),(151,'133','1','Free-For-All',NULL,NULL),(152,'133','2','Team Death Match',NULL,NULL),(153,'133','3','Round Based Match',NULL,NULL),(154,'133','4','Objective',NULL,NULL),(155,'134','1','Free-For-All',NULL,NULL),(156,'134','2','Team Death Match',NULL,NULL),(157,'134','3','Round Based Match',NULL,NULL),(158,'134','4','Objective',NULL,NULL),(159,'135','1','Free-For-All',NULL,NULL),(160,'135','2','Team Death Match',NULL,NULL),(161,'135','3','Round Based Match',NULL,NULL),(162,'135','4','Objective',NULL,NULL),(163,'136','1','Free-For-All',NULL,NULL),(164,'136','2','Team Death Match',NULL,NULL),(165,'136','3','Round Based Match',NULL,NULL),(166,'136','4','Objective',NULL,NULL),(167,'137','1','Free-For-All',NULL,NULL),(168,'137','2','Team Death Match',NULL,NULL),(169,'137','3','Round Based Match',NULL,NULL),(170,'137','4','Objective',NULL,NULL),(171,'138','1','Free-For-All',NULL,NULL),(172,'138','2','Team Death Match',NULL,NULL),(173,'138','3','Round Based Match',NULL,NULL),(174,'138','4','Objective',NULL,NULL),(175,'139','default','None',NULL,NULL),(176,'140','mab_warband','none',NULL,NULL),(177,'141','default','None',NULL,NULL),(178,'142','default','None',NULL,NULL),(179,'143','default','None',NULL,NULL),(180,'144','default','None',NULL,NULL),(181,'145','murmur','none',NULL,NULL),(182,'146','murmur','none',NULL,NULL),(183,'147','ns2','none',NULL,NULL),(184,'148','nexuiz','none',NULL,NULL),(185,'149','nexuiz','none',NULL,NULL),(186,'150','nexuiz','none',NULL,NULL),(187,'151','nmrih','none',NULL,NULL),(188,'152','nmrih','none',NULL,NULL),(189,'153','nucleardawn','none',NULL,NULL),(190,'154','nucleardawn','none',NULL,NULL),(191,'155','default','None',NULL,NULL),(192,'156','default','None',NULL,NULL),(193,'157','default','None',NULL,NULL),(194,'158','default','None',NULL,NULL),(195,'159','default','None',NULL,NULL),(196,'160','default','None',NULL,NULL),(197,'161','default','None',NULL,NULL),(198,'162','pvkii','none',NULL,NULL),(199,'163','quake3','none',NULL,NULL),(200,'164','quake4','none',NULL,NULL),(201,'165','redorchestra2','none',NULL,NULL),(202,'166','default','None',NULL,NULL),(203,'167','ricochet','none',NULL,NULL),(204,'168','risingstorm2','none',NULL,NULL),(205,'169','ror','None',NULL,NULL),(206,'170','ror','None',NULL,NULL),(207,'171','default','None',NULL,NULL),(208,'172','default','None',NULL,NULL),(209,'173','default','None',NULL,NULL),(210,'174','default','None',NULL,NULL),(211,'175','serioussamhdfe','none',NULL,NULL),(212,'176','serioussamhdse','none',NULL,NULL),(213,'177','sms','none',NULL,NULL),(214,'178','sms','none',NULL,NULL),(215,'179','default','none',NULL,NULL),(216,'180','default','none',NULL,NULL),(217,'181','sinusbot','none',NULL,NULL),(218,'182','smokingguns','none',NULL,NULL),(219,'183','smokingguns','none',NULL,NULL),(220,'184','default','None',NULL,NULL),(221,'185','default','none',NULL,NULL),(222,'186','space_engineers','none',NULL,NULL),(223,'187','space_engineers','none',NULL,NULL),(224,'188','spigot','none',NULL,NULL),(225,'189','default','None',NULL,NULL),(226,'190','default','None',NULL,NULL),(227,'191','default','None',NULL,NULL),(228,'192','default','None',NULL,NULL),(229,'193','Stationeers','None',NULL,NULL),(230,'194','ts2','none',NULL,NULL),(231,'195','ts2','none',NULL,NULL),(232,'196','default','None',NULL,NULL),(233,'197','default','None',NULL,NULL),(234,'198','default','None',NULL,NULL),(235,'199','default','None',NULL,NULL),(236,'200','tekkit','None',NULL,NULL),(237,'201','tekkit','None',NULL,NULL),(238,'202','tekkit','None',NULL,NULL),(239,'203','tekkit','None',NULL,NULL),(240,'204','default','None',NULL,NULL),(241,'205','tf','none',NULL,NULL),(242,'206','tf','none',NULL,NULL),(243,'207','tfc','none',NULL,NULL),(244,'208','tfc','none',NULL,NULL),(245,'209','default','None',NULL,NULL),(246,'210','tmn','None',NULL,NULL),(247,'211','tmn','None',NULL,NULL),(248,'212','tmnf','None',NULL,NULL),(249,'213','tmnf','None',NULL,NULL),(250,'214','ut','none',NULL,NULL),(251,'215','default','None',NULL,NULL),(252,'216','default','None',NULL,NULL),(253,'217','default','None',NULL,NULL),(254,'218','default','None',NULL,NULL),(255,'219','0','Free For All',NULL,NULL),(256,'219','3','Team Death Match',NULL,NULL),(257,'219','4','Team Survivor',NULL,NULL),(258,'219','5','Follow the leader',NULL,NULL),(259,'219','6','Capture and Hold',NULL,NULL),(260,'219','7','Capture the Flag',NULL,NULL),(261,'219','8','Bomb Mode',NULL,NULL),(262,'220','0','Free For All',NULL,NULL),(263,'220','3','Team Death Match',NULL,NULL),(264,'220','4','Team Survivor',NULL,NULL),(265,'220','5','Follow the leader',NULL,NULL),(266,'220','6','Capture and Hold',NULL,NULL),(267,'220','7','Capture the Flag',NULL,NULL),(268,'220','8','Bomb Mode',NULL,NULL),(269,'221','0','Free For All',NULL,NULL),(270,'221','3','Team Death Match',NULL,NULL),(271,'221','4','Team Survivor',NULL,NULL),(272,'221','5','Follow the leader',NULL,NULL),(273,'221','6','Capture and Hold',NULL,NULL),(274,'221','7','Capture the Flag',NULL,NULL),(275,'221','8','Bomb Mode',NULL,NULL),(276,'222','UT2k4Assault.ASGameInfo','Assault',NULL,NULL),(277,'222','XGame.xCTFGame','Capture The Flag',NULL,NULL),(278,'222','XGame.xBombingRun','Bombing Run',NULL,NULL),(279,'222','xGame.xDoubleDom','Double Domination',NULL,NULL),(280,'222','XGame.xDeathMatch','Death Match',NULL,NULL),(281,'222','SkaarjPack.Invasion','Invasion',NULL,NULL),(282,'222','BonusPack.xLastManStandingGame','Last Man Standing',NULL,NULL),(283,'222','BonusPack.xMutantGame','Mutant',NULL,NULL),(284,'222','Onslaught.ONSOnslaughtGame','Onslaught',NULL,NULL),(285,'222','XGame.xTeamGame','Team Death Match',NULL,NULL),(286,'222','XGame.xVehicleCTFGame','Vehicle CTF',NULL,NULL),(287,'223','UT2k4Assault.ASGameInfo','Assault',NULL,NULL),(288,'223','XGame.xCTFGame','Capture The Flag',NULL,NULL),(289,'223','XGame.xBombingRun','Bombing Run',NULL,NULL),(290,'223','xGame.xDoubleDom','Double Domination',NULL,NULL),(291,'223','XGame.xDeathMatch','Death Match',NULL,NULL),(292,'223','SkaarjPack.Invasion','Invasion',NULL,NULL),(293,'223','BonusPack.xLastManStandingGame','Last Man Standing',NULL,NULL),(294,'223','BonusPack.xMutantGame','Mutant',NULL,NULL),(295,'223','Onslaught.ONSOnslaughtGame','Onslaught',NULL,NULL),(296,'223','XGame.xTeamGame','Team Death Match',NULL,NULL),(297,'223','XGame.xVehicleCTFGame','Vehicle CTF',NULL,NULL),(298,'224','UTGame.UTDeathmatch','DeathMatch',NULL,NULL),(299,'224','UTGameContent.UTCTFGame_Content','Capture the Flag',NULL,NULL),(300,'224','UTGameContent.UTOnslaughtGame_Content','Warfare',NULL,NULL),(301,'224','UTGameContent.UTVehicleCTFGame_Content','Vehicle Capture The Flag',NULL,NULL),(302,'224','UTGame.UTTeamGame','Team DeatMatch',NULL,NULL),(303,'224','UTGame.UTDuelGame ','Duel',NULL,NULL),(304,'225','UTGame.UTDeathmatch','DeathMatch',NULL,NULL),(305,'225','UTGameContent.UTCTFGame_Content','Capture the Flag',NULL,NULL),(306,'225','UTGameContent.UTOnslaughtGame_Content','Warfare',NULL,NULL),(307,'225','UTGameContent.UTVehicleCTFGame_Content','Vehicle Capture The Flag',NULL,NULL),(308,'225','UTGame.UTTeamGame','Team DeatMatch',NULL,NULL),(309,'225','UTGame.UTDuelGame ','Duel',NULL,NULL),(310,'226','vbox','none',NULL,NULL),(311,'227','default','None',NULL,NULL),(312,'228','default','None',NULL,NULL),(313,'229','default','None',NULL,NULL),(314,'230','default','None',NULL,NULL),(315,'231','default','None',NULL,NULL),(316,'232','default','None',NULL,NULL),(317,'233','warsow','none',NULL,NULL),(318,'234','warsow','none',NULL,NULL),(319,'235','warsow','none',NULL,NULL),(320,'236','warsow','none',NULL,NULL),(321,'237','etmain','ET Main',NULL,NULL),(322,'237','etpro','ET Pro',NULL,NULL),(323,'237','tjmod','TJ Mod',NULL,NULL),(324,'237','etjump','ET Jump',NULL,NULL),(325,'237','jaymod','Jaymod',NULL,NULL),(326,'237','nq','No Quarter',NULL,NULL),(327,'238','osp','osp',NULL,NULL),(328,'239','default','None',NULL,NULL),(329,'240','wurmu','none',NULL,NULL),(330,'241','xonotic','none',NULL,NULL),(331,'242','xonotic','none',NULL,NULL),(332,'243','xonotic','none',NULL,NULL),(333,'244','zps','none',NULL,NULL),(334,'245','zps','none',NULL,NULL);
/*!40000 ALTER TABLE `ogp_config_mods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_game_mods`
--

DROP TABLE IF EXISTS `ogp_game_mods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_game_mods` (
                                 `mod_id` int(50) NOT NULL AUTO_INCREMENT,
                                 `home_id` int(255) NOT NULL,
                                 `mod_cfg_id` int(11) NOT NULL,
                                 `max_players` smallint(3) DEFAULT NULL,
                                 `extra_params` varchar(255) DEFAULT NULL,
                                 `cpu_affinity` varchar(64) DEFAULT NULL,
                                 `nice` smallint(3) DEFAULT '0',
                                 `precmd` text,
                                 `postcmd` text,
                                 PRIMARY KEY (`mod_id`),
                                 UNIQUE KEY `home_id` (`home_id`,`mod_cfg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='utf8mb4_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_game_mods`
--

LOCK TABLES `ogp_game_mods` WRITE;
/*!40000 ALTER TABLE `ogp_game_mods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_game_mods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_home_ip_ports`
--

DROP TABLE IF EXISTS `ogp_home_ip_ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_home_ip_ports` (
                                     `ip_id` int(11) NOT NULL,
                                     `port` int(11) NOT NULL,
                                     `home_id` int(11) NOT NULL,
                                     `force_mod_id` int(11) NOT NULL DEFAULT '0',
                                     PRIMARY KEY (`ip_id`,`port`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_home_ip_ports`
--

LOCK TABLES `ogp_home_ip_ports` WRITE;
/*!40000 ALTER TABLE `ogp_home_ip_ports` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_home_ip_ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_logger`
--

DROP TABLE IF EXISTS `ogp_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_logger` (
                              `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                              `date` varchar(20) NOT NULL,
                              `user_id` int(11) NOT NULL,
                              `ip` varchar(15) NOT NULL,
                              `message` varchar(250) NOT NULL,
                              PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_logger`
--

LOCK TABLES `ogp_logger` WRITE;
/*!40000 ALTER TABLE `ogp_logger` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_logger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_master_server_homes`
--

DROP TABLE IF EXISTS `ogp_master_server_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_master_server_homes` (
                                           `home_id` int(11) NOT NULL,
                                           `home_cfg_id` int(11) NOT NULL,
                                           `remote_server_id` int(11) NOT NULL,
                                           PRIMARY KEY (`remote_server_id`,`home_cfg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_master_server_homes`
--

LOCK TABLES `ogp_master_server_homes` WRITE;
/*!40000 ALTER TABLE `ogp_master_server_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_master_server_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_module_access_rights`
--

DROP TABLE IF EXISTS `ogp_module_access_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_module_access_rights` (
                                            `module_id` int(11) NOT NULL COMMENT 'This references to modules.id',
                                            `flag` char(1) NOT NULL,
                                            `description` varchar(64) NOT NULL,
                                            UNIQUE KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_module_access_rights`
--

LOCK TABLES `ogp_module_access_rights` WRITE;
/*!40000 ALTER TABLE `ogp_module_access_rights` DISABLE KEYS */;
INSERT INTO `ogp_module_access_rights` VALUES (8,'t','allow_ftp'),(9,'u','allow_updates'),(9,'p','allow_parameter_usage'),(9,'e','allow_extra_params'),(9,'c','allow_custom_fields'),(10,'f','allow_file_management');
/*!40000 ALTER TABLE `ogp_module_access_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_module_menus`
--

DROP TABLE IF EXISTS `ogp_module_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_module_menus` (
                                    `module_id` int(11) NOT NULL COMMENT 'This references to modules.id',
                                    `subpage` varchar(64) NOT NULL DEFAULT '',
                                    `group` varchar(32) NOT NULL,
                                    `menu_name` varchar(128) NOT NULL,
                                    `pos` int(10) unsigned NOT NULL,
                                    PRIMARY KEY (`module_id`,`subpage`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_module_menus`
--

LOCK TABLES `ogp_module_menus` WRITE;
/*!40000 ALTER TABLE `ogp_module_menus` DISABLE KEYS */;
INSERT INTO `ogp_module_menus` VALUES (1,'','admin','Modules',0),(2,'','user','ts3admin',0),(3,'addons_manager','admin','Addons Manager',0),(4,'watch_logger','admin','Watch Logger',0),(5,'','admin','Game/Mod Config',0),(6,'dashboard','user','Dashboard',0),(7,'','admin','Extras',0),(8,'ftp_admin','admin','FTP Admin',0),(9,'game_monitor','user','Game Monitor',0),(10,'litefm_settings','admin','LiteFM Settings',0),(12,'mysql_admin','admin','MySQL Admin',0),(13,'form','guest','Register',0),(14,'','admin','Servers',0),(15,'','admin','Panel Settings',0),(15,'themes','admin','Theme Settings',0),(17,'','admin','Update',0),(18,'','admin','User Admin',0),(18,'show_groups','admin','Group Admin',0),(19,'','admin','Game Servers',0);
/*!40000 ALTER TABLE `ogp_module_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_modules`
--

DROP TABLE IF EXISTS `ogp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_modules` (
                               `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
                               `title` varchar(100) NOT NULL DEFAULT '',
                               `folder` varchar(100) NOT NULL DEFAULT '',
                               `version` varchar(10) NOT NULL DEFAULT '0',
                               `db_version` int(10) NOT NULL DEFAULT '0',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `folder` (`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_modules`
--

LOCK TABLES `ogp_modules` WRITE;
/*!40000 ALTER TABLE `ogp_modules` DISABLE KEYS */;
INSERT INTO `ogp_modules` VALUES (1,'Module manager','modulemanager','1.1',2),(2,'TS3Admin','TS3Admin','0.2',2),(3,'Addons Manager','addonsmanager','1.2',2),(4,'Administration','administration','1.1',1),(5,'Config games','config_games','1.0',0),(6,'Dashboard','dashboard','1.0',0),(7,'Extras','extras','alpha',0),(8,'ftp','ftp','1.41',1),(9,'Game manager','gamemanager','1.33',8),(10,'Lite File Manager','litefm','1.11',1),(11,'Lost Password','lostpwd','1.0',0),(12,'MySQL','mysql','0.1',0),(13,'register','register','1.2',0),(14,'Server manager','server','1.6.1',7),(15,'Settings','settings','1.1',1),(16,'subusers','subusers','1.0',0),(17,'Update','update','1.1',2),(18,'User admin','user_admin','1.1',7),(19,'User games','user_games','1.3',3);
/*!40000 ALTER TABLE `ogp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_mysql_databases`
--

DROP TABLE IF EXISTS `ogp_mysql_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_mysql_databases` (
                                       `db_id` int(11) NOT NULL AUTO_INCREMENT,
                                       `mysql_server_id` int(11) NOT NULL,
                                       `home_id` int(11) NOT NULL,
                                       `db_user` varchar(50) NOT NULL,
                                       `db_passwd` varchar(50) NOT NULL,
                                       `db_name` varchar(50) NOT NULL,
                                       `enabled` int(11) NOT NULL,
                                       PRIMARY KEY (`db_id`),
                                       UNIQUE KEY `mysql_server_id` (`mysql_server_id`,`db_name`),
                                       UNIQUE KEY `mysql_server_id_2` (`mysql_server_id`,`db_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_mysql_databases`
--

LOCK TABLES `ogp_mysql_databases` WRITE;
/*!40000 ALTER TABLE `ogp_mysql_databases` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_mysql_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_mysql_servers`
--

DROP TABLE IF EXISTS `ogp_mysql_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_mysql_servers` (
                                     `mysql_server_id` int(11) NOT NULL AUTO_INCREMENT,
                                     `remote_server_id` int(11) NOT NULL,
                                     `mysql_name` varchar(100) NOT NULL,
                                     `mysql_ip` varchar(255) NOT NULL,
                                     `mysql_port` int(11) NOT NULL,
                                     `mysql_root_passwd` varchar(32) DEFAULT NULL,
                                     `privilegies_str` longtext,
                                     PRIMARY KEY (`mysql_server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_mysql_servers`
--

LOCK TABLES `ogp_mysql_servers` WRITE;
/*!40000 ALTER TABLE `ogp_mysql_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_mysql_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_rcon_presets`
--

DROP TABLE IF EXISTS `ogp_rcon_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_rcon_presets` (
                                    `preset_id` int(50) NOT NULL AUTO_INCREMENT,
                                    `name` varchar(20) NOT NULL,
                                    `command` varchar(100) NOT NULL,
                                    `home_cfg_id` int(50) NOT NULL,
                                    `mod_cfg_id` int(50) NOT NULL,
                                    PRIMARY KEY (`preset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_rcon_presets`
--

LOCK TABLES `ogp_rcon_presets` WRITE;
/*!40000 ALTER TABLE `ogp_rcon_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_rcon_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_remote_server_ips`
--

DROP TABLE IF EXISTS `ogp_remote_server_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_remote_server_ips` (
                                         `ip_id` int(11) NOT NULL AUTO_INCREMENT,
                                         `remote_server_id` int(11) NOT NULL,
                                         `ip` varchar(255) NOT NULL,
                                         PRIMARY KEY (`ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_remote_server_ips`
--

LOCK TABLES `ogp_remote_server_ips` WRITE;
/*!40000 ALTER TABLE `ogp_remote_server_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_remote_server_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_remote_servers`
--

DROP TABLE IF EXISTS `ogp_remote_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_remote_servers` (
                                      `remote_server_id` int(11) NOT NULL AUTO_INCREMENT,
                                      `remote_server_name` varchar(100) NOT NULL,
                                      `ogp_user` varchar(100) NOT NULL,
                                      `agent_ip` varchar(255) NOT NULL,
                                      `agent_port` int(11) NOT NULL,
                                      `ftp_port` int(11) NOT NULL,
                                      `encryption_key` varchar(50) NOT NULL,
                                      `timeout` int(11) NOT NULL,
                                      `use_nat` int(11) NOT NULL,
                                      `ftp_ip` varchar(255) NOT NULL,
                                      `firewall_settings` longtext,
                                      `display_public_ip` varchar(255) NOT NULL,
                                      PRIMARY KEY (`remote_server_id`),
                                      UNIQUE KEY `agent_ip` (`agent_ip`,`agent_port`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Remote servers and IPs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_remote_servers`
--

LOCK TABLES `ogp_remote_servers` WRITE;
/*!40000 ALTER TABLE `ogp_remote_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_remote_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_server_homes`
--

DROP TABLE IF EXISTS `ogp_server_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_server_homes` (
                                    `home_id` int(50) NOT NULL AUTO_INCREMENT,
                                    `remote_server_id` int(11) NOT NULL,
                                    `user_id_main` int(11) NOT NULL,
                                    `home_path` varchar(100) NOT NULL,
                                    `home_cfg_id` int(50) NOT NULL,
                                    `home_name` varchar(128) NOT NULL,
                                    `control_password` varchar(32) DEFAULT NULL,
                                    `ftp_password` varchar(16) DEFAULT NULL,
                                    `last_param` longtext,
                                    `ftp_login` varchar(32) DEFAULT NULL,
                                    `ftp_status` int(11) NOT NULL DEFAULT '0',
                                    `custom_fields` longtext,
                                    `server_expiration_date` varchar(21) NOT NULL DEFAULT 'X',
                                    `home_user_order` int(11) NOT NULL DEFAULT '99999',
                                    PRIMARY KEY (`home_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_server_homes`
--

LOCK TABLES `ogp_server_homes` WRITE;
/*!40000 ALTER TABLE `ogp_server_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_server_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_settings`
--

DROP TABLE IF EXISTS `ogp_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_settings` (
                                `setting` varchar(63) NOT NULL,
                                `value` varchar(1024) NOT NULL,
                                PRIMARY KEY (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_settings`
--

LOCK TABLES `ogp_settings` WRITE;
/*!40000 ALTER TABLE `ogp_settings` DISABLE KEYS */;
INSERT INTO `ogp_settings` VALUES ('title','Open Game Panel'),('slogan','The Open-Source one!'),('ogp_version','0'),('version_type','SVN'),('theme','Revolution'),('welcome_title','1'),('welcome_title_message','<h0>Welcome! <b style=\'font-size:12px; font-weight:normal;\'>You can change this title in \'<a href=\'?m=settings&p=themes\'>Theme Settings</a>\' under the \'<a href=\'?m=administration&p=main\'>Administration</a>\' tab.</b></h0>'),('page_auto_refresh','1');
/*!40000 ALTER TABLE `ogp_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_status_cache`
--

DROP TABLE IF EXISTS `ogp_status_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_status_cache` (
                                    `date_timestamp` char(16) NOT NULL,
                                    `ip_id` char(3) NOT NULL,
                                    `port` char(6) NOT NULL,
                                    `server_status_cache` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_status_cache`
--

LOCK TABLES `ogp_status_cache` WRITE;
/*!40000 ALTER TABLE `ogp_status_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_status_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_ts3_homes`
--

DROP TABLE IF EXISTS `ogp_ts3_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_ts3_homes` (
                                 `ts3_id` int(50) NOT NULL AUTO_INCREMENT,
                                 `rserver_id` int(50) NOT NULL,
                                 `ip` varchar(20) NOT NULL,
                                 `pwd` varchar(40) NOT NULL,
                                 `vserver_id` int(50) NOT NULL,
                                 `user_id` int(50) NOT NULL,
                                 `port` int(11) DEFAULT '10011',
                                 PRIMARY KEY (`ts3_id`),
                                 UNIQUE KEY `rserver_id` (`rserver_id`,`vserver_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_ts3_homes`
--

LOCK TABLES `ogp_ts3_homes` WRITE;
/*!40000 ALTER TABLE `ogp_ts3_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_ts3_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_update_blacklist`
--

DROP TABLE IF EXISTS `ogp_update_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_update_blacklist` (
                                        `file_path` varchar(1000) DEFAULT NULL,
                                        UNIQUE KEY `file_path` (`file_path`),
                                        UNIQUE KEY `file_path_2` (`file_path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_update_blacklist`
--

LOCK TABLES `ogp_update_blacklist` WRITE;
/*!40000 ALTER TABLE `ogp_update_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_update_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_user_group_homes`
--

DROP TABLE IF EXISTS `ogp_user_group_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_user_group_homes` (
                                        `home_id` int(11) NOT NULL,
                                        `group_id` int(11) NOT NULL,
                                        `access_rights` varchar(63) DEFAULT NULL,
                                        `user_group_expiration_date` varchar(21) NOT NULL DEFAULT 'X',
                                        PRIMARY KEY (`home_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_user_group_homes`
--

LOCK TABLES `ogp_user_group_homes` WRITE;
/*!40000 ALTER TABLE `ogp_user_group_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_user_group_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_user_group_info`
--

DROP TABLE IF EXISTS `ogp_user_group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_user_group_info` (
                                       `group_id` int(11) NOT NULL AUTO_INCREMENT,
                                       `group_name` varchar(255) DEFAULT NULL,
                                       `main_user_id` int(11) DEFAULT NULL,
                                       PRIMARY KEY (`group_id`),
                                       UNIQUE KEY `group_name` (`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_user_group_info`
--

LOCK TABLES `ogp_user_group_info` WRITE;
/*!40000 ALTER TABLE `ogp_user_group_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_user_group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_user_group_remote_servers`
--

DROP TABLE IF EXISTS `ogp_user_group_remote_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_user_group_remote_servers` (
                                                 `remote_server_id` int(11) NOT NULL,
                                                 `group_id` int(11) NOT NULL,
                                                 `access_rights` varchar(63) DEFAULT NULL,
                                                 PRIMARY KEY (`remote_server_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_user_group_remote_servers`
--

LOCK TABLES `ogp_user_group_remote_servers` WRITE;
/*!40000 ALTER TABLE `ogp_user_group_remote_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_user_group_remote_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_user_groups`
--

DROP TABLE IF EXISTS `ogp_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_user_groups` (
                                   `user_id` int(11) NOT NULL,
                                   `role_id` int(11) DEFAULT NULL,
                                   `group_id` int(11) NOT NULL,
                                   PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_user_groups`
--

LOCK TABLES `ogp_user_groups` WRITE;
/*!40000 ALTER TABLE `ogp_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_user_homes`
--

DROP TABLE IF EXISTS `ogp_user_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_user_homes` (
                                  `home_id` int(11) NOT NULL,
                                  `user_id` int(11) NOT NULL,
                                  `access_rights` varchar(63) DEFAULT NULL,
                                  `user_expiration_date` varchar(21) NOT NULL DEFAULT 'X',
                                  PRIMARY KEY (`user_id`,`home_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_user_homes`
--

LOCK TABLES `ogp_user_homes` WRITE;
/*!40000 ALTER TABLE `ogp_user_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_user_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_user_role_info`
--

DROP TABLE IF EXISTS `ogp_user_role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_user_role_info` (
                                      `role_id` int(11) NOT NULL AUTO_INCREMENT,
                                      `role_name` varchar(100) DEFAULT NULL,
                                      PRIMARY KEY (`role_id`),
                                      UNIQUE KEY `role_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_user_role_info`
--

LOCK TABLES `ogp_user_role_info` WRITE;
/*!40000 ALTER TABLE `ogp_user_role_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogp_user_role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_users`
--

DROP TABLE IF EXISTS `ogp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_users` (
                             `user_id` int(11) NOT NULL AUTO_INCREMENT,
                             `users_login` varchar(255) NOT NULL,
                             `users_passwd` varchar(255) NOT NULL,
                             `users_lang` varchar(20) NOT NULL DEFAULT 'English',
                             `users_role` varchar(30) NOT NULL DEFAULT 'user',
                             `users_group` varchar(100) DEFAULT NULL,
                             `users_fname` varchar(255) DEFAULT NULL,
                             `users_lname` varchar(255) DEFAULT NULL,
                             `users_email` varchar(255) DEFAULT NULL,
                             `users_phone` varchar(12) DEFAULT NULL,
                             `users_city` varchar(255) DEFAULT NULL,
                             `users_province` varchar(255) DEFAULT NULL,
                             `users_country` varchar(255) DEFAULT NULL,
                             `users_comment` text,
                             `users_theme` varchar(255) DEFAULT NULL,
                             `user_expires` varchar(30) NOT NULL DEFAULT 'X',
                             `users_parent` int(11) DEFAULT NULL,
                             `users_page_limit` int(11) DEFAULT '25',
                             `user_receives_emails` tinyint(1) NOT NULL DEFAULT '1',
                             PRIMARY KEY (`users_login`),
                             UNIQUE KEY `id` (`user_id`),
                             UNIQUE KEY `email` (`users_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_users`
--

LOCK TABLES `ogp_users` WRITE;
/*!40000 ALTER TABLE `ogp_users` DISABLE KEYS */;
INSERT INTO `ogp_users` VALUES (1,'admin','5f4dcc3b5aa765d61d8327deb882cf99','English','admin',NULL,NULL,NULL,'admin@admin.net',NULL,NULL,NULL,NULL,NULL,NULL,'X',NULL,25,1);
/*!40000 ALTER TABLE `ogp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_widgets`
--

DROP TABLE IF EXISTS `ogp_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_widgets` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `column_id` int(11) NOT NULL,
                               `sort_no` int(11) NOT NULL,
                               `collapsed` tinyint(4) NOT NULL,
                               `title` varchar(100) NOT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_widgets`
--

LOCK TABLES `ogp_widgets` WRITE;
/*!40000 ALTER TABLE `ogp_widgets` DISABLE KEYS */;
INSERT INTO `ogp_widgets` VALUES (1,1,1,0,'Game Monitor'),(2,2,0,0,'Online Server'),(3,2,1,0,'Currently Online'),(4,3,0,0,'FTP'),(5,3,1,0,'Support');
/*!40000 ALTER TABLE `ogp_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogp_widgets_users`
--

DROP TABLE IF EXISTS `ogp_widgets_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogp_widgets_users` (
                                     `user_id` int(11) NOT NULL,
                                     `widget_id` int(11) NOT NULL,
                                     `column_id` int(11) NOT NULL,
                                     `sort_no` int(11) NOT NULL,
                                     `collapsed` tinyint(4) NOT NULL,
                                     `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogp_widgets_users`
--

LOCK TABLES `ogp_widgets_users` WRITE;
/*!40000 ALTER TABLE `ogp_widgets_users` DISABLE KEYS */;
INSERT INTO `ogp_widgets_users` VALUES (1,1,1,1,0,'Game Monitor'),(1,2,2,0,0,'Online Server'),(1,3,2,1,0,'Currently Online'),(1,4,3,0,0,'FTP'),(1,5,3,1,0,'Support');
/*!40000 ALTER TABLE `ogp_widgets_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 15:45:21
