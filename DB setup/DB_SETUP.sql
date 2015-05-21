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
  StartTime		TIME,
  EndTime			TIME,
  Users			  VARCHAR(255),
  Klasser	    VARCHAR(255),
  PRIMARY KEY (Room_ID, Datum, StartTime)
);

-- lägg till rum
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Våning 1 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1101', 'Pollacks', 'P', '1', '1', '01', '01');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1102', 'Pollacks', 'P', '1', '1', '02', '02');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1103', 'Pollacks', 'P', '1', '1', '03', '03');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1104', 'Pollacks', 'P', '1', '1', '04', '04');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1105', 'Pollacks', 'P', '1', '1', '05', '05');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1106', 'Pollacks', 'P', '1', '1', '06', '06');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1107', 'Pollacks', 'P', '1', '1', '07', '07');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1108', 'Pollacks', 'P', '1', '1', '08', '08');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1109', 'Pollacks', 'P', '1', '1', '09', '09');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1110', 'Pollacks', 'P', '1', '1', '10', '10');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1111', 'Pollacks', 'P', '1', '1', '11', '11');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1112', 'Pollacks', 'P', '1', '1', '12', '12');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1113', 'Pollacks', 'P', '1', '1', '13', '13');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1114', 'Pollacks', 'P', '1', '1', '14', '14');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1115', 'Pollacks', 'P', '1', '1', '15', '15');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1116', 'Pollacks', 'P', '1', '1', '16', '16');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1117', 'Pollacks', 'P', '1', '1', '17', '17');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1118', 'Pollacks', 'P', '1', '1', '18', '18');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1119', 'Pollacks', 'P', '1', '1', '19', '19');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1120', 'Pollacks', 'P', '1', '1', '20', '20');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1121', 'Pollacks', 'P', '1', '1', '21', '21');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1122', 'Pollacks', 'P', '1', '1', '22', '22');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1123', 'Pollacks', 'P', '1', '1', '23', '23');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1124', 'Pollacks', 'P', '1', '1', '24', '24');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1125', 'Pollacks', 'P', '1', '1', '25', '25');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1126', 'Pollacks', 'P', '1', '1', '26', '26');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1127', 'Pollacks', 'P', '1', '1', '27', '27');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1128', 'Pollacks', 'P', '1', '1', '28', '28');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1129', 'Pollacks', 'P', '1', '1', '29', '29');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1130', 'Pollacks', 'P', '1', '1', '30', '30');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1131', 'Pollacks', 'P', '1', '1', '31', '31');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1132', 'Pollacks', 'P', '1', '1', '32', '32');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1133', 'Pollacks', 'P', '1', '1', '33', '33');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1134', 'Pollacks', 'P', '1', '1', '34', '34');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1135', 'Pollacks', 'P', '1', '1', '35', '35');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1136', 'Pollacks', 'P', '1', '1', '36', '36');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1137', 'Pollacks', 'P', '1', '1', '37', '37');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1138', 'Pollacks', 'P', '1', '1', '38', '38');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1139', 'Pollacks', 'P', '1', '1', '39', '39');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1140', 'Pollacks', 'P', '1', '1', '40', '40');

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Våning 2 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1201', 'Pollacks', 'P', '1', '2', '01', '01');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1202', 'Pollacks', 'P', '1', '2', '02', '02');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1203', 'Pollacks', 'P', '1', '2', '03', '03');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1204', 'Pollacks', 'P', '1', '2', '04', '04');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1205', 'Pollacks', 'P', '1', '2', '05', '05');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1206', 'Pollacks', 'P', '1', '2', '06', '06');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1207', 'Pollacks', 'P', '1', '2', '07', '07');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1208', 'Pollacks', 'P', '1', '2', '08', '08');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1209', 'Pollacks', 'P', '1', '2', '09', '09');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1210', 'Pollacks', 'P', '1', '2', '10', '10');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1211', 'Pollacks', 'P', '1', '2', '11', '11');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1212', 'Pollacks', 'P', '1', '2', '12', '12');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1213', 'Pollacks', 'P', '1', '2', '13', '13');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1214', 'Pollacks', 'P', '1', '2', '14', '14');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1215', 'Pollacks', 'P', '1', '2', '15', '15');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1216', 'Pollacks', 'P', '1', '2', '16', '16');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1217', 'Pollacks', 'P', '1', '2', '17', '17');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1218', 'Pollacks', 'P', '1', '2', '18', '18');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1219', 'Pollacks', 'P', '1', '2', '19', '19');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1220', 'Pollacks', 'P', '1', '2', '20', '20');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1221', 'Pollacks', 'P', '1', '2', '21', '21');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1222', 'Pollacks', 'P', '1', '2', '22', '22');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1223', 'Pollacks', 'P', '1', '2', '23', '23');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1224', 'Pollacks', 'P', '1', '2', '24', '24');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1225', 'Pollacks', 'P', '1', '2', '25', '25');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1226', 'Pollacks', 'P', '1', '2', '26', '26');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1227', 'Pollacks', 'P', '1', '2', '27', '27');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1228', 'Pollacks', 'P', '1', '2', '28', '28');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1229', 'Pollacks', 'P', '1', '2', '29', '29');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1230', 'Pollacks', 'P', '1', '2', '30', '30');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1231', 'Pollacks', 'P', '1', '2', '31', '31');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1232', 'Pollacks', 'P', '1', '2', '32', '32');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1233', 'Pollacks', 'P', '1', '2', '33', '33');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1234', 'Pollacks', 'P', '1', '2', '34', '34');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1235', 'Pollacks', 'P', '1', '2', '35', '35');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1236', 'Pollacks', 'P', '1', '2', '36', '36');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1237', 'Pollacks', 'P', '1', '2', '37', '37');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1238', 'Pollacks', 'P', '1', '2', '38', '38');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1239', 'Pollacks', 'P', '1', '2', '39', '39');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1240', 'Pollacks', 'P', '1', '2', '40', '40');

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Våning 3 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1301', 'Pollacks', 'P', '1', '3', '01', '01');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1302', 'Pollacks', 'P', '1', '3', '02', '02');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1303', 'Pollacks', 'P', '1', '3', '03', '03');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1304', 'Pollacks', 'P', '1', '3', '04', '04');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1305', 'Pollacks', 'P', '1', '3', '05', '05');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1306', 'Pollacks', 'P', '1', '3', '06', '06');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1307', 'Pollacks', 'P', '1', '3', '07', '07');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1308', 'Pollacks', 'P', '1', '3', '08', '08');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1309', 'Pollacks', 'P', '1', '3', '09', '09');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1310', 'Pollacks', 'P', '1', '3', '10', '10');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1311', 'Pollacks', 'P', '1', '3', '11', '11');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1312', 'Pollacks', 'P', '1', '3', '12', '12');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1313', 'Pollacks', 'P', '1', '3', '13', '13');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1314', 'Pollacks', 'P', '1', '3', '14', '14');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1315', 'Pollacks', 'P', '1', '3', '15', '15');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1316', 'Pollacks', 'P', '1', '3', '16', '16');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1317', 'Pollacks', 'P', '1', '3', '17', '17');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1318', 'Pollacks', 'P', '1', '3', '18', '18');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1319', 'Pollacks', 'P', '1', '3', '19', '19');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1320', 'Pollacks', 'P', '1', '3', '20', '20');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1321', 'Pollacks', 'P', '1', '3', '21', '21');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1322', 'Pollacks', 'P', '1', '3', '22', '22');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1323', 'Pollacks', 'P', '1', '3', '23', '23');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1324', 'Pollacks', 'P', '1', '3', '24', '24');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1325', 'Pollacks', 'P', '1', '3', '25', '25');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1326', 'Pollacks', 'P', '1', '3', '26', '26');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1327', 'Pollacks', 'P', '1', '3', '27', '27');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1328', 'Pollacks', 'P', '1', '3', '28', '28');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1329', 'Pollacks', 'P', '1', '3', '29', '29');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1330', 'Pollacks', 'P', '1', '3', '30', '30');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1331', 'Pollacks', 'P', '1', '3', '31', '31');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1332', 'Pollacks', 'P', '1', '3', '32', '32');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1333', 'Pollacks', 'P', '1', '3', '33', '33');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1334', 'Pollacks', 'P', '1', '3', '34', '34');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1335', 'Pollacks', 'P', '1', '3', '35', '35');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1336', 'Pollacks', 'P', '1', '3', '36', '36');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1337', 'Pollacks', 'P', '1', '3', '37', '37');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1338', 'Pollacks', 'P', '1', '3', '38', '38');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1339', 'Pollacks', 'P', '1', '3', '39', '39');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1340', 'Pollacks', 'P', '1', '3', '40', '40');

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Våning 4 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1401', 'Pollacks', 'P', '1', '4', '01', '01');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1402', 'Pollacks', 'P', '1', '4', '02', '02');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1403', 'Pollacks', 'P', '1', '4', '03', '03');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1404', 'Pollacks', 'P', '1', '4', '04', '04');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1405', 'Pollacks', 'P', '1', '4', '05', '05');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1406', 'Pollacks', 'P', '1', '4', '06', '06');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1407', 'Pollacks', 'P', '1', '4', '07', '07');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1408', 'Pollacks', 'P', '1', '4', '08', '08');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1409', 'Pollacks', 'P', '1', '4', '09', '09');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1410', 'Pollacks', 'P', '1', '4', '10', '10');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1411', 'Pollacks', 'P', '1', '4', '11', '11');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1412', 'Pollacks', 'P', '1', '4', '12', '12');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1413', 'Pollacks', 'P', '1', '4', '13', '13');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1414', 'Pollacks', 'P', '1', '4', '14', '14');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1415', 'Pollacks', 'P', '1', '4', '15', '15');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1416', 'Pollacks', 'P', '1', '4', '16', '16');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1417', 'Pollacks', 'P', '1', '4', '17', '17');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1418', 'Pollacks', 'P', '1', '4', '18', '18');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1419', 'Pollacks', 'P', '1', '4', '19', '19');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1420', 'Pollacks', 'P', '1', '4', '20', '20');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1421', 'Pollacks', 'P', '1', '4', '21', '21');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1422', 'Pollacks', 'P', '1', '4', '22', '22');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1423', 'Pollacks', 'P', '1', '4', '23', '23');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1424', 'Pollacks', 'P', '1', '4', '24', '24');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1425', 'Pollacks', 'P', '1', '4', '25', '25');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1426', 'Pollacks', 'P', '1', '4', '26', '26');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1427', 'Pollacks', 'P', '1', '4', '27', '27');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1428', 'Pollacks', 'P', '1', '4', '28', '28');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1429', 'Pollacks', 'P', '1', '4', '29', '29');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1430', 'Pollacks', 'P', '1', '4', '30', '30');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1431', 'Pollacks', 'P', '1', '4', '31', '31');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1432', 'Pollacks', 'P', '1', '4', '32', '32');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1433', 'Pollacks', 'P', '1', '4', '33', '33');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1434', 'Pollacks', 'P', '1', '4', '34', '34');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1435', 'Pollacks', 'P', '1', '4', '35', '35');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1436', 'Pollacks', 'P', '1', '4', '36', '36');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1437', 'Pollacks', 'P', '1', '4', '37', '37');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1438', 'Pollacks', 'P', '1', '4', '38', '38');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1439', 'Pollacks', 'P', '1', '4', '39', '39');
INSERT INTO `Campus`.`Room` (`Room_ID`, `RoomName`, `Campus`, `CampusShort`, `Building`, `Floor`, `RoomNumber`, `NumberOfPlaces`) VALUES ('', 'P1440', 'Pollacks', 'P', '1', '4', '40', '40');

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
INSERT INTO `Campus`.`RoomTime` (`Room_ID`, `Datum`, `StartTime`, `EndTime`) VALUES ('2' , '2015-05-18', '13:15:00', '15:00:00');
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
