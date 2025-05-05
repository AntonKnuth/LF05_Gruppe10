INSERT IGNORE INTO ort (
	plz,
	stadt
)
VALUES
('10115', 'Berlin'),
('20095', 'Hamburg'),
('80331', 'München'),
('50667', 'Köln'),
('60311', 'Frankfurt'),
('70173', 'Stuttgart'),
('40210', 'Düsseldorf'),
('41061', 'Mönchengladbach'),
('42001', 'Leipzig'),
('44319', 'Dortmund');

INSERT IGNORE INTO ADRESSE (
	strasse,
	hausnummer,
	adresszusatz,
	ort_id
)
VALUES
('Hauptstrasse', '12', '', 1),
('Musterweg', '34A', '', 2),
('Bahnhofstrasse', '7', 'EG', 3),
('Lindenstrasse', '22', '', 4),
('Gartenstrasse', '5', '', 5),
('Schillerstrasse', '3', 'OG', 6),
('Ringstrasse', '10', '', 7),
('Bergstrasse', '8', '', 8),
('Feldstrasse', '2B', 'OG', 9),
('Waldstrasse', '11', '', 10);

INSERT IGNORE INTO lieferant(
	adresse_id,
	lieferant_name,
	telefonnummer,	
	email
)
VALUES
(9, 'BioFarm GmbH', '0301234567', 'info@biofarm.de'),
(10, 'FruchtExpress AG', '0409876543', 'kontakt@fruchtexpress.de'),
(2, 'GreenFoods KG.', '02215554321', 'service@greenfoods.de'),
(1, 'BioMasters GmbH', '061122334', 'support@biomasters.de');

