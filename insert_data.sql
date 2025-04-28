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