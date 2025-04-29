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

INSERT INTO naehrstoffangabe (
	NaehrstoffangabeId
	, KalorienPro100g
	, ProteinePro100g
	, KohlenhydratePro100g
	, ZuckerPro100g
	, FettPro100g
	, GesaettigteFettSaeurenPro100g
	, BallaststoffePro100g
	, NatriumPro100g) VALUES
	(1, 354, 12.5, 72, 1, 1, 0.2, 3, 0.006),  --Weizenmehl Tipo 00
	(2, 881, 0, 0.2, 0, 100, 15, 0, 0.001), --Olivenöl
	(3, 83, 17, 1, 0.13, 1, 0.14, 7, 0.2), --Hefe
	(4, 405, 0, 100, 100, 0, 0, 0, 0), --Zucker
	(5, 0, 0, 0, 0, 0, 0, 0, 0.38758), --Salz
	(6, 20, 1, 4, 2.6, 0.3, 0.1, 1.2, 0.03), -Tomate
	(7, 53, 0.3, 11.4, 10.3, 0.4, 0, 1, 0.01), --Apfel
	(8, 717, 0.2, 0.7, 0, 81, 15, 0, 0.02), --Magerine
	(9, 29, 1.1, 9, 2.5, 0.3, 0, 2.8, 0.02), --Zitrone
	(10, 381, 0.3, 91, 0, 0.1, 0, 0.9, 0.09), --Speisestärke Maizena
	(11, 397, 0.3, 97, 97, 0.5, 0.2, 3.3, 0), --Bourbon-Vanillezucker
	(12, 247, 4, 81, 2.2, 1.2, 0.3, 53, 0.1), --Zimt
	(13, 67, 13, 3.6, 3.6, 0.3, 0.2, 0, 0,4), --Magerquark
	(14, 402, 25, 1.3, 0.5, 33, 21, 0, 6.21), --Kaese
	(15, 155, 13, 1.1, 1.1, 11, 3.3, 0, 1.24), --Eier
	(16, 112, 1.3, 26, 22, 0.2, 0.1, 0.3, 9.07), --Ketchup
	(17, 66, 4.4, 5, 0.9, 4, 0.2, 3.3, 11.35), --Senf
	(18, 59, 10, 3.6, 3.2, 0.4, 0.1, 0, 0.36), --Naturjoghurt
	(19, 332, 14, 0, 0, 30, 11, 0, 0.67), --Hackfleisch Rind
	(20, 215, 16, 16, 8, 10, 6, 0.2, 17.05), --Schmelzkaese
	(21, 310, 11, 59, 55, 2.9, 1, 13, 0.25), --Pfeffer
	(22, 11, 0.3, 2.3, 1.1, 0.2, 0.1, 1.2, 12.08), --Gewürzgurken
	(23, 14, 0.9, 3, 2, 0.1, 0, 1.2, 0.1), --Eisbergsalat