INSERT IGNORE INTO naehrstoffangabe (
	kalorien_pro_100g,
	proteine_pro_100g,
	kohlenhydrate_pro_100g,
	zucker_pro_100g,
	fett_pro_100g,
	gesaettigte_fettsaeuren_pro_100g,
	ballaststoffe_pro_100g,
	natrium_pro_100g
)
VALUES
	(354, 12.5, 72, 1, 1, 0.2, 3, 0.006),  -- Weizenmehl Tipo 00
	(881, 0, 0.2, 0, 100, 15, 0, 0.001), -- Olivenöl
	(83, 17, 1, 0.13, 1, 0.14, 7, 0.2), -- Hefe
	(405, 0, 100, 100, 0, 0, 0, 0), -- Zucker
	(0, 0, 0, 0, 0, 0, 0, 0.38758), -- Salz
	(20, 1, 4, 2.6, 0.3, 0.1, 1.2, 0.03), -- Tomate
	(53, 0.3, 11.4, 10.3, 0.4, 0, 1, 0.01), -- Apfel
	(717, 0.2, 0.7, 0, 81, 15, 0, 0.02), -- Magerine
	(29, 1.1, 9, 2.5, 0.3, 0, 2.8, 0.02), -- Zitrone
	(381, 0.3, 91, 0, 0.1, 0, 0.9, 0.09), -- Speisestärke Maizena
	(397, 0.3, 97, 97, 0.5, 0.2, 3.3, 0), -- Bourbon-Vanillezucker
	(247, 4, 81, 2.2, 1.2, 0.3, 53, 0.1), -- Zimt
	(67, 13, 3.6, 3.6, 0.3, 0.2, 0, 0.4), -- Magerquark
	(402, 25, 1.3, 0.5, 33, 21, 0, 6.21), -- Kaese
	(155, 13, 1.1, 1.1, 11, 3.3, 0, 1.24), -- Eier
	(112, 1.3, 26, 22, 0.2, 0.1, 0.3, 9.07), -- Ketchup
	(66, 4.4, 5, 0.9, 4, 0.2, 3.3, 11.35), -- Senf
	(59, 10, 3.6, 3.2, 0.4, 0.1, 0, 0.36), -- Naturjoghurt
	(332, 14, 0, 0, 30, 11, 0, 0.67), -- Hackfleisch Rind
	(215, 16, 16, 8, 10, 6, 0.2, 17.05), -- Schmelzkaese
	(310, 11, 59, 55, 2.9, 1, 13, 0.25), -- Pfeffer
	(11, 0.3, 2.3, 1.1, 0.2, 0.1, 1.2, 12.08), -- Gewürzgurken
	(14, 0.9, 3, 2, 0.1, 0, 1.2, 0.1), -- Eisbergsalat
	(365.00, 13.00, 72.00, 1.00, 1.50, 0.30, 2.70, 0.01), -- Weizenmehl Type 405
	(89.00, 1.10, 22.80, 12.20, 0.30, 0.10, 2.60, 0.001), -- Banane
	(17.00, 1.50, 2.90, 2.90, 0.20, 0.03, 1.60, 0.002), -- Gurke
	(275.00, 20.00, 0.00, 0.00, 22.00, 14.00, 0.00, 0.08), -- Butter
	(61.00, 3.40, 14.60, 8.10, 0.30, 0.10, 2.20, 0.001), -- Karotte
	(354.00, 13.10, 65.40, 2.60, 3.50, 0.50, 7.00, 0.005), -- Vollkornmehl
	(165.00, 31.00, 0.00, 0.00, 3.60, 1.00, 0.00, 0.075), -- Hähnchenbrust
	(150.00, 6.00, 23.00, 1.00, 3.00, 0.50, 6.00, 0.004), -- Kidneybohnen (gekocht)
	(295.00, 11.00, 51.00, 2.30, 4.50, 0.80, 5.50, 0.006), -- Haferflocken
	(42.00, 0.80, 10.00, 8.90, 0.10, 0.01, 1.10, 0.001), -- Trauben
	(82.00, 2.30, 19.00, 14.00, 0.20, 0.05, 1.80, 0.002), -- Birne
	(21.00, 1.80, 3.50, 3.50, 0.20, 0.04, 2.10, 0.001), -- Zucchini
	(47.00, 0.90, 11.00, 9.50, 0.10, 0.02, 1.50, 0.001), -- Erdbeere
	(300.00, 25.00, 2.00, 0.00, 20.00, 10.00, 0.00, 0.070), -- Käse (Gouda)
	(32.00, 3.00, 4.00, 2.50, 0.10, 0.01, 3.10, 0.002), -- Paprika rot
	(110.00, 7.50, 20.00, 1.00, 2.50, 0.80, 3.80, 0.004), -- Linsen (gekocht)
	(410.00, 12.00, 60.00, 5.00, 12.00, 4.00, 5.00, 0.007), -- Couscous
	(160.00, 6.00, 27.00, 20.00, 4.00, 1.00, 3.00, 0.004), -- Honig
	(45.00, 1.00, 10.00, 8.00, 0.20, 0.01, 1.50, 0.003), -- Mango
	(330.00, 25.00, 10.00, 1.00, 15.00, 5.00, 5.00, 0.008), -- Schweinebraten
	(140.00, 2.00, 33.00, 30.00, 0.50, 0.10, 3.00, 0.003), -- Marmelade
	(25.00, 0.90, 5.00, 3.50, 0.10, 0.01, 1.30, 0.002), -- Rote Beete
	(160.00, 10.00, 20.00, 5.00, 5.00, 2.00, 4.00, 0.006), -- Schweinefilet
	(45.00, 1.00, 10.00, 5.00, 0.20, 0.01, 1.50, 0.003), -- Paprika gelb
	(50.00, 0.80, 12.00, 8.00, 0.20, 0.01, 2.20, 0.003), -- Aubergine
	(380.00, 15.00, 60.00, 10.00, 10.00, 4.50, 4.50, 0.007), -- Reis
	(120.00, 3.00, 28.00, 18.00, 0.40, 0.10, 4.00, 0.004), -- Quinoa
	(200.00, 5.00, 50.00, 10.00, 1.50, 0.30, 6.00, 0.005), -- Mais
	(240.00, 12.00, 32.00, 15.00, 6.00, 2.50, 8.00, 0.006), -- Kartoffeln
	(70.00, 2.00, 15.00, 8.00, 0.20, 0.01, 2.00, 0.003), -- Birnen
	(290.00, 4.50, 60.00, 4.00, 3.50, 1.00, 7.00, 0.007), -- Lachs (gegrillt)
	(350.00, 25.00, 50.00, 10.00, 15.00, 6.00, 6.00, 0.010), -- Rindfleisch
	(100.00, 2.00, 20.00, 15.00, 2.00, 0.50, 3.50, 0.004), -- Karotten (gekocht)
	(120.00, 4.00, 20.00, 5.00, 2.00, 0.80, 3.00, 0.005), -- Avocado
	(90.00, 1.50, 20.00, 17.00, 0.30, 0.05, 2.00, 0.002), -- Himbeeren
	(380.00, 8.00, 80.00, 8.00, 2.00, 1.00, 12.00, 0.007), -- Dinkelmehl
	(350.00, 13.00, 40.00, 10.00, 15.00, 4.50, 9.00, 0.006), -- Lammfleisch
	(200.00, 6.00, 50.00, 10.00, 3.00, 1.50, 7.00, 0.005), -- Tofu
	(180.00, 5.00, 40.00, 20.00, 1.50, 0.50, 6.00, 0.004), -- Müsli
	(110.00, 2.00, 20.00, 12.00, 0.50, 0.10, 4.00, 0.003), -- Orange
	(180.00, 3.00, 45.00, 9.00, 2.50, 1.00, 5.00, 0.004), -- Hirse
	(210.00, 2.00, 50.00, 12.00, 4.00, 1.50, 7.50, 0.004), -- Spinat (gekocht)
	(60.00, 1.00, 14.00, 12.00, 0.50, 0.10, 3.00, 0.002), -- Kiwi
	(230.00, 4.00, 40.00, 7.00, 8.00, 3.00, 5.00, 0.007), -- Brokkoli
	(130, 29, 0, 0, 0.6, 0.2, 0, 0.54); -- Thunfisch
		
	INSERT IGNORE INTO ZUTAT(
	lieferant_id,
	naehrstoffangabe_id,
	bezeichnung,
	bestand,
	nettopreis,
	co2_aequivalent_pro_kg
)
VALUES
	(2, 1, 'Weizenmehl Tipo 00', 500.00, 1.20, 0.7500),
	(1, 2, 'Olivenöl', 200.00, 3.50, 8.2500),
	(3, 3, 'Hefe', 50.00, 0.99, 0.2500),
	(4, 4, 'Zucker', 1000.00, 1.80, 0.1000),
	(2, 5, 'Salz', 300.00, 0.50, 0.0500),
	(3, 6, 'Tomate', 150.00, 1.30, 0.3000),
	(1, 7, 'Apfel', 200.00, 1.00, 0.3500),
	(4, 8, 'Margarine', 250.00, 2.20, 1.0000),
	(2, 9, 'Zitrone', 100.00, 0.80, 0.2500),
	(1, 10, 'Speisestärke Maizena', 300.00, 1.00, 0.1500),
	(4, 11, 'Bourbon-Vanillezucker', 50.00, 3.00, 0.2000),
	(3, 12, 'Zimt', 100.00, 2.50, 1.0000),
	(1, 13, 'Magerquark', 150.00, 1.00, 0.1500),
	(2, 14, 'Käse', 200.00, 4.00, 5.5000),
	(4, 15, 'Eier', 120.00, 2.80, 0.3500),
	(3, 16, 'Ketchup', 500.00, 1.70, 1.2000),
	(2, 17, 'Senf', 50.00, 1.50, 0.5000),
	(4, 18, 'Naturjoghurt', 150.00, 1.10, 0.2000),
	(1, 19, 'Hackfleisch Rind', 300.00, 4.50, 6.0000),
	(3, 20, 'Schmelzkäse', 200.00, 3.00, 0.8000),
	(4, 21, 'Pfeffer', 100.00, 2.20, 0.8000),
	(1, 22, 'Gewürzgurken', 200.00, 1.80, 0.4000),
	(2, 23, 'Eisbergsalat', 100.00, 0.60, 0.1000),
	(3, 24, 'Weizenmehl Type 405', 500.00, 1.30, 0.5500),
	(4, 25, 'Banane', 150.00, 0.90, 0.3000),
	(1, 26, 'Gurke', 200.00, 1.00, 0.1500),
	(2, 27, 'Butter', 250.00, 3.60, 2.2000),
	(3, 28, 'Karotte', 150.00, 1.20, 0.2200),
	(4, 29, 'Vollkornmehl', 500.00, 1.80, 0.6500),
	(2, 30, 'Hähnchenbrust', 200.00, 5.00, 1.4000),
	(1, 31, 'Kidneybohnen (gekocht)', 300.00, 2.50, 0.4000),
	(4, 32, 'Haferflocken', 400.00, 2.20, 0.6000),
	(2, 33, 'Trauben', 150.00, 2.10, 0.2000),
	(1, 34, 'Birne', 100.00, 1.80, 0.3000),
	(3, 35, 'Zucchini', 200.00, 1.00, 0.1500),
	(4, 36, 'Erdbeere', 150.00, 2.20, 0.2500),
	(1, 37, 'Käse (Gouda)', 250.00, 5.00, 6.0000),
	(3, 38, 'Paprika rot', 200.00, 2.00, 0.8000),
	(4, 39, 'Linsen (gekocht)', 300.00, 1.50, 0.3000),
	(2, 40, 'Couscous', 250.00, 3.00, 0.6000),
	(1, 41, 'Honig', 100.00, 4.20, 1.3000),
	(3, 42, 'Mango', 150.00, 2.50, 0.2000),
	(4, 43, 'Schweinebraten', 500.00, 4.50, 7.0000),
	(1, 44, 'Marmelade', 150.00, 2.00, 0.3000),
	(2, 45, 'Rote Beete', 200.00, 1.30, 0.1500),
	(3, 46, 'Schweinefilet', 300.00, 3.80, 5.0000),
	(4, 47, 'Paprika gelb', 150.00, 2.00, 0.7000),
	(1, 48, 'Aubergine', 100.00, 1.50, 0.3000),
	(2, 49, 'Reis', 500.00, 2.00, 0.5000),
	(3, 50, 'Quinoa', 250.00, 4.00, 1.2000),
	(4, 51, 'Mais', 300.00, 1.50, 0.3000),
	(1, 52, 'Kartoffeln', 1000.00, 1.00, 0.2500),
	(3, 53, 'Birnen', 200.00, 1.80, 0.3500),
	(4, 54, 'Lachs (gegrillt)', 200.00, 7.50, 1.2000),
	(1, 55, 'Rindfleisch', 250.00, 6.00, 10.0000),
	(2, 56, 'Karotten (gekocht)', 200.00, 1.20, 0.1500),
	(3, 57, 'Avocado', 100.00, 4.00, 0.5000),
	(4, 58, 'Himbeeren', 100.00, 2.80, 0.3500),
	(1, 59, 'Dinkelmehl', 500.00, 1.80, 0.5500),
	(3, 60, 'Lammfleisch', 250.00, 6.50, 10.5000),
	(4, 61, 'Tofu', 200.00, 2.80, 0.3000),
	(1, 62, 'Müsli', 400.00, 2.00, 0.5000),
	(3, 63, 'Orange', 200.00, 1.90, 0.3000),
	(2, 64, 'Hirse', 200.00, 2.00, 0.3000),
	(4, 65, 'Spinat (gekocht)', 300.00, 3.00, 0.5000),
	(1, 66, 'Kiwi', 150.00, 1.50, 0.2500),
	(3, 67, 'Brokkoli', 250.00, 2.50, 0.3000),
	(4, 68, 'Thunfisch', 150.00, 5.50, 1.2000);
	
