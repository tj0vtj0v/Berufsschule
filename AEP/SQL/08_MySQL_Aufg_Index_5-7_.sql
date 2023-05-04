SELECT " " as "";
SELECT " " as "";
SELECT " " as "";
# MySQL-Aufgaben
# ==============
#

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

# 5. Aufgabe
# ----------
# Überprüfen Sie die Indizierung der Tabelle 
# schueler!

SELECT "Indizierung von Schueler pruefen" as "Aufgabe 5";

#####################################################################################################
SHOW INDEX FROM Schueler;


# 6. Aufgabe
# ----------
# Ändern Sie nachträglich den Index in der Tabelle 
# schueler so um, dass er die beiden Attribute 
# Name und Vorname umfaßt und überzeugen Sie sich 
# von der Neuanlage des Indexes!

SELECT "Index fuer Name und Vorname anlegen" as "Aufgabe 6";



# 7. Aufgabe
# ----------
# Löschen Sie den zuletzt angelegten Index auf 
# Name und Vorname wieder und überzeugen Sie sich 
# anschließend davon!

SELECT "Index fuer Name und Vorname loeschen" as "Aufgabe 7";






