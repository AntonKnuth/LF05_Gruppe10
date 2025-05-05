-- trigger erstellen; wenn lieferant gelöscht wird, wenn Kunde gelöscht wird. überprüfen ob ON DELETE oder Trigger besser ist. wenn es geht, würde ich Trigger sagen.
-- warum co2 so gemacht, wie gemacht
-- warum diese indizes? query überprüfen mit EXPLAIN
-- vlt. die anderen einheiten doch als verbesserungs vorschlag. da schwierigkeiten bei umrechnung

DROP DATABASE IF EXISTS bio_fresh;
CREATE DATABASE bio_fresh;
USE bio_fresh;


CREATE TABLE ort (
	ort_id INT PRIMARY KEY AUTO_INCREMENT,
	plz VARCHAR(10) NOT NULL,
	stadt VARCHAR(50) NOT NULL,
	UNIQUE (plz, stadt)
);

CREATE TABLE adresse (
	adresse_id INT PRIMARY KEY AUTO_INCREMENT,
	strasse VARCHAR(50) NOT NULL,
	hausnummer VARCHAR(10) NOT NULL,
	adresszusatz VARCHAR(20),
	ort_id INT NOT NULL,
	land CHAR(2) NOT NULL DEFAULT 'DE'
);

CREATE TABLE kunde (
	kunde_id INT PRIMARY KEY AUTO_INCREMENT,
	adresse_id INT NOT NULL,
	vorname VARCHAR(50) NOT NULL,
	nachname VARCHAR(50) NOT NULL,
	geburtsdatum DATE,
	telefonnummer VARCHAR(20), 
	email VARCHAR(75) NOT NULL UNIQUE,
	CONSTRAINT chk_kunde_email_format CHECK (
		email REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$'	
	),
	CONSTRAINT chk_kunde_telefonnummer_format CHECK (
		telefonnummer REGEXP '^\\+[0-9]{6,15}$'
	)
);

CREATE TABLE bestellung (
	bestellung_id INT PRIMARY KEY AUTO_INCREMENT,
	kunde_id INT NOT NULL,
	gesamtpreis DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT 0.00, -- Trigger für automatische ausrechnung hinzufügen
	bestelldatum DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
	-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 										-- Verbesserungsvorschlag
	-- updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Verbesserungsvorschlag
	-- status ENUM('offen', 'bezahlt', 'versendet', 'storniert') DEFAULT 'offen'  -- Verbesserungsvorschlag
);

CREATE TABLE rezept (
	rezept_id INT PRIMARY KEY AUTO_INCREMENT,
	titel VARCHAR(100) NOT NULL UNIQUE,
	beschreibung VARCHAR(500) NOT NULL,
	zubereitung TEXT NOT NULL,
	zubereitungszeit_min SMALLINT UNSIGNED NOT NULL CHECK (zubereitungszeit_min >= 1),
	portionen TINYINT UNSIGNED NOT NULL DEFAULT 1 CHECK (portionen >= 1)
);

CREATE TABLE rezept_bestellung (
	bestellung_id INT,
	rezept_id INT,
	menge TINYINT UNSIGNED NOT NULL DEFAULT 1 CHECK (menge >= 1),
	PRIMARY KEY (bestellung_id, rezept_id)
);

CREATE TABLE lieferant (
	lieferant_id INT PRIMARY KEY AUTO_INCREMENT,
	adresse_id INT NOT NULL UNIQUE,
	lieferant_name VARCHAR(100) NOT NULL,
	telefonnummer VARCHAR(20) UNIQUE,	
	email VARCHAR(100) NOT NULL UNIQUE,
	CONSTRAINT chk_lieferant_email_format CHECK (
		email REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$'
	),
	CONSTRAINT chk_lieferant_telefonnummer_format CHECK (
		telefonnummer REGEXP '^\\+[0-9]{6,15}$'
	)
);

CREATE TABLE naehrstoffangabe (
	naehrstoffangabe_id INT PRIMARY KEY AUTO_INCREMENT,
	kalorien_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	proteine_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	kohlenhydrate_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	zucker_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	fett_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	gesaettigte_fettsaeuren_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	ballaststoffe_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL,
	natrium_pro_100g DECIMAL(6,3) UNSIGNED NOT NULL
);

CREATE TABLE zutat (
	zutat_id INT PRIMARY KEY AUTO_INCREMENT,
	lieferant_id INT,
	naehrstoffangabe_id INT UNIQUE,
	bezeichnung VARCHAR(100) NOT NULL UNIQUE,
	bestand DECIMAL(9,3) UNSIGNED  NOT NULL DEFAULT 0.00 COMMENT 'Kilogramm oder Liter',
	nettopreis DECIMAL(8,2) UNSIGNED  NOT NULL DEFAULT 0.00 COMMENT 'Euro',
	co2_aequivalent_pro_kg DECIMAL(5,2) UNSIGNED DEFAULT NULL
);