INSERT IGNORE INTO beschraenkung(
	beschraenkung_typ
)
VALUES
	('Glutenunverträglichkeit'),
    ('Laktoseintoleranz'),
    ('Milcheiweißallergie'),
    ('Eiallergie'),
    ('Nussallergie'),
    ('Sojaallergie'),
    ('Fruktoseintoleranz'),
    ('Histaminintoleranz'),
    ('Zöliakie'),
    ('FürJuden nicht erlaubt'),
    ('Für Muslime nicht erlaubt'),
    ('Alkoholintoleranz');

INSERT IGNORE INTO ernaehrungskategorie(
	ernaehrungskategorie_typ
)
VALUES
	('Carnevor')
	,('Omnivor')
	,('Pescetarisch')
	,('Vegetarisch')
	,('Vegan')
	,('Frutarisch')
	,('Low Carb')
	,('Kalorienarm');

INSERT IGNORE INTO zutat_beschraenkung (
	beschraenkung_id,
	zutat_id
) VALUES
	(1, 1),
	(9, 1),
	(2, 4),
	(3, 4),
	(2, 13),
	(3, 13),
	(4, 15),
	(11, 19),
	(10, 19),
	(12, 43),
	(13, 43);

INSERT IGNORE INTO kunde (
	adresse_id,
	vorname,
	nachname,
	geburtsdatum,
	telefonnummer,
	email
) VALUES
	(4, 'Anna', 'Schneider', '1990-05-12', '01711234567', 'anna.schneider@gmail.com')
	,(7, 'Ben', 'Müller', '1985-11-03', '015778889999', 'ben.mueller@web.de')
	,(5, 'Clara', 'Meier', '1994-03-27', '01735551234', 'clara.meier@gmx.de')
	,(3, 'David', 'Fischer', '1982-09-14', '01791234567', 'david.fischer@t-online.de')
	,(6, 'Eva', 'Weber', '1998-12-01', '01511334455', 'eva.weber@outlook.de')
	,(8, 'Felix', 'Wagner', '1979-02-19', '01761112222', 'felix.wagner@hotmail.de')
	,(3, 'Greta', 'Becker', '1992-07-05', '01609998877', 'greta.becker@yahoo.de')
	,(4, 'Hannah', 'Hoffmann', '1987-08-20', '01724445566', 'hannah.hoffmann@gmail.com')
	,(5, 'Isabel', 'Richter', '1996-10-11', '01576662211', 'isabel.richter@web.de')
	,(7, 'Jonas', 'Klein', '1989-04-06', '01797776655', 'jonas.klein@t-online.de')
	,(6, 'Klara', 'Wolf', '1993-06-30', '01784443322', 'klara.wolf@outlook.de')
	,(8, 'Leon', 'Neumann', '1984-01-23', '01599990000', 'leon.neumann@gmx.de')
	,(4, 'Mia', 'Schröder', '1997-11-08', '01736665544', 'mia.schroeder@yahoo.de')
	,(5, 'Noah', 'Hartmann', '1991-03-15', '01751112233', 'noah.hartmann@t-online.de')
	,(7, 'Olivia', 'Krüger', '1980-07-19', '01665554411', 'olivia.krueger@gmail.com')
	,(6, 'Paul', 'Schulte', '1995-05-02', '01732221111', 'paul.schulte@web.de')
	,(6, 'Rosa', 'Schulte', '1996-04-30', '01732221341', 'rosa.schulte@web.de');
	
