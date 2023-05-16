DROP DATABASE IF EXISTS SchuelerDB;

CREATE DATABASE SchuelerDB;

USE SchuelerDB;

CREATE TABLE IF NOT EXISTS Schueler 
	(SID INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	Name 		VARCHAR(20) NOT NULL, 
	Vorname 	VARCHAR(20) NOT NULL, 
	GebDat 		DATE NOT NULL, 
 	S_Strasse 	VARCHAR(25), 
	S_PLZ 		VARCHAR(5), 
	S_Ort 		VARCHAR(20), 
	S_Tel 		VARCHAR(15), 
	Beruf 		VARCHAR(30) 	DEFAULT 'IT-Systemelektroniker', 
	12REL 		INTEGER, 
	12D 		INTEGER, 
	12E 		INTEGER, 
	12SK 		INTEGER, 
	12ITA 		INTEGER, 
	12VS 		INTEGER, 
	12ITS 		INTEGER, 
	12BWP 		INTEGER, 
	D_Schnitt 	DECIMAL(3,2) UNSIGNED, 
	Abschluss 	CHAR(1),
	Bemerkungen VARCHAR(100), 
	Firma 		VARCHAR(25), 
	F_Strasse 	VARCHAR(25), 
	F_PLZ 		VARCHAR(5), 
	F_Ort 		VARCHAR(20), 
	F_Tel 		VARCHAR(15), 
	F_Ausbilder VARCHAR(20),
	FULLTEXT(Bemerkungen), 
        AKT_DATUM DATE,
	INDEX IndexSchueler(Name))
	AUTO_INCREMENT = 1000
	COMMENT = "Diese Tabelle ist nicht voll normalisiert!";





# 7a. Aufgabe
# ----------
# Erstellen Sie eine neue Tabelle Account mit den Spalten:
# AccountId - Primärschlüssel 
# Owner 
# Benutzername - soll eindeutig sein
# PWD
# 
# Owner soll als Fremdschlüssel auf den Schüler referenzieren
# um dessen Account es sich jeweils handelt

SELECT "Tabelle Account anlegen" as "Aufgabe 7a";

CREATE TABLE IF NOT EXISTS Ownerlist(
	Name			VARCHAR(30)	PRIMARY KEY,
    INDEX name(Name)
	);

CREATE TABLE Account
	(AccountId		INTEGER		PRIMARY KEY,#		AUTO_INCREMENT,
	Owner			VARCHAR(25),
    Benutzername	VARCHAR(25) UNIQUE KEY,
    PWD				VARCHAR(50),
    INDEX AId(AccountId),
    FOREIGN KEY(Owner) REFERENCES Ownerlist(Name)
    );




# 7b) Überprüfen Sie das Anlegen des Fremdschlüssels mit Hilfe von  SHOW CREATE
#	   Wie wird der Fremdschlüssel bezeichnet?

SELECT "Show create von Account" as "Aufgabe 7b";

SHOW CREATE TABLE Account;
#CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Owner`) REFERENCES `ownerlist` (`Name`)
#'Schueler', 'Account', 'CREATE TABLE `account` (\n  `AccountId` int NOT NULL,\n  `Owner` varchar(25) DEFAULT NULL,\n  `Benutzername` varchar(25) DEFAULT NULL,\n  `PWD` varchar(50) DEFAULT NULL,\n  PRIMARY KEY (`AccountId`),\n  UNIQUE KEY `Benutzername` (`Benutzername`),\n  KEY `AId` (`AccountId`),\n  KEY `Owner` (`Owner`),\n  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Owner`) REFERENCES `ownerlist` (`Name`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'






# 7c) Sie können sich die vorhandenen Fremdschlüssel auch mit folgendem 
#     Statement ausgeben lassen:
# 	select *
# 	from information_schema.table_constraints
# 	where table_name='Account';

SELECT "Fremdschluessel mit dem Information_schema anzeigen" as "Aufgabe 7c";

SELECT *
FROM information_schema.table_constraints
WHERE table_name='Account';




# 7d) Löschen Sie die Tabelle Schueler.
# 	Was stellen Sie fest?


SELECT "Loeschversuch von Schueler " as "Aufgabe 7d";
	

DROP TABLE IF EXISTS Schueler;



# 7e) Löschen Sie die Tabelle Account wieder.

SELECT "Loeschen von" as "Aufgabe 7e";

DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS Ownerlist;

SHOW TABLES;