CREATE TABLE rezept_zutat (
	rezept_id INT NOT NULL,
	zutat_id INT NOT NULL,
	menge DECIMAL(7,2) UNSIGNED NOT NULL,
	einheit ENUM('g', 'kg', 'ml', 'l') NOT NULL DEFAULT 'g', -- Verbesserungsvorschlag: Stk, TL, EL, Priese, Messerspitze, Tasse, Cup und Becher mit g, kg, ml und l in eine weitere tabelle auslagern mit den umrechnungen zu g
	PRIMARY KEY (rezept_id, zutat_id)
);

CREATE TABLE beschraenkung (
	beschraenkung_id INT PRIMARY KEY AUTO_INCREMENT,
	beschraenkung_typ VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE zutat_beschraenkung (
	beschraenkung_id INT,
	zutat_id INT,
	PRIMARY KEY (beschraenkung_id, zutat_id)
);

CREATE TABLE ernaehrungskategorie (
	ernaehrungskategorie_id INT PRIMARY KEY AUTO_INCREMENT,
	ernaehrungskategorie_typ VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE zutat_ernaehrungskategorie (
	ernaehrungskategorie_id INT,
	zutat_id INT,
	PRIMARY KEY (ernaehrungskategorie_id, zutat_id)
);


ALTER TABLE kunde
	ADD CONSTRAINT fk_kunde_adresse
	FOREIGN KEY (adresse_id) REFERENCES adresse (adresse_id);

ALTER TABLE adresse
	ADD CONSTRAINT fk_adresse_ort
	FOREIGN KEY (ort_id) REFERENCES ort (ort_id);

ALTER TABLE bestellung
	ADD CONSTRAINT fk_bestellung_kunde
	FOREIGN KEY (kunde_id) REFERENCES kunde (kunde_id)
	ON DELETE CASCADE;

ALTER TABLE rezept_bestellung
	ADD CONSTRAINT fk_rezept_bestellung_bestellung
	FOREIGN KEY (bestellung_id) REFERENCES bestellung (bestellung_id)
	ON DELETE CASCADE,
	ADD CONSTRAINT fk_rezept_bestellung_rezept
	FOREIGN KEY (rezept_id) REFERENCES rezept (rezept_id);

ALTER TABLE rezept_zutat
	ADD CONSTRAINT fk_rezept_zutat_rezept
	FOREIGN KEY (rezept_id) REFERENCES rezept (rezept_id),
	ADD CONSTRAINT fk_rezept_zutat_zutat
	FOREIGN KEY (zutat_id) REFERENCES zutat (zutat_id);

ALTER TABLE lieferant
	ADD CONSTRAINT fk_lieferant_adresse
	FOREIGN KEY (adresse_id) REFERENCES adresse (adresse_id);

ALTER TABLE zutat
	ADD CONSTRAINT fk_zutat_lieferant
	FOREIGN KEY (lieferant_id) REFERENCES lieferant (lieferant_id)
	ON DELETE SET NULL,
	ADD CONSTRAINT fk_zutat_naehrstoffangabe
	FOREIGN KEY (naehrstoffangabe_id) REFERENCES naehrstoffangabe (naehrstoffangabe_id);

ALTER TABLE zutat_beschraenkung
	ADD CONSTRAINT fk_zutat_beschraenkung_beschraenkung
	FOREIGN KEY (beschraenkung_id) REFERENCES beschraenkung (beschraenkung_id),
	ADD CONSTRAINT fk_zutat_beschraenkung_zutat
	FOREIGN KEY (zutat_id) REFERENCES zutat (zutat_id);

ALTER TABLE zutat_ernaehrungskategorie
	ADD CONSTRAINT fk_zutat_ernaehrungskategorie_kategorie
	FOREIGN KEY (ernaehrungskategorie_id) REFERENCES ernaehrungskategorie (ernaehrungskategorie_id),
	ADD CONSTRAINT fk_zutat_ernaehrungskategorie_zutat
	FOREIGN KEY (zutat_id) REFERENCES zutat (zutat_id);
	

CREATE INDEX idx_adresse_ort_id ON adresse (ort_id);
CREATE INDEX idx_bestellung_kunde_id ON bestellung (kunde_id);
CREATE INDEX idx_zutat_lieferant_id ON zutat (lieferant_id);
CREATE INDEX idx_zutat_naehrstoffangabe_id ON zutat (naehrstoffangabe_id);
CREATE INDEX idx_zutat_bezeichnung ON zutat (bezeichnung);
CREATE INDEX idx_rezept_titel ON rezept (titel);