INSERT IGNORE INTO bestellung (
	kunde_id,
	gesamtpreis,
	bestelldatum
) VALUES
	(1, 24.99, '2024-01-15')
	,(2, 57.20, '2024-01-20')
	,(3, 35.75, '2024-02-01')
	,(1, 80.10, '2024-02-10')
	,(5, 45.60, '2024-03-05')
	,(8, 99.90, '2024-03-20')
	,(1, 18.75, '2024-04-03')
	,(8, 110.50, '2024-04-15')
	,(2, 64.30, '2024-05-01')
	,(2, 42.80, '2024-05-10')
	,(11, 78.45, '2024-05-25')
	,(11, 59.99, '2024-06-05')
	,(13, 33.25, '2024-06-12')
	,(14, 70.10, '2024-06-30')
	,(15, 84.60, '2024-07-07')
	,(1, 29.50, '2024-07-15')
	,(1, 55.00, '2024-08-01')
	,(5, 66.40, '2024-08-18')
	,(3, 120.00, '2024-09-02')
	,(4, 90.70, '2024-09-14')
	,(5, 49.99, '2024-09-30')
	,(6, 30.30, '2024-10-10')
	,(7, 58.60, '2024-10-25')
	,(8, 75.00, '2024-11-03')
	,(9, 28.45, '2024-11-11')
	,(10, 87.20, '2024-11-28')
	,(11, 62.10, '2024-12-02')
	,(12, 54.70, '2024-12-12')
	,(13, 36.99, '2024-12-20')
	,(14, 48.30, '2024-12-23')
	,(15, 79.40, '2024-12-28')
	,(16, 67.80, '2024-12-31');
	
