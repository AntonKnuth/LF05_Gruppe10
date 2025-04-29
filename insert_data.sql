INSERT IGNORE INTO ORT (OrtId, PLZ, Stadt) VALUES
(1, '10115', 'Berlin'),
(2, '20095', 'Hamburg'),
(3, '80331', 'München'),
(4, '50667', 'Köln'),
(5, '60311', 'Frankfurt'),
(6, '70173', 'Stuttgart'),
(7, '40210', 'Düsseldorf'),
(8, '41061', 'Mönchengladbach'),
(9, '42001', 'Leipzig'),
(10, '44319', 'Dortmund');

INSERT IGNORE INTO ADRESSE (AdresseId, Strasse, HausNr, Adresszusatz, OrtId) VALUES
(1, 'Hauptstrasse', '12', '', 1),
(2, 'Musterweg', '34A', '', 2),
(3, 'Bahnhofstrasse', '7', 'EG', 3),
(4, 'Lindenstrasse', '22', '', 4),
(5, 'Gartenstrasse', '5', '', 5),
(6, 'Schillerstrasse', '3', 'OG', 6),
(7, 'Ringstrasse', '10', '', 7),
(8, 'Bergstrasse', '8', '', 8),
(9, 'Feldstrasse', '2B', 'OG', 9),
(10, 'Waldstrasse', '11', '', 10);

INSERT IGNORE INTO lieferant(
	LieferantId
	, AdresseId
	, LieferantName
	, TelefonNr
	, Email
)
VALUES
(1, 9, 'BioFarm GmbH', '030-1234567', 'info@biofarm.de'),
(2, 10, 'FruchtExpress AG', '040-9876543', 'kontakt@fruchtexpress.de'),
(3, 2, 'GreenFoods KG.', '0221-5554321', 'service@greenfoods.de'),
(4, 1, 'MeatMasters GmbH', '069-1122334', 'support@meatmasters.de');

