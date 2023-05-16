
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


# 8. Aufgabe
# ----------
# Geben Sie nun mind. 3 Schüler-Datensätze ein! 
# (Auf Tabellierung und Übersichtlichkeit achten!)
# Überprüfen Sie im Anschluß die eingegebenen Datensätze!
#
# Testen Sie für die Geburtsdaten der Schüler verschiedene 
# Formatierungen für Date, wie z.B. 13.04.1987 oder 
# 1987:04:13.  Welche Formatierungen sind gültig, welche
# nicht ?

SELECT "Datensätze einfügen" as "Aufgabe 8";
 
INSERT INTO Schueler (Vorname, Name, GebDat)
VALUES ('Thomas', 'Maus', '2000.05.23');
INSERT INTO Schueler (Vorname, Name, GebDat)
VALUES ('Max', 'Meier', '1999:05:11');
INSERT INTO Schueler (Vorname, Name, GebDat)
VALUES ('Steffan', 'Schmidt', '2001s20s02');
--JJJJ?MM?TT ?=noCharorInt
--SELECT * FROM Schueler;

# 9. Aufgabe
# ----------
# Erstellen Sie nun zu Übungszwecken eine Tabelle 
# schuelerMitEltern mit den Spalten NameVater, VornameVater,  
# NameMutter,VornameMutter,Name, Vorname, 
# wobei die Tabellenstruktur und 
# die bereits vorhandenen Daten für den Schüler 
# aus der bereits vorliegenden Tabelle schueler 
# übernommen werden sollen(SELECT Name,Vorname FROM Schueler;!) 
# Zeigen Sie die gebildete Tabellenstruktur anschließend an und 
# löschen Sie diese dann wieder!


# Achtung: Die neuen Spalten aus der Tabelle 
# "schueler" müssen rechts (!), also nach der 
# normalen Spalten-Definition angefügt werden!

SELECT "Spalten kopieren" as "Aufgabe 9";

DROP TABLE IF EXISTS schuelerMitEltern;
CREATE TABLE schuelerMitEltern (
	NameVater		VARCHAR(30),
	VornameVater	VARCHAR(30),
	NameMutter		VARCHAR(30),
	VornameMutter	VARCHAR(30)
)
SELECT Name, Vorname FROM Schueler;

SELECT * FROM schuelerMitEltern;


# 10. Aufgabe
# -----------
# Geben Sie für einen Schüler einen Datensatz nur 
# mit Namen, Vornamen und Geburtstag ein, bei dem 
# dann der Default-Wert bei Ausbildungsberuf zum 
# Tragen kommt! überzeugen Sie sich anschließend
# vom Eintrag des neuen Datensatzes!

SELECT "Default verwenden" as "Aufgabe 10";

INSERT INTO Schueler (Vorname, Name, GebDat)
VALUES ('Dextra', 'Default', '2000:01:01');
SELECT * FROM Schueler;


# 11. Aufgabe
# ----------
# Geben Sie einen Schüler ein, von dem zu diesem  
# Zeitpunkt nur dessen Name, Vorname, Geburtsdatum 
# und die Firma bekannt sind.

SELECT "Definierte Spalten füllen" as "Aufgabe 11";

INSERT INTO Schueler (Vorname, Name, GebDat, Firma)
VALUES ('Franz', 'Firmann', '2000:01:01', 'BMW');
SELECT * FROM Schueler;


# 12.Aufgabe
# ----------
# Löschen Sie den Schüler Pfaff Theo (oder einen 
# von Ihnen gewählten) aus der Tabelle und zeigen 
# Sie vorher und nach der Änderung die Tabelle an!

SELECT "Datensatz löschen" as "Aufgabe 12";
SELECT * FROM Schueler;
DELETE FROM Schueler 
WHERE Name = 'Default';
SELECT * FROM Schueler;


# 13.Aufgabe (Zeugenschutzprogramm)
# ----------
# ändern Sie Datensatz Nr 1005 von Herrn Dreisblech 
# (oder einen von Ihnen gewählten) indem Sie dafür 
# einen neuen Name, Vornamen und ein neues Geburts-
# datum eingeben und zeigen Sie die Datensätze 
# vorher und nachher an!

SELECT "Datensatz ändern" as "Aufgabe 13";
SELECT * FROM Schueler;
UPDATE Name, Vorname, 
SELECT * FROM Schueler;



# 14.Aufgabe
# ----------
# Geben Sie einen zusätzlichen Datensatz (SID, 
# Name, Vorname, GebDat) mit der oben bei Aufgabe 
# 12. gelöschten SID ein und zeigen Sie die 
# Datensätze an!

SELECT "SID wieder verwenden" as "Aufgabe 14";


# 15.Aufgabe
# ----------
# Geben Sie einen zusätzlichen Datensatz mit 
# einer SID ein (manuell vergeben), die mind. 5 Einheiten über 
# der größten bisher verwendeten SID liegt!

SELECT "SID manuell vergeben" as "Aufgabe 15";



# 16.Aufgabe
# ----------
# Die bisher "willkürlichen" Eingaben beim Noten-
# durchschnitt sollen jetzt durch exakt berechnete 
# Werte ersetzt werden. (überprüfen!)

SELECT "Notenschnitte berechnen lassen" as "Aufgabe 16";