INSERT IGNORE INTO rezept (
	titel,
	beschreibung,
	zubereitung,
	zubereitungszeit_min,
	portionen
)
VALUES
	('Gefüllte Paprika mit Hackfleisch', 'Low-Carb-Abendessen mit viel Protein und Gemüse', 'Paprika halbieren, mit gewürztem Hackfleisch füllen und im Ofen backen.', 45, 2)
	,('Zucchini-Spaghetti mit Avocado-Pesto', 'Gesunde Zoodles mit cremigem Pesto', 'Zucchini spiralieren, Avocado mit Kräutern pürieren und alles vermengen.', 25, 2)
	,('Gegrillter Lachs auf Spinatbett', 'Low-Carb-Fischgericht mit frischem Gemüse', 'Lachsfilet würzen, grillen und auf gedünstetem Spinat servieren.', 30, 2)
	,('Eier-Käse-Omelett mit Brokkoli', 'Eiweißreiches Frühstück oder Abendessen', 'Eier verquirlen, Brokkoli dünsten, alles mit Käse in der Pfanne braten.', 20, 1)
	,('Kichererbsen-Curry mit Reis', 'Würziges veganes Gericht mit Kokosmilch', 'Kichererbsen anbraten, Curry und Kokosmilch zugeben, mit Reis servieren.', 40, 3)
	,('Ofengemüse mit Quinoa', 'Buntes Gemüse vom Blech mit Quinoa', 'Gemüse würfeln, im Ofen rösten, mit Quinoa servieren.', 35, 2)
	,('Vegane Linsensuppe', 'Herzhafte Suppe für kalte Tage', 'Linsen, Karotten und Gewürze köcheln, pürieren und abschmecken.', 50, 4)
	,('Tofu-Gemüse-Pfanne', 'Schnelles asiatisch inspiriertes Pfannengericht', 'Tofu anbraten, Gemüse und Sojasauce dazu, mit Reis servieren.', 30, 2)
	,('Spaghetti mit Tomaten und Aubergine', 'Veganes Pasta-Rezept', 'Auberginen und Tomaten anbraten, mit Nudeln vermischen.', 25, 2)
	,('Gemüse-Lasagne', 'Lasagne mit Zucchini, Tomaten und Käse', 'Gemüse schichten, mit Tomatensauce und Käse überbacken.', 60, 4)
	,('Spinat-Feta-Strudel', 'Herzhafter Blätterteig mit Spinatfüllung', 'Strudelteig mit Spinat und Feta füllen, backen und heiß servieren.', 50, 2)
	,('Rührei mit Tomaten und Vollkornbrot', 'Schnelles vegetarisches Frühstück', 'Eier aufschlagen, mit Tomaten braten, mit Brot servieren.', 15, 1)
	,('Thunfischsalat mit Avocado', 'Frischer Salat mit Fisch und Gemüse', 'Thunfisch, Avocado, Gurke und Salat mischen, mit Zitrone abschmecken.', 15, 2)
	,('Lachs-Couscous-Bowl', 'Gesunde Bowl mit Fisch und Gemüse', 'Couscous garen, mit Lachs und Gemüse in Schale servieren.', 30, 2)
	,('Burger mit Rindfleisch und Käse', 'Klassischer Burger mit allem Drum und Dran', 'Patty braten, mit Käse, Salat und Brötchen servieren.', 25, 1)
	,('Schnitzel mit Kartoffelsalat', 'Hausmannskost mit Fleisch', 'Schnitzel panieren und braten, mit Salat servieren.', 50, 2)
	,('Nudelauflauf mit Schweinebraten', 'Überbackene Nudeln mit Fleisch und Gemüse', 'Nudeln vorkochen, mit Schweinebraten und Käse überbacken.', 45, 3)
	,('Frühstücks-Rührei mit Schweinebraten', 'Deftiges Frühstück mit Ei und Fleisch', 'Schweinebraten in kleine Scheiben schneiden und anbraten, Eier zugeben und stocken lassen.', 15, 1)
	,('Hähnchenbrust mit Reis und Brokkoli', 'Proteinreiche Hauptmahlzeit', 'Hähnchen würzen und braten, mit Gemüse und Reis servieren.', 40, 2)
	,('Pizza mit Hackfleisch und Mozzarella', 'Klassische Pizza mit Fleischbelag', 'Teig ausrollen, belegen und im Ofen backen.', 55, 2);
	
	INSERT IGNORE INTO rezept_ernaehrungskategorie (
	ernaehrungskategorie_id,
	rezept_id
)
VALUES
	(7, 1)
	,(7, 2)
	,(7, 3)
	,(7 ,4)
	,(5, 5)
	,(5, 6)
	,(5, 7)
	,(5, 8)
	,(5, 9)
	,(5, 10)
	,(4, 5)
	,(4, 6)
	,(4, 7)
	,(4, 8)
	,(4, 9)
	,(4, 10)
	,(4, 11)
	,(4, 12)
	,(3, 13)
	,(3, 15)
	(2, 1)
	,(2, 2)
	,(2, 3)
	,(2 ,4)
	,(2, 5)
	,(2, 6)
	,(2, 7)
	,(2, 8)
	,(2, 9)
	,(2, 10)
	,(2, 5)
	,(2, 6)
	,(2, 7)
	,(2, 8)
	,(2, 9)
	,(2, 10)
	,(2, 11)
	,(2, 12)
	,(2, 13)
	,(2, 15)
	,(2, 16)
	,(2, 17)
	,(2, 18)
	,(2, 19)
	,(2, 20)