INSERT IGNORE INTO naehrstoffangabe (
	NaehrstoffangabeId
	, KalorienPro100g
	, ProteinePro100g
	, KohlenhydratePro100g
	, ZuckerPro100g
	, FettPro100g
	, GesaettigteFettSaeurenPro100g
	, BallaststoffePro100g
	, NatriumPro100g) VALUES
	(1, 354, 12.5, 72, 1, 1, 0.2, 3, 0.006),  -- Weizenmehl Tipo 00
	(2, 881, 0, 0.2, 0, 100, 15, 0, 0.001), -- Olivenöl
	(3, 83, 17, 1, 0.13, 1, 0.14, 7, 0.2), -- Hefe
	(4, 405, 0, 100, 100, 0, 0, 0, 0), -- Zucker
	(5, 0, 0, 0, 0, 0, 0, 0, 0.38758), -- Salz
	(6, 20, 1, 4, 2.6, 0.3, 0.1, 1.2, 0.03), -- Tomate
	(7, 53, 0.3, 11.4, 10.3, 0.4, 0, 1, 0.01), -- Apfel
	(8, 717, 0.2, 0.7, 0, 81, 15, 0, 0.02), -- Magerine
	(9, 29, 1.1, 9, 2.5, 0.3, 0, 2.8, 0.02), -- Zitrone
	(10, 381, 0.3, 91, 0, 0.1, 0, 0.9, 0.09), -- Speisestärke Maizena
	(11, 397, 0.3, 97, 97, 0.5, 0.2, 3.3, 0), -- Bourbon-Vanillezucker
	(12, 247, 4, 81, 2.2, 1.2, 0.3, 53, 0.1), -- Zimt
	(13, 67, 13, 3.6, 3.6, 0.3, 0.2, 0, 0.4), -- Magerquark
	(14, 402, 25, 1.3, 0.5, 33, 21, 0, 6.21), -- Kaese
	(15, 155, 13, 1.1, 1.1, 11, 3.3, 0, 1.24), -- Eier
	(16, 112, 1.3, 26, 22, 0.2, 0.1, 0.3, 9.07), -- Ketchup
	(17, 66, 4.4, 5, 0.9, 4, 0.2, 3.3, 11.35), -- Senf
	(18, 59, 10, 3.6, 3.2, 0.4, 0.1, 0, 0.36), -- Naturjoghurt
	(19, 332, 14, 0, 0, 30, 11, 0, 0.67), -- Hackfleisch Rind
	(20, 215, 16, 16, 8, 10, 6, 0.2, 17.05), -- Schmelzkaese
	(21, 310, 11, 59, 55, 2.9, 1, 13, 0.25), -- Pfeffer
	(22, 11, 0.3, 2.3, 1.1, 0.2, 0.1, 1.2, 12.08), -- Gewürzgurken
	(23, 14, 0.9, 3, 2, 0.1, 0, 1.2, 0.1), -- Eisbergsalat
	(24, 365.00, 13.00, 72.00, 1.00, 1.50, 0.30, 2.70, 0.01), -- Weizenmehl Type 405
	(25, 89.00, 1.10, 22.80, 12.20, 0.30, 0.10, 2.60, 0.001), -- Banane
	(26, 17.00, 1.50, 2.90, 2.90, 0.20, 0.03, 1.60, 0.002), -- Gurke
	(27, 275.00, 20.00, 0.00, 0.00, 22.00, 14.00, 0.00, 0.08), -- Butter
	(28, 61.00, 3.40, 14.60, 8.10, 0.30, 0.10, 2.20, 0.001), -- Karotte
	(29, 354.00, 13.10, 65.40, 2.60, 3.50, 0.50, 7.00, 0.005), -- Vollkornmehl
	(30, 165.00, 31.00, 0.00, 0.00, 3.60, 1.00, 0.00, 0.075), -- Hähnchenbrust
	(31, 150.00, 6.00, 23.00, 1.00, 3.00, 0.50, 6.00, 0.004), -- Kidneybohnen (gekocht)
	(32, 295.00, 11.00, 51.00, 2.30, 4.50, 0.80, 5.50, 0.006), -- Haferflocken
	(33, 42.00, 0.80, 10.00, 8.90, 0.10, 0.01, 1.10, 0.001), -- Trauben
	(34, 82.00, 2.30, 19.00, 14.00, 0.20, 0.05, 1.80, 0.002), -- Birne
	(35, 21.00, 1.80, 3.50, 3.50, 0.20, 0.04, 2.10, 0.001), -- Zucchini
	(36, 47.00, 0.90, 11.00, 9.50, 0.10, 0.02, 1.50, 0.001), -- Erdbeere
	(37, 300.00, 25.00, 2.00, 0.00, 20.00, 10.00, 0.00, 0.070), -- Käse (Gouda)
	(38, 32.00, 3.00, 4.00, 2.50, 0.10, 0.01, 3.10, 0.002), -- Paprika rot
	(39, 110.00, 7.50, 20.00, 1.00, 2.50, 0.80, 3.80, 0.004), -- Linsen (gekocht)
	(40, 410.00, 12.00, 60.00, 5.00, 12.00, 4.00, 5.00, 0.007), -- Couscous
	(41, 160.00, 6.00, 27.00, 20.00, 4.00, 1.00, 3.00, 0.004), -- Honig
	(42, 45.00, 1.00, 10.00, 8.00, 0.20, 0.01, 1.50, 0.003), -- Mango
	(43, 330.00, 25.00, 10.00, 1.00, 15.00, 5.00, 5.00, 0.008), -- Schweinebraten
	(44, 140.00, 2.00, 33.00, 30.00, 0.50, 0.10, 3.00, 0.003), -- Marmelade
	(45, 25.00, 0.90, 5.00, 3.50, 0.10, 0.01, 1.30, 0.002), -- Rote Beete
	(46, 160.00, 10.00, 20.00, 5.00, 5.00, 2.00, 4.00, 0.006), -- Schweinefilet
	(47, 45.00, 1.00, 10.00, 5.00, 0.20, 0.01, 1.50, 0.003), -- Paprika gelb
	(48, 50.00, 0.80, 12.00, 8.00, 0.20, 0.01, 2.20, 0.003), -- Aubergine
	(49, 380.00, 15.00, 60.00, 10.00, 10.00, 4.50, 4.50, 0.007), -- Reis
	(50, 120.00, 3.00, 28.00, 18.00, 0.40, 0.10, 4.00, 0.004), -- Quinoa
	(51, 200.00, 5.00, 50.00, 10.00, 1.50, 0.30, 6.00, 0.005), -- Mais
	(52, 240.00, 12.00, 32.00, 15.00, 6.00, 2.50, 8.00, 0.006), -- Kartoffeln
	(53, 80.00, 0.80, 19.00, 12.00, 0.30, 0.05, 2.50, 0.002), -- Kiwifrucht
	(54, 70.00, 2.00, 15.00, 8.00, 0.20, 0.01, 2.00, 0.003), -- Birnen
	(55, 290.00, 4.50, 60.00, 4.00, 3.50, 1.00, 7.00, 0.007), -- Lachs (gegrillt)
	(56, 350.00, 25.00, 50.00, 10.00, 15.00, 6.00, 6.00, 0.010), -- Rindfleisch
	(57, 100.00, 2.00, 20.00, 15.00, 2.00, 0.50, 3.50, 0.004), -- Karotten (gekocht)
	(58, 120.00, 4.00, 20.00, 5.00, 2.00, 0.80, 3.00, 0.005), -- Avocado
	(59, 90.00, 1.50, 20.00, 17.00, 0.30, 0.05, 2.00, 0.002), -- Himbeeren
	(60, 380.00, 8.00, 80.00, 8.00, 2.00, 1.00, 12.00, 0.007), -- Dinkelmehl
	(61, 350.00, 13.00, 40.00, 10.00, 15.00, 4.50, 9.00, 0.006), -- Lammfleisch
	(62, 200.00, 6.00, 50.00, 10.00, 3.00, 1.50, 7.00, 0.005), -- Tofu
	(63, 180.00, 5.00, 40.00, 20.00, 1.50, 0.50, 6.00, 0.004), -- Müsli
	(64, 110.00, 2.00, 20.00, 12.00, 0.50, 0.10, 4.00, 0.003), -- Orange
	(65, 180.00, 3.00, 45.00, 9.00, 2.50, 1.00, 5.00, 0.004), -- Hirse
	(66, 210.00, 2.00, 50.00, 12.00, 4.00, 1.50, 7.50, 0.004), -- Spinat (gekocht)
	(67, 60.00, 1.00, 14.00, 12.00, 0.50, 0.10, 3.00, 0.002), -- Kiwi
	(68, 230.00, 4.00, 40.00, 7.00, 8.00, 3.00, 5.00, 0.007), -- Brokkoli
	(69, 130, 29, 0, 0, 0.6, 0.2, 0, 0.54); -- Thunfisch
		
	INSERT IGNORE INTO ZUTAT(
	ZutatId
	, LieferantId
	, NaehrstoffangabeId
	, Bezeichnung
	, Bestand
	, Nettopreis
	, CO2AequivalentProKg)
	VALUES
	(1, 2, 1, 'Weizenmehl Tipo 00', 500.00, 1.20, 0.7500),
	(2, 1, 2, 'Olivenöl', 200.00, 3.50, 8.2500),
	(3, 3, 3, 'Hefe', 50.00, 0.99, 0.2500),
	(4, 4, 4, 'Zucker', 1000.00, 1.80, 0.1000),
	(5, 2, 5, 'Salz', 300.00, 0.50, 0.0500),
	(6, 3, 6, 'Tomate', 150.00, 1.30, 0.3000),
	(7, 1, 7, 'Apfel', 200.00, 1.00, 0.3500),
	(8, 4, 8, 'Margarine', 250.00, 2.20, 1.0000),
	(9, 2, 9, 'Zitrone', 100.00, 0.80, 0.2500),
	(10, 1, 10, 'Speisestärke Maizena', 300.00, 1.00, 0.1500),
	(11, 4, 11, 'Bourbon-Vanillezucker', 50.00, 3.00, 0.2000),
	(12, 3, 12, 'Zimt', 100.00, 2.50, 1.0000),
	(13, 1, 13, 'Magerquark', 150.00, 1.00, 0.1500),
	(14, 2, 14, 'Käse', 200.00, 4.00, 5.5000),
	(15, 4, 15, 'Eier', 120.00, 2.80, 0.3500),
	(16, 3, 16, 'Ketchup', 500.00, 1.70, 1.2000),
	(17, 2, 17, 'Senf', 50.00, 1.50, 0.5000),
	(18, 4, 18, 'Naturjoghurt', 150.00, 1.10, 0.2000),
	(19, 1, 19, 'Hackfleisch Rind', 300.00, 4.50, 6.0000),
	(20, 3, 20, 'Schmelzkäse', 200.00, 3.00, 0.8000),
	(21, 4, 21, 'Pfeffer', 100.00, 2.20, 0.8000),
	(22, 1, 22, 'Gewürzgurken', 200.00, 1.80, 0.4000),
	(23, 2, 23, 'Eisbergsalat', 100.00, 0.60, 0.1000),
	(24, 3, 24, 'Weizenmehl Type 405', 500.00, 1.30, 0.5500),
	(25, 4, 25, 'Banane', 150.00, 0.90, 0.3000),
	(26, 1, 26, 'Gurke', 200.00, 1.00, 0.1500),
	(27, 2, 27, 'Butter', 250.00, 3.60, 2.2000),
	(28, 3, 28, 'Karotte', 150.00, 1.20, 0.2200),
	(29, 4, 29, 'Vollkornmehl', 500.00, 1.80, 0.6500),
	(30, 2, 30, 'Hähnchenbrust', 200.00, 5.00, 1.4000),
	(31, 1, 31, 'Kidneybohnen (gekocht)', 300.00, 2.50, 0.4000),
	(32, 4, 32, 'Haferflocken', 400.00, 2.20, 0.6000),
	(33, 2, 33, 'Trauben', 150.00, 2.10, 0.2000),
	(34, 1, 34, 'Birne', 100.00, 1.80, 0.3000),
	(35, 3, 35, 'Zucchini', 200.00, 1.00, 0.1500),
	(36, 4, 36, 'Erdbeere', 150.00, 2.20, 0.2500),
	(37, 1, 37, 'Käse (Gouda)', 250.00, 5.00, 6.0000),
	(38, 3, 38, 'Paprika rot', 200.00, 2.00, 0.8000),
	(39, 4, 39, 'Linsen (gekocht)', 300.00, 1.50, 0.3000),
	(40, 2, 40, 'Couscous', 250.00, 3.00, 0.6000),
	(41, 1, 41, 'Honig', 100.00, 4.20, 1.3000),
	(42, 3, 42, 'Mango', 150.00, 2.50, 0.2000),
	(43, 4, 43, 'Schweinebraten', 500.00, 4.50, 7.0000),
	(44, 1, 44, 'Marmelade', 150.00, 2.00, 0.3000),
	(45, 2, 45, 'Rote Beete', 200.00, 1.30, 0.1500),
	(46, 3, 46, 'Schweinefilet', 300.00, 3.80, 5.0000),
	(47, 4, 47, 'Paprika gelb', 150.00, 2.00, 0.7000),
	(48, 1, 48, 'Aubergine', 100.00, 1.50, 0.3000),
	(49, 2, 49, 'Reis', 500.00, 2.00, 0.5000),
	(50, 3, 50, 'Quinoa', 250.00, 4.00, 1.2000),
	(51, 4, 51, 'Mais', 300.00, 1.50, 0.3000),
	(52, 1, 52, 'Kartoffeln', 1000.00, 1.00, 0.2500),
	(53, 2, 53, 'Kiwifrucht', 100.00, 2.00, 0.4000),
	(54, 3, 54, 'Birnen', 200.00, 1.80, 0.3500),
	(55, 4, 55, 'Lachs (gegrillt)', 200.00, 7.50, 1.2000),
	(56, 1, 56, 'Rindfleisch', 250.00, 6.00, 10.0000),
	(57, 2, 57, 'Karotten (gekocht)', 200.00, 1.20, 0.1500),
	(58, 3, 58, 'Avocado', 100.00, 4.00, 0.5000),
	(59, 4, 59, 'Himbeeren', 100.00, 2.80, 0.3500),
	(60, 1, 60, 'Dinkelmehl', 500.00, 1.80, 0.5500),
	(61, 3, 61, 'Lammfleisch', 250.00, 6.50, 10.5000),
	(62, 4, 62, 'Tofu', 200.00, 2.80, 0.3000),
	(63, 1, 63, 'Müsli', 400.00, 2.00, 0.5000),
	(64, 3, 64, 'Orange', 200.00, 1.90, 0.3000),
	(65, 2, 65, 'Hirse', 200.00, 2.00, 0.3000),
	(66, 4, 66, 'Spinat (gekocht)', 300.00, 3.00, 0.5000),
	(67, 1, 67, 'Kiwi', 150.00, 1.50, 0.2500),
	(68, 3, 68, 'Brokkoli', 250.00, 2.50, 0.3000),
	(69, 4, 69, 'Thunfisch', 150.00, 5.50, 1.2000);
	
