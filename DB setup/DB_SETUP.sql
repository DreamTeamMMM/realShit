drop schema Campus;
CREATE SCHEMA `Campus` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE Campus;

-- drop table Users;
-- drop table Room;

CREATE TABLE Users (
  UserID 			INT(11)      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Username 		VARCHAR(65)  NOT NULL,
  Password 		VARCHAR(32)  NOT NULL,
  Email 			VARCHAR(255) NOT NULL,
  Timeedit 		VARCHAR(255) NOT NULL
);

CREATE TABLE Room (
  Room_ID        INT(11)      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  RoomName 	     VARCHAR(255) NOT NULL,
  Campus 		     VARCHAR(255) NOT NULL,
  CampusShort    VARCHAR(10)  NOT NULL,
  Building 	     INT(11)      NOT NULL,
  Floor 		     INT(11)      NOT NULL,
  RoomNumber 		 INT(11)      NOT NULL,
  NumberOfPlaces INT(11)      NOT NULL
);

CREATE TABLE RoomAKA (
  Room_ID     INT(11)       NOT NULL,
  AKA         VARCHAR(255)  NOT NULL,
  PRIMARY KEY (Room_ID, AKA)
);

CREATE TABLE RoomStats (
  Room_ID 		INT(11)        NOT NULL,
  RoomStat 		VARCHAR(255)   NOT NULL,
  PRIMARY KEY (Room_ID, RoomStat)
);

CREATE TABLE RoomTime (
  Room_ID			INT(11),
  Datum			  DATE,
  StartTime		time,
  EndTime			time,
  PRIMARY KEY (Room_ID, Datum, StartTime)
);

-- lägg till rum
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('1' , 'P1101', 'Pollacks', 'P', '1', '1', '01', '01');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('2' , 'P1102', 'Pollacks', 'P', '1', '1', '02', '02');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('3' , 'P1103', 'Pollacks', 'P', '1', '1', '03', '03');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('4' , 'P1104', 'Pollacks', 'P', '1', '1', '04', '04');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('5' , 'P1105', 'Pollacks', 'P', '1', '1', '05', '05');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('6' , 'P1106', 'Pollacks', 'P', '1', '1', '06', '06');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('7' , 'P1107', 'Pollacks', 'P', '1', '1', '07', '07');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('8' , 'P1108', 'Pollacks', 'P', '1', '1', '08', '08');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('9' , 'P1109', 'Pollacks', 'P', '1', '1', '09', '09');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('10', 'P1110', 'Pollacks', 'P', '1', '1', '10', '10');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('11', 'P1111', 'Pollacks', 'P', '1', '1', '11', '11');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('12', 'P1112', 'Pollacks', 'P', '1', '1', '12', '12');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('13', 'P1113', 'Pollacks', 'P', '1', '1', '13', '13');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('14', 'P1114', 'Pollacks', 'P', '1', '1', '14', '14');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('15', 'P1115', 'Pollacks', 'P', '1', '1', '15', '15');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('16', 'P1116', 'Pollacks', 'P', '1', '1', '16', '16');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('17', 'P1117', 'Pollacks', 'P', '1', '1', '17', '17');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('18', 'P1118', 'Pollacks', 'P', '1', '1', '18', '18');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('19', 'P1119', 'Pollacks', 'P', '1', '1', '19', '19');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('20', 'P1120', 'Pollacks', 'P', '1', '1', '20', '20');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('21', 'P1121', 'Pollacks', 'P', '1', '1', '21', '21');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('22', 'P1122', 'Pollacks', 'P', '1', '1', '22', '22');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('23', 'P1123', 'Pollacks', 'P', '1', '1', '23', '23');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('24', 'P1124', 'Pollacks', 'P', '1', '1', '24', '24');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('25', 'P1125', 'Pollacks', 'P', '1', '1', '25', '25');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('26', 'P1126', 'Pollacks', 'P', '1', '1', '26', '26');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('27', 'P1127', 'Pollacks', 'P', '1', '1', '27', '27');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('28', 'P1128', 'Pollacks', 'P', '1', '1', '28', '28');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('29', 'P1129', 'Pollacks', 'P', '1', '1', '29', '29');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('30', 'P1130', 'Pollacks', 'P', '1', '1', '30', '30');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('31', 'P1131', 'Pollacks', 'P', '1', '1', '31', '31');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('32', 'P1132', 'Pollacks', 'P', '1', '1', '32', '32');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('33', 'P1133', 'Pollacks', 'P', '1', '1', '33', '33');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('34', 'P1134', 'Pollacks', 'P', '1', '1', '34', '34');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('35', 'P1135', 'Pollacks', 'P', '1', '1', '35', '35');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('36', 'P1136', 'Pollacks', 'P', '1', '1', '36', '36');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('37', 'P1137', 'Pollacks', 'P', '1', '1', '37', '37');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('38', 'P1138', 'Pollacks', 'P', '1', '1', '38', '38');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('39', 'P1139', 'Pollacks', 'P', '1', '1', '39', '39');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('40', 'P1140', 'Pollacks', 'P', '1', '1', '40', '40');

-- lägg till AKA
INSERT INTO `Campus`.`RoomAKA` (`Room_ID`, `AKA`) VALUES ('2', 'Skrubben');
INSERT INTO `Campus`.`RoomAKA` (`Room_ID`, `AKA`) VALUES ('4', 'Lunchrummet');

-- lägg till tider
-- - - - - - - - - - - - - - - - - - - - - - - 1 - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('1' , '2015-05-18', '08:15:00', '10:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('1' , '2015-05-18', '10:15:00', '12:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('1' , '2015-05-18', '13:15:00', '15:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('1' , '2015-05-18', '15:15:00', '17:00:00');


INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('2' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('3' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('4' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('5' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('6' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('7' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('8' , '2015-05-18', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('9' , '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('10', '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('11', '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('12', '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('13', '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('14', '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('15', '2015-05-19', '15:15:00', '17:00:00');
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('16', '2015-05-19', '15:15:00', '17:00:00');

-- lägg till stats
-- - - - - - - - - - - - - - - - - - - - - - - 1 - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('1', 'Pennor');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('1', 'Hawk');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('1', 'Monkey');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('1', 'Banan');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('1', 'Klocka');
-- - - - - - - - - - - - - - - - - - - - - - - 2 - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('2', 'OH');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('2', 'Kilo');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('2', 'Joooos');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('2', 'Lampa');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('2', 'Strumpor');
-- - - - - - - - - - - - - - - - - - - - - - - 3 - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('3', 'Bed');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('3', 'Bensin');
-- - - - - - - - - - - - - - - - - - - - - - - 5 - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('5', 'ABC');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('5', 'I');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('5', 'Jag');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('5', 'Gillar');
INSERT INTO `Campus`.`RoomStats` (`Room_ID`, `RoomStat`) VALUES ('5', 'Mat');