;
	
INSERT IGNORE INTO rezept_zutat (
	rezept_id,
	zutat_id,
	menge,
	einheit
)
VALUES
    (1, 19, 300.00, 'g'),  -- Hackfleisch Rind (300g für Rezept 1)
    (1, 38, 200.00, 'g'),  -- Paprika rot (200g für Rezept 1)
    (1, 6, 100.00, 'g'),   -- Zwiebel (100g für Rezept 1)
    (1, 2, 20.00, 'ml'),    -- Olivenöl (20ml für Rezept 1)
    (1, 21, 5.00, 'g'),    -- Pfeffer (5g für Rezept 1)
    (1, 5, 5.00, 'g'),     -- Salz (5g für Rezept 1)
    (1, 6, 150.00, 'g'),   -- Tomaten (150g für Rezept 1)
    (1, 6, 10.00, 'g'),
    (2, 35, 200.00, 'g'),  -- Zucchini (200g für Rezept 2)
    (2, 58, 100.00, 'g'),  -- Avocado (100g für Rezept 2)
    (2, 2, 20.00, 'ml'),    -- Olivenöl (20ml für Rezept 2)
    (2, 6, 10.00, 'g'),    -- Knoblauch (10g für Rezept 2)
    (2, 21, 5.00, 'g'),    -- Pfeffer (5g für Rezept 2)
    (2, 5, 5.00, 'g'),     -- Salz (5g für Rezept 2)
    (2, 9, 10.00, 'g'),
    (3, 55, 200.00, 'g'),  -- Lachs
	 (3, 66, 300.00, 'g'),
	 (3, 21, 5.00, 'g'),    -- Pfeffer
    (3, 5, 5.00, 'g'), 	-- Salz
    (4, 15, 0.24, 'kg'),  -- Eier (ca. 3 Stück, 0.24 kg)
    (4, 14, 100, 'g'),  -- Käse (ca. 100 g)
    (4, 68, 15, 'g'),
    (4, 21, 5.00, 'g'),    -- Pfeffer
    (4, 5, 5.00, 'g'),
    (5, 31, 300.00, 'g'),  -- Kichererbsen (gekocht) mit 300g
    (5, 19, 300.00, 'g'),  -- Hackfleisch Rind mit 300g (optional, falls in Rezept verwendet)
    (5, 49, 500.00, 'g'),  -- Reis mit 500g
    (5, 39, 300.00, 'g'),
    (5, 21, 5.00, 'g'),    -- Pfeffer
    (5, 5, 5.00, 'g'),		-- Salz
    (6, 50, 1.00, 'g'), -- Quinoa
  	(6, 38, 1.00, 'g'), -- Paprika (rot)
  	(6, 35, 1.00, 'g'), -- Zucchini
  	(6, 48, 1.00, 'g'),
  	(6, 21, 5.00, 'g'),    -- Pfeffer
   (6, 5, 5.00, 'g'),		-- Salz
   (7, 39, 200.00, 'g'),  -- Linsen (gekocht), 200g
    (7, 28, 100.00, 'g'),  -- Karotten (gekocht), 100g
    (7, 38, 50.00, 'g'),
    (7, 21, 5.00, 'g'),    -- Pfeffer
   (7, 5, 5.00, 'g'),		-- Salz
   (8, 62, 100, 'g'), -- Tofu (ZutatId = 62)
  (8, 35, 150, 'g'), -- Zucchini (ZutatId = 35)
  (8, 38, 100, 'g'),
  (8, 21, 5.00, 'g'),    -- Pfeffer
   (8, 5, 5.00, 'g'),		-- Salz
   (9, 48, 200.00, 'g'), -- Aubergine
    (9, 6, 150.00, 'g'),  -- Tomate
    (9, 1, 250.00, 'g'), 
    (9, 21, 5.00, 'g'),    -- Pfeffer
   (9, 5, 5.00, 'g'),		-- Salz
    (10, 35, 200, 'g'),  -- Zucchini (ZutatId 35), Menge 2.00
    (10, 6, 300, 'g'),   -- Tomate (ZutatId 6), Menge 3.00
    (10, 14, 150, 'g'),  -- Käse (ZutatId 14), Menge 1.50
    (10, 24, 200, 'g'),  -- Weizenmehl Type 405 (ZutatId 24), Menge 2.00
    (10, 37, 100, 'g'),  -- Käse (Gouda) (ZutatId 37), Menge 1.00
    (10, 47, 150, 'g'),
    (10, 21, 5.00, 'g'),    -- Pfeffer
   (10, 5, 5.00, 'g'),		-- Salz
   (11, 66, 300.00, 'g'),  -- Spinat (gekocht), ZutatId 66, Menge 300g
    (11, 37, 250.00, 'g'),
    (11, 21, 5.00, 'g'),    -- Pfeffer
   (11, 5, 5.00, 'g'),		-- Salz
   (12, 15, 200, 'g'),  -- Eier
    (12, 6, 100, 'g'),   -- Tomate
    (12, 52, 100, 'g'),
    (12, 21, 5.00, 'g'),    -- Pfeffer
   (12, 5, 5.00, 'g'),		-- Salz
    (13, 69, 100, 'g'), -- Thunfisch
    (13, 58, 100, 'g'), -- Avocado
    (13, 26, 50, 'g'), -- Gurke
    (13, 23, 100, 'g'), -- Eisbergsalat
    (13, 9, 20, 'g'),
    (13, 21, 5.00, 'g'),    -- Pfeffer
   (13, 5, 5.00, 'g'),		-- Salz
   (14, 55, 200.00, 'g'),  -- Lachs (gegrillt) 200g
    (14, 40, 100.00, 'g'),  -- Couscous 100g
    (14, 38, 100.00, 'g'),  -- Paprika rot 100g
    (14, 35, 100.00, 'g'),  -- Zucchini 100g
    (14, 2, 20.00, 'ml'),    -- Olivenöl 20ml
    (14, 21, 2.00, 'g'),    -- Pfeffer 2g
    (14, 5, 3.00, 'g'),
    (15, 56, 250.00, 'g'), -- Rindfleisch
    (15, 37, 100.00, 'g'), -- Käse (Gouda)
    (15, 5, 5.00, 'g'),    -- Salz
    (15, 21, 2.00, 'g'),   -- Pfeffer
    (15, 1, 200.00, 'g'),
    (16, 43, 200, 'g'),   -- Schweinebraten
    (16, 52, 500.00, 'g'),  -- Kartoffeln
    (16, 5, 10.00, 'g'),    -- Salz
    (16, 21, 5.00, 'g'),    -- Pfeffer
    (16, 27, 50.00, 'g'),
    (17, 43, 200.00, 'g'),  -- Schweinebraten, Menge: 200g
	(17, 24, 300.00, 'g'),  -- Weizenmehl (Nudeln), Menge: 300g
	(17, 37, 150.00, 'g'),
	(17, 5, 10.00, 'g'),    -- Salz
    (17, 21, 5.00, 'g'),    -- Pfeffer
    (18, 15, 240, 'g'),  -- Eier
    (18, 43, 200, 'g'),  -- Schweinebraten
    (18, 5, 10, 'g'),   -- Salz
    (18, 21, 5, 'g'),
    (19, 30, 200.00, 'g'),  -- Hähnchenbrust 200g
    (19, 49, 150.00, 'g'),  -- Reis 150g
    (19, 68, 100.00, 'g'), 
    (19, 5, 10, 'g'),   -- Salz
    (19, 21, 05, 'g'),
    (20, 1, 300.00, 'g'),  -- Weizenmehl (ZutatId 1, Menge 300g)
    (20, 2, 50.00, 'g'),   -- Olivenöl (ZutatId 2, Menge 50ml)
    (20, 5, 5.00, 'g'),    -- Salz (ZutatId 5, Menge 5g)
    (20, 6, 150.00, 'g'),  -- Tomaten (ZutatId 6, Menge 150g)
    (20, 14, 200.00, 'g'), -- Käse (ZutatId 14, Menge 200g, hier Mozzarella)
    (20, 19, 150.00, 'g'),
    (20, 5, 10, 'g'),   -- Salz
    (20, 21, 05, 'g');
    