INSERT IGNORE INTO beschraenkung(
	BeschraenkungId
	, BeschraenkungTyp
)
VALUES
(1, 'Religiöse Beschränkung / Religiöser Verbot'),
(2, 'Allergie'),
(3, 'Unverträglichkeit/Intolleranz'),
(4, 'Keine Beschränkung');

INSERT IGNORE INTO ernaehrungskategorie(
	ErnaehrungskategorieId
	, ErnaehrungkategorieTyp
)
VALUES
(1, 'Carnevor'),
(2, 'Omnivor'),
(3, 'Pescetarisch'),
(4, 'Vegetarisch'),
(5, 'Vegan'),
(6, 'Frutarisch'),
(7, 'Low Carb'),
(8, 'Kalorienarm');

INSERT IGNORE INTO ZUTAT_BESCHRAENKUNG (BeschraenkungId, ZutatId, Beschreibung) VALUES
(1, 14, 'Schweinegelatine in Käse nicht halal'),
(1, 43, 'Schweinebraten ist haram'),
(1, 46, 'Schweinefilet ist haram'),
(1, 56, 'Rindfleisch nur halal erlaubt'),
(1, 61, 'Lammfleisch nur halal erlaubt'),
(2, 2,  'Olivenöl kann Kreuzkontamination mit Nüssen enthalten'),
(2, 8,  'Margarine enthält oft Milchallergene'),
(2, 14, 'Milchallergie gegen Käse'),
(2, 15, 'Eiallergie'),
(2, 20, 'Schmelzkäse enthält Milch'),
(2, 55, 'Fischallergie gegen Lachs'),
(2, 62, 'Sojaallergie gegen Tofu'),
(2, 63, 'Müsli enthält häufig Nüsse'),
(3, 4,  'Zucker bei Fructoseintoleranz'),
(3, 7,  'Apfel enthält Fructose'),
(3, 9,  'Zitrone enthält Fructose'),
(3, 34, 'Birne bei Fructoseintoleranz'),
(3, 36, 'Erdbeere bei Fructoseintoleranz'),
(3, 42, 'Mango enthält viel Fruchtzucker'),
(3, 53, 'Kiwifrucht bei Fructoseintoleranz'),
(3, 59, 'Himbeeren enthalten Fructose'),
(3, 64, 'Orange bei Fructoseintoleranz'),
(4, 1,  'Keine spezielle Beschränkung'),
(4, 5,  'Keine spezielle Beschränkung'),
(4, 6,  'Keine spezielle Beschränkung'),
(4, 10, 'Keine spezielle Beschränkung'),
(4, 12, 'Keine spezielle Beschränkung'),
(4, 13, 'Keine spezielle Beschränkung'),
(4, 18, 'Keine spezielle Beschränkung'),
(4, 24, 'Keine spezielle Beschränkung'),
(4, 28, 'Keine spezielle Beschränkung'),
(4, 32, 'Keine spezielle Beschränkung'),
(4, 35, 'Keine spezielle Beschränkung'),
(4, 38, 'Keine spezielle Beschränkung'),
(4, 39, 'Keine spezielle Beschränkung'),
(4, 40, 'Keine spezielle Beschränkung'),
(4, 45, 'Keine spezielle Beschränkung'),
(4, 49, 'Keine spezielle Beschränkung'),
(4, 52, 'Keine spezielle Beschränkung'),
(4, 60, 'Keine spezielle Beschränkung'),
(4, 66, 'Keine spezielle Beschränkung')
,(4, 3, 'Keine spezielle Beschränkung')
,(3, 11, 'Kann Fruktose enthalten')
,(3, 16, 'Enthält Zucker')
,(2, 17, 'Kann Senfallergene enthalten')
,(1, 19, 'Nur halal erlaubt')
,(4, 21, 'Keine spezielle Beschränkung')
,(3, 22, 'Enthält Fruktose')
,(4, 23, 'Keine spezielle Beschränkung')
,(3, 25, 'Enthält Fruktose')
,(4, 26, 'Keine spezielle Beschränkung')
,(2, 27, 'Kann Milchallergene enthalten')
,(2, 29, 'Enthält Gluten')
,(1, 30, 'Nur halal erlaubt')
,(4, 31, 'Keine spezielle Beschränkung')
,(3, 33, 'Enthält Fruktose')
,(1, 37, 'Enthält tierisches Lab (nicht halal)')
,(2, 37, 'Kann Milchallergene enthalten')
,(3, 41, 'Enthält Fruktose')
,(3, 44, 'Enthält Fruchtzucker')
,(4, 47, 'Keine spezielle Beschränkung')
,(4, 48, 'Keine spezielle Beschränkung')
,(4, 50, 'Keine spezielle Beschränkung')
,(4, 51, 'Keine spezielle Beschränkung')
,(3, 54, 'Enthält Fruktose')
,(4, 57, 'Keine spezielle Beschränkung')
,(2, 58, 'Kann Latex-Kreuzallergie auslösen')
,(4, 65, 'Keine spezielle Beschränkung')
,(2, 67, 'Kann Kiwiallergene enthalten')
,(4, 68, 'Keine spezielle Beschränkung')
,(2, 69, 'Enthält Fischallergene');

