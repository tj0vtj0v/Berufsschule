# MySQL-Aufgaben
# ==============
#
# 1. Aufgabe
# ----------
# Erzeugen Sie eine Datenbank 'SchuelerDB', wobei
# eine eventuell vorhandene Datenbank 'SchuelerDB' 
# gelöscht werden soll: Die Anlage der Datenbank 
# soll anschließend überprüft werden!

SELECT "Aufgabe 1" as "";

DROP DATABASE IF EXISTS SchuelerDB;

CREATE DATABASE SchuelerDB;

SHOW DATABASES;




# 2a. Aufgabe
# ----------
# Erstellen Sie eine Tabelle 'Schueler' mit 
# folgenden Spalten: 
# SID --> einmalig vorkommend, automatisch 
# fortlaufend, Primärschlüssel, nur positiv, 

# Name --> Zeichen, nicht leer, 20 Zeichen, 
# Vorname --> Zeichen, nicht leer, 20 Zeichen,
# GebDat --> nicht leer, Datumsformat
# S_Strasse --> 25 Zeichen
# S_PLZ --> 5 Zeichen
# S_Ort --> 20 Zeichen
# S_Tel --> 15 Zeichen
# Beruf --> 30 Zeichen, meist IT-System-
# Elektroniker
# 12REL --> Numerisch
# 12D --> Numerisch
# 12E
# 12SK
# 12ITA
# 12VS
# 12ITS
# 12BWP
# D_Schnitt 
# Abschluss
# Bemerkungen
# Firma --> 25 Zeichen
# F_Strasse
# F_PLZ
# F_Ort
# F_Tel
# F_Ausbilder
# Überlegen Sie sich passende Datentypen und 
# Eigenschaften!




SELECT "Aufgabe 2a" as "";

USE schuelerDB;

CREATE TABLE schueler 
	(SID INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	Name CHAR(20) NOT NULL, 
	Vorname CHAR(20) NOT NULL, 
	GebDat DATE NOT NULL, 
 	S_Strasse CHAR(25), 
	S_PLZ CHAR(5), 
	S_Ort CHAR(20), 
	S_Tel CHAR(15), 
	Beruf CHAR(30) DEFAULT 'IT-Systemelektroniker', 
	12REL INTEGER, 
	12D INTEGER, 
	12E INTEGER, 
	12SK INTEGER, 
	12ITA INTEGER, 
	12VS INTEGER, 
	12ITS INTEGER, 
	12BWP INTEGER, 
	D_Schnitt DECIMAL(3,2) UNSIGNED, 
	Abschluss Tinyint(1),
	Bemerkungen VARCHAR(100), 
	Firma CHAR(25), 
	F_Strasse CHAR(25), 
	F_PLZ CHAR(5), 
	F_Ort CHAR(20), 
	F_Tel CHAR(15), 
	F_Ausbilder CHAR(20) 
	);
	





	
# 2b. Aufgabe
# ----------
# Überprüfen Sie die Anlage der Tabelle und die 
# erzeugte Tabellenstruktur! 


SELECT "Aufgabe 2b" as "";


DESC schueler;





# 3a. Aufgabe
# ----------
# Ändern sie Ihre Tabelle schueler inderm sie das Statement 
# aus Aufgabe 2a  folgendermaßen abändern:
#
# - Der Tabelle soll ein Kommentar mit folgendem Text hinzugefügt werden:
# "Diese Tabelle ist nicht voll normalisiert!"
# 
# - Der automatisch vergebene Primärschlüssel soll die Nummerierung 
# mit dem Wert 1000 beginnen.
#
# - Die Tabelle soll die Engine MyISAM verwenden.

SELECT "Aufgabe 3a" as "";






# 3b. Aufgabe
# Welche weiteren Engines würden auf dem MySQL-Server
# zur Verfügung stehen ?

SELECT "Aufgabe 3b" as "";





# 4a. Aufgabe
# ----------
# Erstellen Sie zu Übungszwecken eine weitere, 
# explizit als MyISAM definierte Tabelle 
# SchuelerNeu mit den folgenden Spalten:
# Name, Vorname, Geburtsdatum, Strasse, PLZ, Ort.
# Die drei Spalten Name, Vorname und Geburtsdatum 
# sollen dabei zusammen als Primärschlüssel 
# benutzt werden.
# Überprüfen Sie die Struktur der angelegten 
# Tabelle und löschen Sie sie im Anschluss daran 
# sogleich wieder! Überzeugen Sie sich dazu vor 
# und nach dem Löschen von der Existenz bzw. dem 
# Löschen der Tabelle!

SELECT "Aufgabe 4a" as "";


# 4b. Aufgabe
-- Lies in der MySQL Referenz von Oracle nach, welche weiteren
-- Table Options es gibt