INSERT IGNORE INTO REZEPT_BESTELLUNG (
	bestellung_id,
	rezept_id,
	menge
)
	VALUES
    (1, 1, 2),  -- Bestellung 1 enthält 2x "Gefüllte Paprika mit Hackfleisch"
    (1, 5, 1),  -- Bestellung 1 enthält 1x "Kichererbsen-Curry mit Reis"
    (2, 4, 2),  -- Bestellung 2 enthält 2x "Eier-Käse-Omelett mit Brokkoli"
    (2, 7, 3),  -- Bestellung 2 enthält 3x "Vegane Linsensuppe"
    (3, 8, 2),  -- Bestellung 3 enthält 2x "Tofu-Gemüse-Pfanne"
    (3, 9, 1),  -- Bestellung 3 enthält 1x "Spaghetti mit Tomaten und Aubergine"
    (4, 10, 1), -- Bestellung 4 enthält 1x "Gemüse-Lasagne"
    (5, 6, 2),  -- Bestellung 5 enthält 2x "Ofengemüse mit Quinoa"
    (6, 2, 1),  -- Bestellung 6 enthält 1x "Zucchini-Spaghetti mit Avocado-Pesto"
    (6, 14, 1), -- Bestellung 6 enthält 1x "Lachs-Couscous-Bowl"
    (7, 13, 2), -- Bestellung 7 enthält 2x "Thunfischsalat mit Avocado"
    (8, 3, 1),  -- Bestellung 8 enthält 1x "Gegrillter Lachs auf Spinatbett"
    (8, 16, 2), -- Bestellung 8 enthält 2x "Schweinebraten mit Kartoffelsalat"
    (9, 11, 1), -- Bestellung 9 enthält 1x "Spinat-Feta-Strudel"
    (9, 12, 2), -- Bestellung 9 enthält 2x "Rührei mit Tomaten und Vollkornbrot"
    (10, 15, 3), -- Bestellung 10 enthält 3x "Burger mit Rindfleisch und Käse"
    (11, 19, 1), -- Bestellung 11 enthält 1x "Hähnchenbrust mit Reis und Brokkoli"
    (12, 18, 1), -- Bestellung 12 enthält 1x "Frühstücks-Rührei mit Schweinebraten"
    (13, 5, 1),  -- Bestellung 13 enthält 1x "Kichererbsen-Curry mit Reis"
    (14, 17, 2), -- Bestellung 14 enthält 2x "Nudelauflauf mit Schweinebraten"
    (15, 20, 1), -- Bestellung 15 enthält 1x "Pizza mit Hackfleisch und Mozzarella"
    (16, 6, 2),  -- Bestellung 16 enthält 2x "Ofengemüse mit Quinoa"
    (17, 1, 2),  -- Bestellung 17 enthält 2x "Gefüllte Paprika mit Hackfleisch"
    (18, 10, 1), -- Bestellung 18 enthält 1x "Gemüse-Lasagne"
    (19, 9, 2),  -- Bestellung 19 enthält 2x "Spaghetti mit Tomaten und Aubergine"
    (20, 2, 1),  -- Bestellung 20 enthält 1x "Zucchini-Spaghetti mit Avocado-Pesto"
    (21, 14, 1), -- Bestellung 21 enthält 1x "Lachs-Couscous-Bowl"
    (22, 3, 1),  -- Bestellung 22 enthält 1x "Gegrillter Lachs auf Spinatbett"
    (23, 4, 1),  -- Bestellung 23 enthält 1x "Eier-Käse-Omelett mit Brokkoli"
    (24, 5, 1),  -- Bestellung 24 enthält 1x "Kichererbsen-Curry mit Reis"
    (25, 19, 2), -- Bestellung 25 enthält 2x "Hähnchenbrust mit Reis und Brokkoli"
    (26, 16, 1), -- Bestellung 26 enthält 1x "Schweinebraten mit Kartoffelsalat"
    (27, 13, 1), -- Bestellung 27 enthält 1x "Thunfischsalat mit Avocado"
    (28, 7, 2),  -- Bestellung 28 enthält 2x "Vegane Linsensuppe"
    (29, 8, 2),  -- Bestellung 29 enthält 2x "Tofu-Gemüse-Pfanne"
    (30, 12, 3), -- Bestellung 30 enthält 3x "Rührei mit Tomaten und Vollkornbrot"
    (31, 6, 2),  -- Bestellung 31 enthält 2x "Ofengemüse mit Quinoa"
    (32, 14, 1); -- Bestellung 32 enthält 1x "Lachs-Couscous-Bowl"
