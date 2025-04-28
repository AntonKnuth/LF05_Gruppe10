CREATE TABLE KUNDE(
	KundeId INT PRIMARY KEY
	, AdresseId INT
	, Vorname VARCHAR (20)
	, Nachname VARCHAR (50)
	, Geburtsdatum DATE
	, TelefonNr VARCHAR (15)
	, Email VARCHAR (50)
);

CREATE TABLE BESTELLUNG(
	BestellungId INT PRIMARY KEY
	, KundeId INT
	, Gesamtpreis DOUBLE (10,2)
	, Bestelldatum DATE
);

CREATE TABLE REZEPT_BESTELLUNG(
	BestellungId INT NOT NULL
	, RezeptId INT NOT NULL
	, Menge INT
	, PRIMARY KEY (BestellungId, RezeptId)
);

CREATE TABLE REZEPT(
	RezeptId INT PRIMARY KEY
	, Titel VARCHAR(50)
  	, Beschreibung VARCHAR (255)
  	, Zubereitung TEXT
	, Zubereitungszeit VARCHAR(15)
	, Portionen INT
);

CREATE TABLE REZEPT_ZUTAT(
	RezeptId INT NOT NULL
	, ZutatId INT NOT NULL
	, Menge DOUBLE (5,2)
	, PRIMARY KEY (RezeptId, ZutatId)
);

CREATE TABLE ADRESSE(
	AdresseId INT PRIMARY KEY
	, Strasse VARCHAR(50)
	, HausNr VARCHAR(4)
	, Adresszusatz VARCHAR(4)
	, OrtId INT
);
CREATE TABLE ORT(
	OrtId INT PRIMARY KEY
	, PLZ VARCHAR(10)
	, Stadt VARCHAR(50)
);

CREATE TABLE LIEFERANT(
	LieferantId INT PRIMARY KEY
	, AdresseId INT
	, LieferantName VARCHAR(50)
	, TelefonNr VARCHAR(15)
	, Email VARCHAR(50)
);
	
CREATE TABLE ZUTAT(
	ZutatId INT PRIMARY KEY
	, LieferantId INT
	, NaehrstoffangabeId INT
	, Bezeichnung VARCHAR(40)
	, Bestand DOUBLE(4,2)
	, Nettopreis DOUBLE(5,2)
	, CO2AequivalentProKg DOUBLE(10,4)
);
	
CREATE TABLE ZUTAT_BESCHRAENKUNG (
	BeschraenkungId INT NOT NULL
	, ZutatId INT NOT NULL
	, PRIMARY KEY (BeschraenkungId, ZutatId)
);
	
CREATE TABLE BESCHRAENKUNG(
	BeschraenkungId INT PRIMARY KEY
		, BeschraenkungTyp VARCHAR(50)
);
	
CREATE TABLE ZUTAT_ERNAEHRUNGSKATEGORIE(
	ErnaehrungskategorieId INT NOT NULL
	, ZutatId INT NOT NULL
	, PRIMARY KEY (ErnaehrungskategorieId, ZutatId)
);

CREATE TABLE ERNAEHRUNGSKATEGORIE(
	ErnaehrungskategorieId INT PRIMARY KEY
	, ErnaehrungkategorieTyp VARCHAR(50)
);

CREATE TABLE NAEHRSTOFFANGABE (
	NaehrstoffangabeId INT PRIMARY KEY
	, KalorienPro100g DOUBLE(4,2)
	, ProteinePro100g DOUBLE(4,2)
	, KohlenhydratePro100g DOUBLE(4,2)
	, ZuckerPro100g DOUBLE(4,2)
	, FettPro100g DOUBLE(4,2)
	, GesaettigteFettSaeurenPro100g DOUBLE(4,2)
	, BallaststoffePro100g DOUBLE(4,2)
	, NatriumPro100g DOUBLE(4,2)
);