INSERT IGNORE INTO KUNDE (KundeId, AdresseId, Vorname, Nachname, Geburtsdatum, TelefonNr, Email) VALUES
	(1, 4, 'Anna', 'Schneider', '1990-05-12', '01711234567', 'anna.schneider@gmail.com')
	,(2, 7, 'Ben', 'Müller', '1985-11-03', '015778889999', 'ben.mueller@web.de')
	,(3, 5, 'Clara', 'Meier', '1994-03-27', '01735551234', 'clara.meier@gmx.de')
	,(4, 3, 'David', 'Fischer', '1982-09-14', '01791234567', 'david.fischer@t-online.de')
	,(5, 6, 'Eva', 'Weber', '1998-12-01', '01511334455', 'eva.weber@outlook.de')
	,(6, 8, 'Felix', 'Wagner', '1979-02-19', '01761112222', 'felix.wagner@hotmail.de')
	,(7, 3, 'Greta', 'Becker', '1992-07-05', '01609998877', 'greta.becker@yahoo.de')
	,(8, 4, 'Hannah', 'Hoffmann', '1987-08-20', '01724445566', 'hannah.hoffmann@gmail.com')
	,(9, 5, 'Isabel', 'Richter', '1996-10-11', '01576662211', 'isabel.richter@web.de')
	,(10, 7, 'Jonas', 'Klein', '1989-04-06', '01797776655', 'jonas.klein@t-online.de')
	,(11, 6, 'Klara', 'Wolf', '1993-06-30', '01784443322', 'klara.wolf@outlook.de')
	,(12, 8, 'Leon', 'Neumann', '1984-01-23', '01599990000', 'leon.neumann@gmx.de')
	,(13, 4, 'Mia', 'Schröder', '1997-11-08', '01736665544', 'mia.schroeder@yahoo.de')
	,(14, 5, 'Noah', 'Hartmann', '1991-03-15', '01751112233', 'noah.hartmann@t-online.de')
	,(15, 7, 'Olivia', 'Krüger', '1980-07-19', '01665554411', 'olivia.krueger@gmail.com')
	,(16, 6, 'Paul', 'Schulte', '1995-05-02', '01732221111', 'paul.schulte@web.de');
