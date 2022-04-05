-- --------------------------------------------------------
-- Host:                         vps.commandstring.ml
-- Server version:               10.3.31-MariaDB-0+deb10u1 - Debian 10
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table c1_ccrp.911calls
CREATE TABLE IF NOT EXISTS `911calls` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `type` int(3) NOT NULL,
  `time` varchar(32) NOT NULL,
  `callername` varchar(40) NOT NULL,
  `callernum` int(12) NOT NULL,
  `status` int(3) NOT NULL,
  `clearedby` varchar(40) DEFAULT NULL,
  `gpsloc` varchar(80) NOT NULL,
  `locgiven` varchar(129) DEFAULT NULL,
  `descgiven` varchar(129) DEFAULT NULL,
  `copnotes` varchar(129) DEFAULT '',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.911calls: 0 rows
/*!40000 ALTER TABLE `911calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `911calls` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `RegisterDate` varchar(36) DEFAULT current_timestamp(),
  `RegisterIP` varchar(40) DEFAULT NULL,
  `LoginDate` varchar(36) DEFAULT NULL,
  `LastUcpLogin` datetime DEFAULT NULL,
  `IP` varchar(16) DEFAULT 'n/a',
  `rcode` varchar(30) DEFAULT NULL,
  `uadmin` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `lschara` varchar(25) DEFAULT NULL,
  `cidle` tinyint(1) NOT NULL DEFAULT 1,
  `whitelist` int(1) NOT NULL DEFAULT 0,
  `Admin` int(12) NOT NULL DEFAULT 0,
  `Helper` int(12) NOT NULL DEFAULT 0,
  `ForumName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.accounts: ~6 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `RegisterDate`, `RegisterIP`, `LoginDate`, `LastUcpLogin`, `IP`, `rcode`, `uadmin`, `banned`, `lschara`, `cidle`, `whitelist`, `Admin`, `Helper`, `ForumName`) VALUES
	(1, 'Diego_Starm', '014BC7919B69A3B06FAB5994E71A07EB2A3A7FEB58EFEF8E05A2CD812141E038833BFC67A57ECFEC2267CEE9E3246A5DA1770D27EBE249E8F2694F1ED74CE67A', 'diegoboyphone@gmail.com', '19/03/2022, 19:50', '127.0.0.1', '05/04/2022, 02:34', NULL, '68.0.168.197', NULL, 0, 0, NULL, 1, 0, 0, 0, NULL),
	(2, 'Imperial', '931F7B7FFD461BE388542BF66EECD285D78965517BA9F749CB7C21D72F3A62A91FFA3D98489AAF9A976A4DF54CF51E9EA59DB971B295D8D5204797FE28995DC1', 'officialmetabloxs@gmail.com', '20/03/2022, 13:05', '192.168.0.11', '20/03/2022, 15:55', NULL, '192.168.0.11', NULL, 0, 0, NULL, 1, 0, 0, 0, NULL),
	(3, 'Command_String', '2A5D2300015E5A7FED0FF6F5C9DCDC425E2F2F9FF6FD49B855B26B0F6F6AB0E0C15327FE787946BC29007685F08836EA83E9BAF54B86BEB6D210E5C280A3CFAE', 'noemail@nono.com', '20/03/2022, 18:23', '73.64.168.26', '02/04/2022, 22:22', NULL, '174.55.96.106', NULL, 6, 0, NULL, 1, 0, 0, 0, NULL),
	(4, 'Mayo', 'C5F5ADF620B4B6FA3B8C6F7920896A1B7EB9DF35D9968124726E3BD38B92FE0160090202DB55A7C00A1796D3473B66A563C3D2C4435E10C3FD670FE62D7727F6', '11@211..', '20/03/2022, 13:55', '154.247.198.244', '20/03/2022, 13:55', NULL, 'n/a', NULL, 0, 0, NULL, 1, 0, 0, 0, NULL),
	(5, 'Edgar_Ramirez', '014BC7919B69A3B06FAB5994E71A07EB2A3A7FEB58EFEF8E05A2CD812141E038833BFC67A57ECFEC2267CEE9E3246A5DA1770D27EBE249E8F2694F1ED74CE67A', '12@email.com', '01/04/2022, 05:32', '68.0.168.197', '04/04/2022, 17:39', NULL, '68.0.168.197', NULL, 0, 0, NULL, 1, 0, 0, 0, NULL),
	(7, 'test123', '7D73388F9B889B1E59642AEE80007658A8B3041BC6B5F52CFC5E88C84B04DFF67A74E05EB31280FF609177BB27C6093DF4D41EBFDF5BE8112220F85AE84D0CE4', 'test@gmail.com', '2022-04-02 04:59:24', '127.0.0.1', NULL, NULL, 'n/a', NULL, 0, 0, NULL, 1, 0, 0, 0, NULL),
	(8, 'Cheredre', 'F9C3B1A3B54075CC8D53E8CB032560299D4B3A7B2AA38FF69BFC8170290CDF077988AECE1F2C69685D5A9F6A1C8E68AC9B2DD2E7130DF96AF5199635BB580911', 'cheredre@outlook.com', '02/04/2022, 21:31', '201.4.187.232', '02/04/2022, 22:19', NULL, '201.4.187.232', NULL, 0, 0, NULL, 1, 0, 0, 0, NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.apbs
CREATE TABLE IF NOT EXISTS `apbs` (
  `dbid` int(5) NOT NULL AUTO_INCREMENT,
  `creatorid` int(11) NOT NULL,
  `creatorname` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `fulldesc` varchar(550) NOT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.apbs: ~0 rows (approximately)
/*!40000 ALTER TABLE `apbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `apbs` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.arrestpoints
CREATE TABLE IF NOT EXISTS `arrestpoints` (
  `arrestID` int(11) NOT NULL AUTO_INCREMENT,
  `arrestX` float NOT NULL,
  `arrestY` float NOT NULL,
  `arrestZ` float NOT NULL,
  `arrestInterior` int(11) NOT NULL,
  `arrestWorld` int(11) NOT NULL,
  PRIMARY KEY (`arrestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.arrestpoints: ~0 rows (approximately)
/*!40000 ALTER TABLE `arrestpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrestpoints` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.atm
CREATE TABLE IF NOT EXISTS `atm` (
  `atmID` int(11) NOT NULL AUTO_INCREMENT,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL,
  `atmWorld` int(11) NOT NULL,
  PRIMARY KEY (`atmID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.atm: ~0 rows (approximately)
/*!40000 ALTER TABLE `atm` DISABLE KEYS */;
/*!40000 ALTER TABLE `atm` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.backpackitems
CREATE TABLE IF NOT EXISTS `backpackitems` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.backpackitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `backpackitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `backpackitems` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.backpacks
CREATE TABLE IF NOT EXISTS `backpacks` (
  `backpackID` int(12) NOT NULL AUTO_INCREMENT,
  `backpackPlayer` int(12) DEFAULT 0,
  `backpackX` float DEFAULT 0,
  `backpackY` float DEFAULT 0,
  `backpackZ` float DEFAULT 0,
  `backpackInterior` int(12) DEFAULT 0,
  `backpackWorld` int(12) DEFAULT 0,
  `backpackHouse` int(12) DEFAULT 0,
  `backpackVehicle` int(12) DEFAULT 0,
  PRIMARY KEY (`backpackID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.backpacks: ~0 rows (approximately)
/*!40000 ALTER TABLE `backpacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `backpacks` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.billboards
CREATE TABLE IF NOT EXISTS `billboards` (
  `bbID` int(12) NOT NULL AUTO_INCREMENT,
  `bbExists` int(12) DEFAULT 0,
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT 0,
  `bbPrice` int(12) NOT NULL DEFAULT 0,
  `bbRange` int(12) DEFAULT 10,
  `bbPosX` float DEFAULT 0,
  `bbPosY` float DEFAULT 0,
  `bbPosZ` float DEFAULT 0,
  `bbMessage` varchar(230) DEFAULT NULL,
  PRIMARY KEY (`bbID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.billboards: ~0 rows (approximately)
/*!40000 ALTER TABLE `billboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `billboards` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.blacklist
CREATE TABLE IF NOT EXISTS `blacklist` (
  `BID` int(12) NOT NULL AUTO_INCREMENT,
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `TempHours` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.blacklist: ~0 rows (approximately)
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.businesses
CREATE TABLE IF NOT EXISTS `businesses` (
  `bizID` int(12) NOT NULL AUTO_INCREMENT,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int(12) DEFAULT 0,
  `bizType` int(12) DEFAULT 0,
  `bizPrice` int(12) DEFAULT 0,
  `bizPosX` float DEFAULT 0,
  `bizPosY` float DEFAULT 0,
  `bizPosZ` float DEFAULT 0,
  `bizPosA` float DEFAULT 0,
  `bizIntX` float DEFAULT 0,
  `bizIntY` float DEFAULT 0,
  `bizIntZ` float DEFAULT 0,
  `bizIntA` float DEFAULT 0,
  `bizInterior` int(12) DEFAULT 0,
  `bizExterior` int(12) DEFAULT 0,
  `bizExteriorVW` int(12) DEFAULT 0,
  `bizLocked` int(4) DEFAULT 0,
  `bizVault` int(12) DEFAULT 0,
  `bizProducts` int(12) DEFAULT 0,
  `bizPrice1` int(12) DEFAULT 0,
  `bizPrice2` int(12) DEFAULT 0,
  `bizPrice3` int(12) DEFAULT 0,
  `bizPrice4` int(12) DEFAULT 0,
  `bizPrice5` int(12) DEFAULT 0,
  `bizPrice6` int(12) DEFAULT 0,
  `bizPrice7` int(12) DEFAULT 0,
  `bizPrice8` int(12) DEFAULT 0,
  `bizPrice9` int(12) DEFAULT 0,
  `bizPrice10` int(12) DEFAULT 0,
  `bizSpawnX` float DEFAULT 0,
  `bizSpawnY` float DEFAULT 0,
  `bizSpawnZ` float DEFAULT 0,
  `bizSpawnA` float DEFAULT 0,
  `bizDeliverX` float DEFAULT 0,
  `bizDeliverY` float DEFAULT 0,
  `bizDeliverZ` float DEFAULT 0,
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT 0,
  `bizPrice12` int(12) DEFAULT 0,
  `bizPrice13` int(12) DEFAULT 0,
  `bizPrice14` int(12) DEFAULT 0,
  `bizPrice15` int(12) DEFAULT 0,
  `bizPrice16` int(12) DEFAULT 0,
  `bizPrice17` int(12) DEFAULT 0,
  `bizPrice18` int(12) DEFAULT 0,
  `bizPrice19` int(12) DEFAULT 0,
  `bizPrice20` int(12) DEFAULT 0,
  `bizShipment` int(4) DEFAULT 0,
  PRIMARY KEY (`bizID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.businesses: ~0 rows (approximately)
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `carID` int(12) NOT NULL AUTO_INCREMENT,
  `carModel` int(12) DEFAULT 0,
  `carType` int(12) NOT NULL DEFAULT 1,
  `carOwner` int(12) DEFAULT 0,
  `ownerLastOnline` int(30) NOT NULL DEFAULT 0,
  `carSpawned` int(2) NOT NULL DEFAULT 1,
  `carPosX` float DEFAULT 0,
  `carPosY` float DEFAULT 0,
  `carPosZ` float DEFAULT 0,
  `carPosR` float DEFAULT 0,
  `carHP` float NOT NULL DEFAULT 1000,
  `carColor1` int(12) DEFAULT 0,
  `carColor2` int(12) DEFAULT 0,
  `carPaintjob` int(12) DEFAULT -1,
  `carLocked` int(4) DEFAULT 0,
  `carMod1` int(12) DEFAULT 0,
  `carMod2` int(12) DEFAULT 0,
  `carMod3` int(12) DEFAULT 0,
  `carMod4` int(12) DEFAULT 0,
  `carMod5` int(12) DEFAULT 0,
  `carMod6` int(12) DEFAULT 0,
  `carMod7` int(12) DEFAULT 0,
  `carMod8` int(12) DEFAULT 0,
  `carMod9` int(12) DEFAULT 0,
  `carMod10` int(12) DEFAULT 0,
  `carMod11` int(12) DEFAULT 0,
  `carMod12` int(12) DEFAULT 0,
  `carMod13` int(12) DEFAULT 0,
  `carMod14` int(12) DEFAULT 0,
  `carImpounded` int(12) DEFAULT 0,
  `carWeapon1` int(12) DEFAULT 0,
  `carAmmo1` int(12) DEFAULT 0,
  `carWeapon2` int(12) DEFAULT 0,
  `carAmmo2` int(12) DEFAULT 0,
  `carWeapon3` int(12) DEFAULT 0,
  `carAmmo3` int(12) DEFAULT 0,
  `carWeapon4` int(12) DEFAULT 0,
  `carAmmo4` int(12) DEFAULT 0,
  `carWeapon5` int(12) DEFAULT 0,
  `carAmmo5` int(12) DEFAULT 0,
  `carImpoundPrice` int(12) DEFAULT 0,
  `ImpoundedDays` int(3) NOT NULL DEFAULT 0,
  `carFaction` int(12) DEFAULT 0,
  `carSiren` int(12) DEFAULT 0,
  `carJob` int(12) NOT NULL DEFAULT 0,
  `carPanels` int(22) NOT NULL DEFAULT 0,
  `carDoors` int(22) NOT NULL DEFAULT 0,
  `carLights` int(22) NOT NULL DEFAULT 0,
  `carTires` int(22) NOT NULL DEFAULT 0,
  `carPlate` varchar(15) DEFAULT NULL,
  `carRadio` int(3) NOT NULL DEFAULT 1,
  `carRenter` int(12) DEFAULT 0,
  `carRentPrice` int(22) NOT NULL DEFAULT 0,
  `carRentable` int(12) NOT NULL DEFAULT 0,
  `carRented` int(12) DEFAULT 0,
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.cars: ~0 rows (approximately)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.carstorage
CREATE TABLE IF NOT EXISTS `carstorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.carstorage: ~0 rows (approximately)
/*!40000 ALTER TABLE `carstorage` DISABLE KEYS */;
/*!40000 ALTER TABLE `carstorage` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.car_guests
CREATE TABLE IF NOT EXISTS `car_guests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL,
  `car_id` int(12) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.car_guests: ~0 rows (approximately)
/*!40000 ALTER TABLE `car_guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_guests` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Username` varchar(24) DEFAULT NULL,
  `chara` varchar(24) DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `Created` int(4) DEFAULT 0,
  `Money` int(12) DEFAULT 0,
  `BankMoney` int(12) DEFAULT 0,
  `Savings` int(12) DEFAULT 0,
  `PlayingHours` int(12) DEFAULT 0,
  `PlayersAssisted` int(5) NOT NULL DEFAULT 0,
  `Complimented` int(5) NOT NULL DEFAULT 0,
  `Gender` int(4) DEFAULT 0,
  `Birthdate` varchar(10) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `skin` int(12) DEFAULT 0,
  `Glasses` int(12) DEFAULT 0,
  `Hat` int(12) DEFAULT 0,
  `Bandana` int(12) DEFAULT 0,
  `Vest` int(12) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `PosA` float DEFAULT 0,
  `Interior` int(12) DEFAULT 0,
  `World` int(12) DEFAULT 0,
  `GlassesPos` varchar(100) DEFAULT NULL,
  `HatPos` varchar(100) DEFAULT NULL,
  `BandanaPos` varchar(100) DEFAULT NULL,
  `Slot5Pos` varchar(100) DEFAULT NULL,
  `Slot9Pos` varchar(100) DEFAULT NULL,
  `Slot5ObjID` int(12) NOT NULL DEFAULT 0,
  `Slot9ObjID` int(12) NOT NULL DEFAULT 0,
  `Slot5BoneID` int(2) NOT NULL DEFAULT 0,
  `Slot9BoneID` int(2) NOT NULL DEFAULT 0,
  `Hospital` int(12) DEFAULT -1,
  `HospitalInt` int(12) DEFAULT 0,
  `OwnsBillboard` int(12) DEFAULT -1,
  `Admin` int(12) DEFAULT 0,
  `Helper` int(12) DEFAULT 0,
  `JailTime` int(29) DEFAULT 0,
  `Muted` int(4) DEFAULT 0,
  `CreateDate` varchar(42) DEFAULT '0',
  `LastLogin` varchar(42) DEFAULT '0',
  `Gun1` int(12) DEFAULT 0,
  `Gun2` int(12) DEFAULT 0,
  `Gun3` int(12) DEFAULT 0,
  `Gun4` int(12) DEFAULT 0,
  `Gun5` int(12) DEFAULT 0,
  `Gun6` int(12) DEFAULT 0,
  `Gun7` int(12) DEFAULT 0,
  `Gun8` int(12) DEFAULT 0,
  `Gun9` int(12) DEFAULT 0,
  `Gun10` int(12) DEFAULT 0,
  `Gun11` int(12) DEFAULT 0,
  `Gun12` int(12) DEFAULT 0,
  `Gun13` int(12) DEFAULT 0,
  `Ammo1` int(12) DEFAULT 0,
  `Ammo2` int(12) DEFAULT 0,
  `Ammo3` int(12) DEFAULT 0,
  `Ammo4` int(12) DEFAULT 0,
  `Ammo5` int(12) DEFAULT 0,
  `Ammo6` int(12) DEFAULT 0,
  `Ammo7` int(12) DEFAULT 0,
  `Ammo8` int(12) DEFAULT 0,
  `Ammo9` int(12) DEFAULT 0,
  `Ammo10` int(12) DEFAULT 0,
  `Ammo11` int(12) DEFAULT 0,
  `Ammo12` int(12) DEFAULT 0,
  `Ammo13` int(12) DEFAULT 0,
  `House` int(12) DEFAULT -1,
  `Business` int(12) DEFAULT -1,
  `Phone` int(12) DEFAULT 0,
  `Lottery` int(12) DEFAULT 0,
  `Hunger` int(12) DEFAULT 100,
  `Thirst` int(12) DEFAULT 100,
  `Minutes` int(12) DEFAULT 0,
  `ArmorStatus` float DEFAULT 0,
  `Entrance` int(12) DEFAULT 0,
  `Job` int(12) DEFAULT 0,
  `Faction` int(12) DEFAULT -1,
  `FactionRank` int(12) DEFAULT 0,
  `FactionDivision` int(12) DEFAULT 0,
  `Prisoned` int(4) DEFAULT 0,
  `Warrants` int(12) DEFAULT 0,
  `Injured` int(4) DEFAULT 0,
  `Health` float DEFAULT 0,
  `Channel` int(12) DEFAULT 0,
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int(4) DEFAULT 0,
  `Warnings` int(12) DEFAULT 0,
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `ForumName` varchar(30) DEFAULT NULL,
  `Donator` int(12) DEFAULT 0,
  `FightStyle` int(11) NOT NULL DEFAULT 4,
  `MaskID` int(12) DEFAULT 0,
  `FactionMod` int(12) DEFAULT 0,
  `PropertyMod` int(12) DEFAULT 0,
  `SwatMember` int(12) DEFAULT 0,
  `Capacity` int(12) DEFAULT 35,
  `Channel2` int(12) DEFAULT 0,
  `Channel3` int(12) DEFAULT 0,
  `Channel4` int(12) DEFAULT 0,
  `AdminHide` int(4) DEFAULT 0,
  `LotteryB` int(11) DEFAULT NULL,
  `SpawnPoint` int(11) NOT NULL DEFAULT 2,
  `Clothes1` int(12) DEFAULT 0,
  `Clothes2` int(12) DEFAULT 0,
  `Clothes3` int(12) DEFAULT 0,
  `Clothes4` int(11) NOT NULL DEFAULT 0,
  `Clothes5` int(11) NOT NULL DEFAULT 0,
  `Tester` int(12) NOT NULL DEFAULT 0,
  `CarLicense` int(1) NOT NULL DEFAULT 0,
  `TruckLicense` int(1) NOT NULL DEFAULT 0,
  `MotorBikeLicense` int(1) DEFAULT 0,
  `AirplaneLicense` int(1) NOT NULL DEFAULT 0,
  `HelicopterLicense` int(1) NOT NULL DEFAULT 0,
  `WeaponLicense` int(1) NOT NULL DEFAULT 0,
  `stealradioTimer` int(12) NOT NULL DEFAULT 0,
  `ChatAnim` int(1) NOT NULL DEFAULT 0,
  `PProfile` tinyint(1) NOT NULL DEFAULT 0,
  `likes` bigint(20) NOT NULL DEFAULT 0,
  `likedis` tinyint(1) NOT NULL DEFAULT 0,
  `comments` int(12) NOT NULL DEFAULT 0,
  `commentdis` tinyint(1) NOT NULL DEFAULT 0,
  `Bio` text DEFAULT NULL,
  `music` varchar(44) NOT NULL DEFAULT '0',
  `avatar` varchar(200) NOT NULL DEFAULT 'default.png',
  `uonline` tinyint(1) NOT NULL DEFAULT 0,
  `ctext` varchar(25) DEFAULT NULL,
  `lpage` varchar(60) DEFAULT NULL,
  `honline` tinyint(1) NOT NULL DEFAULT 0,
  `cccolor` varchar(6) NOT NULL DEFAULT '394A6D',
  `rmyname` tinyint(1) NOT NULL DEFAULT 0,
  `logg1` tinyint(1) NOT NULL DEFAULT 0,
  `logg2` tinyint(1) NOT NULL DEFAULT 0,
  `logg3` tinyint(1) NOT NULL DEFAULT 0,
  `logg4` tinyint(1) NOT NULL DEFAULT 0,
  `logg5` tinyint(1) NOT NULL DEFAULT 0,
  `logg6` tinyint(1) NOT NULL DEFAULT 0,
  `logg7` tinyint(1) NOT NULL DEFAULT 0,
  `rewarded` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `GPcoordinates` varchar(25) NOT NULL DEFAULT '0:0',
  `GPvehicle` varchar(5) NOT NULL DEFAULT '0',
  `GPhealth` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.characters: ~8 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` (`ID`, `Username`, `chara`, `online`, `Created`, `Money`, `BankMoney`, `Savings`, `PlayingHours`, `PlayersAssisted`, `Complimented`, `Gender`, `Birthdate`, `Origin`, `skin`, `Glasses`, `Hat`, `Bandana`, `Vest`, `PosX`, `PosY`, `PosZ`, `PosA`, `Interior`, `World`, `GlassesPos`, `HatPos`, `BandanaPos`, `Slot5Pos`, `Slot9Pos`, `Slot5ObjID`, `Slot9ObjID`, `Slot5BoneID`, `Slot9BoneID`, `Hospital`, `HospitalInt`, `OwnsBillboard`, `Admin`, `Helper`, `JailTime`, `Muted`, `CreateDate`, `LastLogin`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `House`, `Business`, `Phone`, `Lottery`, `Hunger`, `Thirst`, `Minutes`, `ArmorStatus`, `Entrance`, `Job`, `Faction`, `FactionRank`, `FactionDivision`, `Prisoned`, `Warrants`, `Injured`, `Health`, `Channel`, `Accent`, `Bleeding`, `Warnings`, `Warn1`, `Warn2`, `ForumName`, `Donator`, `FightStyle`, `MaskID`, `FactionMod`, `PropertyMod`, `SwatMember`, `Capacity`, `Channel2`, `Channel3`, `Channel4`, `AdminHide`, `LotteryB`, `SpawnPoint`, `Clothes1`, `Clothes2`, `Clothes3`, `Clothes4`, `Clothes5`, `Tester`, `CarLicense`, `TruckLicense`, `MotorBikeLicense`, `AirplaneLicense`, `HelicopterLicense`, `WeaponLicense`, `stealradioTimer`, `ChatAnim`, `PProfile`, `likes`, `likedis`, `comments`, `commentdis`, `Bio`, `music`, `avatar`, `uonline`, `ctext`, `lpage`, `honline`, `cccolor`, `rmyname`, `logg1`, `logg2`, `logg3`, `logg4`, `logg5`, `logg6`, `logg7`, `rewarded`, `verified`, `active`, `GPcoordinates`, `GPvehicle`, `GPhealth`) VALUES
	(1, 'Diego_Starm', 'Diego_Poptart', 1, 1, 1000, 9173, 0, 1, 0, 0, 1, '11/01/1998', 'Los Santos', 212, 0, 0, 0, 0, 4606.62, -1471.59, 12.2225, 268.204, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, '1647744653', '1649151260', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 80, 58, 0, -1, 0, 0, 5, 1, 0, 0, 0, 100, 0, '0', 0, 0, '', '', '', 0, 4, 98797, 0, 1, 0, 35, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '4615:-1472', '0', 0),
	(2, 'Diego_Starm', 'Diego_Starm', 0, 1, 1000, 9000, 0, 0, 0, 0, 1, '01/02/2000', 'Los Santos', 17, 0, 0, 0, 0, -314.185, 1054.49, 20.1781, 232.201, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, '1647756393', '1647756397', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 50, 50, 6, 0, -1, 0, -1, 0, 0, 0, 0, 0, 100, 0, '0', 0, 0, '', '', '', 0, 4, 46266, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-314:1055', '0', 0),
	(3, 'Imperial', 'Daniel_Crampton', 0, 1, 1000, 9000, 0, 0, 0, 0, 1, '12/03/1981', 'FC', 60, 0, 0, 0, 0, 1328.25, 299.499, 19.5546, 180.208, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, -1, -1, 7, 0, 0, 0, '1647781539', '1647791718', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 80, 9, 0, -1, 0, -1, 0, 0, 0, 0, 0, 100, 0, '0', 0, 0, '', '', '', 0, 4, 29241, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1329:300', '0', 0),
	(4, 'Command_String', 'Trevor_Jackson', 0, 1, 1000, 9000, 0, 0, 0, 0, 1, '20/09/1995', 'Germany', 59, 0, 0, 0, 0, 2499.41, -1048.36, 68.7148, 262.859, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, -1, -1, 7, 3, 0, 0, '1647800677', '1648938179', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 80, 9, 0, -1, 0, -1, 0, 0, 0, 0, 0, 35, 0, '0', 0, 0, '', '', '', 0, 4, 17259, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3397:325', '0', 0),
	(5, 'Mayo', 'Josh_Woods', 0, 0, 1000, 9000, 0, 0, 0, 0, 1, '', '', 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, -1, 0, 7, 3, 0, 0, '1647809743', '1647809747', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 100, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, '', '', '', 0, 4, 58531, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1292:180', '0', 0),
	(8, 'Edgar_Ramirez', 'Diego_Edgar', 0, 0, 0, 0, 0, 0, 0, 0, 0, '10/11/2009', 'Los Santos', 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, '1648791193', '1649033453', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 100, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 'NULL', 'NULL', 'NULL', 0, 4, 24550, 0, 0, 0, 35, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '365:174', '0', 0),
	(9, 'Cheredre', 'Jacob_Albany', 0, 0, 0, 0, 0, 0, 0, 0, 0, '01/01/1970', 'Not Specified', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, '1648935138', '1648937844', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 100, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, 0, 4, 0, 0, 0, 0, 35, 0, 0, 0, 0, NULL, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '365:178', '0', 0),
	(10, 'Cheredre', 'Jake_Albany', 0, 0, 0, 0, 0, 0, 0, 0, 0, '01/01/1970', 'Not Specified', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, '1648937982', '1648937997', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 100, 100, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, 0, 4, 0, 0, 0, 0, 35, 0, 0, 0, 0, NULL, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '0', 'default.png', 0, NULL, NULL, 0, '394A6D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '365:174', '0', 0);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.commented
CREATE TABLE IF NOT EXISTS `commented` (
  `coid` int(11) NOT NULL AUTO_INCREMENT,
  `whocommented` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `commenteduser` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Commented` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table c1_ccrp.commented: ~0 rows (approximately)
/*!40000 ALTER TABLE `commented` DISABLE KEYS */;
/*!40000 ALTER TABLE `commented` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `coid` int(11) NOT NULL AUTO_INCREMENT,
  `whocommented` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `commenteduser` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table c1_ccrp.comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `ID` int(12) DEFAULT 0,
  `contactID` int(12) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT 0,
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.crates
CREATE TABLE IF NOT EXISTS `crates` (
  `crateID` int(12) NOT NULL AUTO_INCREMENT,
  `crateType` int(12) DEFAULT 0,
  `crateX` float DEFAULT 0,
  `crateY` float DEFAULT 0,
  `crateZ` float DEFAULT 0,
  `crateA` float DEFAULT 0,
  `crateInterior` int(12) DEFAULT 0,
  `crateWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`crateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.crates: ~0 rows (approximately)
/*!40000 ALTER TABLE `crates` DISABLE KEYS */;
/*!40000 ALTER TABLE `crates` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.dealervehicles
CREATE TABLE IF NOT EXISTS `dealervehicles` (
  `ID` int(12) DEFAULT 0,
  `vehID` int(12) NOT NULL AUTO_INCREMENT,
  `vehModel` int(12) DEFAULT 0,
  `vehPrice` int(12) DEFAULT 0,
  PRIMARY KEY (`vehID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.dealervehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `dealervehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealervehicles` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.detectors
CREATE TABLE IF NOT EXISTS `detectors` (
  `detectorID` int(12) NOT NULL AUTO_INCREMENT,
  `detectorX` float DEFAULT 0,
  `detectorY` float DEFAULT 0,
  `detectorZ` float DEFAULT 0,
  `detectorAngle` float DEFAULT 0,
  `detectorInterior` int(12) DEFAULT 0,
  `detectorWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`detectorID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.detectors: 0 rows
/*!40000 ALTER TABLE `detectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `detectors` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.dropped
CREATE TABLE IF NOT EXISTS `dropped` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemX` float DEFAULT 0,
  `itemY` float DEFAULT 0,
  `itemZ` float DEFAULT 0,
  `itemInt` int(12) DEFAULT 0,
  `itemWorld` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  `itemAmmo` int(12) DEFAULT 0,
  `itemWeapon` int(12) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.dropped: ~0 rows (approximately)
/*!40000 ALTER TABLE `dropped` DISABLE KEYS */;
/*!40000 ALTER TABLE `dropped` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.entrances
CREATE TABLE IF NOT EXISTS `entrances` (
  `entranceID` int(12) NOT NULL AUTO_INCREMENT,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT 0,
  `entrancePosX` float DEFAULT 0,
  `entrancePosY` float DEFAULT 0,
  `entrancePosZ` float DEFAULT 0,
  `entrancePosA` float DEFAULT 0,
  `entranceIntX` float DEFAULT 0,
  `entranceIntY` float DEFAULT 0,
  `entranceIntZ` float DEFAULT 0,
  `entranceIntA` float DEFAULT 0,
  `entranceInterior` int(12) DEFAULT 0,
  `entranceExterior` int(12) DEFAULT 0,
  `entranceExteriorVW` int(12) DEFAULT 0,
  `entranceType` int(12) DEFAULT 0,
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT 0,
  `entranceCustom` int(4) DEFAULT 0,
  `entranceWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`entranceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.entrances: ~0 rows (approximately)
/*!40000 ALTER TABLE `entrances` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrances` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.factions
CREATE TABLE IF NOT EXISTS `factions` (
  `factionID` int(3) NOT NULL AUTO_INCREMENT,
  `factionName` varchar(32) DEFAULT NULL,
  `factionColor` varchar(50) DEFAULT '0',
  `factionType` int(12) DEFAULT 0,
  `factionRanks` int(12) DEFAULT 0,
  `factionDivisions` int(12) DEFAULT 0,
  `factionLockerX` float DEFAULT 0,
  `factionLockerY` float DEFAULT 0,
  `factionLockerZ` float DEFAULT 0,
  `factionLockerInt` int(12) DEFAULT 0,
  `factionLockerWorld` int(12) DEFAULT 0,
  `factionWeapon1` int(12) DEFAULT 0,
  `factionAmmo1` int(12) DEFAULT 0,
  `factionWeapon2` int(12) DEFAULT 0,
  `factionAmmo2` int(12) DEFAULT 0,
  `factionWeapon3` int(12) DEFAULT 0,
  `factionAmmo3` int(12) DEFAULT 0,
  `factionWeapon4` int(12) DEFAULT 0,
  `factionAmmo4` int(12) DEFAULT 0,
  `factionWeapon5` int(12) DEFAULT 0,
  `factionAmmo5` int(12) DEFAULT 0,
  `factionWeapon6` int(12) DEFAULT 0,
  `factionAmmo6` int(12) DEFAULT 0,
  `factionWeapon7` int(12) DEFAULT 0,
  `factionAmmo7` int(12) DEFAULT 0,
  `factionWeapon8` int(12) DEFAULT 0,
  `factionAmmo8` int(12) DEFAULT 0,
  `factionWeapon9` int(12) DEFAULT 0,
  `factionAmmo9` int(12) DEFAULT 0,
  `factionWeapon10` int(12) DEFAULT 0,
  `factionAmmo10` int(12) DEFAULT 0,
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionDivision1` varchar(32) DEFAULT NULL,
  `factionDivision2` varchar(32) DEFAULT NULL,
  `factionDivision3` varchar(32) DEFAULT NULL,
  `factionDivision4` varchar(32) DEFAULT NULL,
  `factionDivision5` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT 0,
  `factionSkin2` int(12) DEFAULT 0,
  `factionSkin3` int(12) DEFAULT 0,
  `factionSkin4` int(12) DEFAULT 0,
  `factionSkin5` int(12) DEFAULT 0,
  `factionSkin6` int(12) DEFAULT 0,
  `factionSkin7` int(12) DEFAULT 0,
  `factionSkin8` int(12) DEFAULT 0,
  `factionSkin9` int(12) DEFAULT 0,
  `factionSkin10` int(12) DEFAULT 0,
  `factionSkin11` int(12) DEFAULT 0,
  `factionSkin12` int(12) DEFAULT 0,
  `factionSkin13` int(12) DEFAULT 0,
  `factionSkin14` int(12) DEFAULT 0,
  `factionSkin15` int(12) DEFAULT 0,
  `factionSkin16` int(12) DEFAULT 0,
  `factionSkin17` int(12) DEFAULT 0,
  `factionSkin18` int(12) DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT -197.956,
  `SpawnY` float NOT NULL DEFAULT 1212.95,
  `SpawnZ` float NOT NULL DEFAULT 19.7422,
  `SpawnInterior` int(11) NOT NULL DEFAULT 0,
  `SpawnVW` int(12) NOT NULL DEFAULT 0,
  PRIMARY KEY (`factionID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.factions: ~0 rows (approximately)
/*!40000 ALTER TABLE `factions` DISABLE KEYS */;
INSERT INTO `factions` (`factionID`, `factionName`, `factionColor`, `factionType`, `factionRanks`, `factionDivisions`, `factionLockerX`, `factionLockerY`, `factionLockerZ`, `factionLockerInt`, `factionLockerWorld`, `factionWeapon1`, `factionAmmo1`, `factionWeapon2`, `factionAmmo2`, `factionWeapon3`, `factionAmmo3`, `factionWeapon4`, `factionAmmo4`, `factionWeapon5`, `factionAmmo5`, `factionWeapon6`, `factionAmmo6`, `factionWeapon7`, `factionAmmo7`, `factionWeapon8`, `factionAmmo8`, `factionWeapon9`, `factionAmmo9`, `factionWeapon10`, `factionAmmo10`, `factionRank1`, `factionRank2`, `factionRank3`, `factionRank4`, `factionRank5`, `factionRank6`, `factionRank7`, `factionRank8`, `factionRank9`, `factionRank10`, `factionRank11`, `factionRank12`, `factionRank13`, `factionRank14`, `factionRank15`, `factionDivision1`, `factionDivision2`, `factionDivision3`, `factionDivision4`, `factionDivision5`, `factionSkin1`, `factionSkin2`, `factionSkin3`, `factionSkin4`, `factionSkin5`, `factionSkin6`, `factionSkin7`, `factionSkin8`, `factionSkin9`, `factionSkin10`, `factionSkin11`, `factionSkin12`, `factionSkin13`, `factionSkin14`, `factionSkin15`, `factionSkin16`, `factionSkin17`, `factionSkin18`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnInterior`, `SpawnVW`) VALUES
	(0, 'Vice City Police Department', '-256', 1, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 'Division 1', 'Division 2', 'Division 3', 'Division 4', 'Division 5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `factions` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.furniture
CREATE TABLE IF NOT EXISTS `furniture` (
  `ID` int(12) DEFAULT 0,
  `furnitureID` int(12) NOT NULL AUTO_INCREMENT,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT 0,
  `furnitureX` float DEFAULT 0,
  `furnitureY` float DEFAULT 0,
  `furnitureZ` float DEFAULT 0,
  `furnitureRX` float DEFAULT 0,
  `furnitureRY` float DEFAULT 0,
  `furnitureRZ` float DEFAULT 0,
  `furnitureType` int(12) DEFAULT 0,
  PRIMARY KEY (`furnitureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.furniture: ~0 rows (approximately)
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.garbage
CREATE TABLE IF NOT EXISTS `garbage` (
  `garbageID` int(12) NOT NULL AUTO_INCREMENT,
  `garbageModel` int(12) DEFAULT 1236,
  `garbageCapacity` int(12) DEFAULT 0,
  `garbageX` float DEFAULT 0,
  `garbageY` float DEFAULT 0,
  `garbageZ` float DEFAULT 0,
  `garbageA` float DEFAULT 0,
  `garbageInterior` int(12) DEFAULT 0,
  `garbageWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`garbageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.garbage: ~0 rows (approximately)
/*!40000 ALTER TABLE `garbage` DISABLE KEYS */;
/*!40000 ALTER TABLE `garbage` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.gates
CREATE TABLE IF NOT EXISTS `gates` (
  `gateID` int(12) NOT NULL AUTO_INCREMENT,
  `gateModel` int(12) DEFAULT 0,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT 0,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0,
  PRIMARY KEY (`gateID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.gates: ~0 rows (approximately)
/*!40000 ALTER TABLE `gates` DISABLE KEYS */;
/*!40000 ALTER TABLE `gates` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.gps
CREATE TABLE IF NOT EXISTS `gps` (
  `ID` int(12) DEFAULT 0,
  `locationID` int(12) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT 0,
  `locationY` float DEFAULT 0,
  `locationZ` float DEFAULT 0,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.gps: ~0 rows (approximately)
/*!40000 ALTER TABLE `gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gps` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.graffiti
CREATE TABLE IF NOT EXISTS `graffiti` (
  `graffitiID` int(12) NOT NULL AUTO_INCREMENT,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`graffitiID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.graffiti: 0 rows
/*!40000 ALTER TABLE `graffiti` DISABLE KEYS */;
/*!40000 ALTER TABLE `graffiti` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.gunracks
CREATE TABLE IF NOT EXISTS `gunracks` (
  `rackID` int(12) NOT NULL AUTO_INCREMENT,
  `rackHouse` int(12) DEFAULT 0,
  `rackX` float DEFAULT 0,
  `rackY` float DEFAULT 0,
  `rackZ` float DEFAULT 0,
  `rackA` float DEFAULT 0,
  `rackInterior` int(12) DEFAULT 0,
  `rackWorld` int(12) DEFAULT 0,
  `rackWeapon1` int(12) DEFAULT 0,
  `rackAmmo1` int(12) DEFAULT 0,
  `rackWeapon2` int(12) DEFAULT 0,
  `rackAmmo2` int(12) DEFAULT 0,
  `rackWeapon3` int(12) DEFAULT 0,
  `rackAmmo3` int(12) DEFAULT 0,
  `rackWeapon4` int(12) DEFAULT 0,
  `rackAmmo4` int(12) DEFAULT 0,
  PRIMARY KEY (`rackID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.gunracks: ~0 rows (approximately)
/*!40000 ALTER TABLE `gunracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `gunracks` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.houses
CREATE TABLE IF NOT EXISTS `houses` (
  `houseID` int(12) NOT NULL AUTO_INCREMENT,
  `houseOwner` int(12) DEFAULT 0,
  `housePrice` int(12) DEFAULT 0,
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT 0,
  `housePosY` float DEFAULT 0,
  `housePosZ` float DEFAULT 0,
  `housePosA` float DEFAULT 0,
  `houseIntX` float DEFAULT 0,
  `houseIntY` float DEFAULT 0,
  `houseIntZ` float DEFAULT 0,
  `houseIntA` float DEFAULT 0,
  `houseInterior` int(12) DEFAULT 0,
  `houseExterior` int(12) DEFAULT 0,
  `houseExteriorVW` int(12) DEFAULT 0,
  `houseLocked` int(4) DEFAULT 0,
  `houseWeapon1` int(12) DEFAULT 0,
  `houseAmmo1` int(12) DEFAULT 0,
  `houseWeapon2` int(12) DEFAULT 0,
  `houseAmmo2` int(12) DEFAULT 0,
  `houseWeapon3` int(12) DEFAULT 0,
  `houseAmmo3` int(12) DEFAULT 0,
  `houseWeapon4` int(12) DEFAULT 0,
  `houseAmmo4` int(12) DEFAULT 0,
  `houseWeapon5` int(12) DEFAULT 0,
  `houseAmmo5` int(12) DEFAULT 0,
  `houseWeapon6` int(12) DEFAULT 0,
  `houseAmmo6` int(12) DEFAULT 0,
  `houseWeapon7` int(12) DEFAULT 0,
  `houseAmmo7` int(12) DEFAULT 0,
  `houseWeapon8` int(12) DEFAULT 0,
  `houseAmmo8` int(12) DEFAULT 0,
  `houseWeapon9` int(12) DEFAULT 0,
  `houseAmmo9` int(12) DEFAULT 0,
  `houseWeapon10` int(12) DEFAULT 0,
  `houseAmmo10` int(12) DEFAULT 0,
  `houseMoney` int(12) DEFAULT 0,
  PRIMARY KEY (`houseID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.houses: ~0 rows (approximately)
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` (`houseID`, `houseOwner`, `housePrice`, `houseAddress`, `housePosX`, `housePosY`, `housePosZ`, `housePosA`, `houseIntX`, `houseIntY`, `houseIntZ`, `houseIntA`, `houseInterior`, `houseExterior`, `houseExteriorVW`, `houseLocked`, `houseWeapon1`, `houseAmmo1`, `houseWeapon2`, `houseAmmo2`, `houseWeapon3`, `houseAmmo3`, `houseWeapon4`, `houseAmmo4`, `houseWeapon5`, `houseAmmo5`, `houseWeapon6`, `houseAmmo6`, `houseWeapon7`, `houseAmmo7`, `houseWeapon8`, `houseAmmo8`, `houseWeapon9`, `houseAmmo9`, `houseWeapon10`, `houseAmmo10`, `houseMoney`) VALUES
	(1, 4, 1, '682 Dirt Road', 870.455, -25.4818, 63.9373, 341.052, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.housestorage
CREATE TABLE IF NOT EXISTS `housestorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.housestorage: ~0 rows (approximately)
/*!40000 ALTER TABLE `housestorage` DISABLE KEYS */;
/*!40000 ALTER TABLE `housestorage` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.house_guests
CREATE TABLE IF NOT EXISTS `house_guests` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL,
  `house_id` int(12) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.house_guests: ~0 rows (approximately)
/*!40000 ALTER TABLE `house_guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_guests` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.impoundlots
CREATE TABLE IF NOT EXISTS `impoundlots` (
  `impoundID` int(12) NOT NULL AUTO_INCREMENT,
  `impoundLotX` float DEFAULT 0,
  `impoundLotY` float DEFAULT 0,
  `impoundLotZ` float DEFAULT 0,
  `impoundReleaseX` float DEFAULT 0,
  `impoundReleaseY` float DEFAULT 0,
  `impoundReleaseZ` float DEFAULT 0,
  `impoundReleaseInt` int(12) DEFAULT 0,
  `impoundReleaseWorld` int(12) DEFAULT 0,
  `impoundReleaseA` float DEFAULT 0,
  PRIMARY KEY (`impoundID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.impoundlots: ~0 rows (approximately)
/*!40000 ALTER TABLE `impoundlots` DISABLE KEYS */;
/*!40000 ALTER TABLE `impoundlots` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `ID` int(12) DEFAULT 0,
  `invID` int(12) NOT NULL AUTO_INCREMENT,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT 0,
  `invQuantity` int(12) DEFAULT 0,
  PRIMARY KEY (`invID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.inventory: ~8 rows (approximately)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
	(1, 1, 'ID Card', 1581, 1),
	(2, 2, 'ID Card', 1581, 1),
	(3, 3, 'ID Card', 1581, 1),
	(4, 4, 'ID Card', 1581, 1),
	(5, 5, 'ID Card', 1581, 1),
	(6, 6, 'ID Card', 1581, 1),
	(7, 7, 'ID Card', 1581, 1),
	(9, 8, 'ID Card', 1581, 1);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `jobID` int(12) NOT NULL,
  `jobPosX` float DEFAULT 0,
  `jobPosY` float DEFAULT 0,
  `jobPosZ` float DEFAULT 0,
  `jobPointX` float DEFAULT 0,
  `jobPointY` float DEFAULT 0,
  `jobPointZ` float DEFAULT 0,
  `jobDeliverX` float DEFAULT 0,
  `jobDeliverY` float DEFAULT 0,
  `jobDeliverZ` float DEFAULT 0,
  `jobInterior` int(12) DEFAULT 0,
  `jobWorld` int(12) DEFAULT 0,
  `jobType` int(12) DEFAULT 0,
  `jobPointInt` int(12) DEFAULT 0,
  `jobPointWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.liked
CREATE TABLE IF NOT EXISTS `liked` (
  `wholiked` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `likeduser` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `LikedDisliked` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table c1_ccrp.liked: ~0 rows (approximately)
/*!40000 ALTER TABLE `liked` DISABLE KEYS */;
/*!40000 ALTER TABLE `liked` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.mdc_points
CREATE TABLE IF NOT EXISTS `mdc_points` (
  `pointID` int(12) NOT NULL,
  `pointX` int(11) NOT NULL,
  `pointY` int(11) NOT NULL,
  `pointZ` int(11) NOT NULL,
  `pointVW` int(11) NOT NULL DEFAULT 0,
  `pointInterior` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pointID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.mdc_points: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdc_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdc_points` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.namechanges
CREATE TABLE IF NOT EXISTS `namechanges` (
  `ID` int(12) NOT NULL,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.namechanges: ~0 rows (approximately)
/*!40000 ALTER TABLE `namechanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `namechanges` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.plants
CREATE TABLE IF NOT EXISTS `plants` (
  `plantID` int(12) NOT NULL,
  `plantType` int(12) DEFAULT 0,
  `plantDrugs` int(12) DEFAULT 0,
  `plantX` float DEFAULT 0,
  `plantY` float DEFAULT 0,
  `plantZ` float DEFAULT 0,
  `plantA` float DEFAULT 0,
  `plantInterior` int(12) DEFAULT 0,
  `plantWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`plantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.plants: ~0 rows (approximately)
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.pumps
CREATE TABLE IF NOT EXISTS `pumps` (
  `ID` int(12) DEFAULT 0,
  `pumpID` int(12) NOT NULL AUTO_INCREMENT,
  `pumpPosX` float DEFAULT 0,
  `pumpPosY` float DEFAULT 0,
  `pumpPosZ` float DEFAULT 0,
  `pumpPosA` float DEFAULT 0,
  `pumpFuel` int(12) DEFAULT 0,
  PRIMARY KEY (`pumpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.pumps: ~0 rows (approximately)
/*!40000 ALTER TABLE `pumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `pumps` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.repair_points
CREATE TABLE IF NOT EXISTS `repair_points` (
  `pointID` int(12) NOT NULL,
  `pointX` int(11) NOT NULL,
  `pointY` int(11) NOT NULL,
  `pointZ` int(11) NOT NULL,
  `pointVW` int(11) NOT NULL DEFAULT 0,
  `pointInterior` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pointID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.repair_points: ~0 rows (approximately)
/*!40000 ALTER TABLE `repair_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_points` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.speedcameras
CREATE TABLE IF NOT EXISTS `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0,
  PRIMARY KEY (`speedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.speedcameras: ~0 rows (approximately)
/*!40000 ALTER TABLE `speedcameras` DISABLE KEYS */;
/*!40000 ALTER TABLE `speedcameras` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `ID` int(12) DEFAULT 0,
  `ticketID` int(12) NOT NULL AUTO_INCREMENT,
  `ticketPaid` int(4) NOT NULL,
  `Suspect` varchar(26) NOT NULL,
  `ticketFee` int(12) DEFAULT 0,
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ticketID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.tickets: ~0 rows (approximately)
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorType` int(12) DEFAULT 0,
  `vendorX` float DEFAULT 0,
  `vendorY` float DEFAULT 0,
  `vendorZ` float DEFAULT 0,
  `vendorA` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0,
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.vendors: ~0 rows (approximately)
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;

-- Dumping structure for table c1_ccrp.warrants
CREATE TABLE IF NOT EXISTS `warrants` (
  `ID` int(12) NOT NULL,
  `Suspect` varchar(24) DEFAULT NULL,
  `Status` int(2) NOT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table c1_ccrp.warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `warrants` DISABLE KEYS */;
/*!40000 ALTER TABLE `warrants` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
