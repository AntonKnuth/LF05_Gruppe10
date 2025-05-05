-- Auswahl aller Rezepte einer bestimmten Ernährungskategorie

SELECT DISTINCT re.titel AS Rezepte FROM rezept AS re
JOIN rezept_zutat AS rezu ON re.rezept_id = rezu.rezept_id
JOIN zutat_ernaehrungskategorie AS zuer ON rezu.zutat_id = zuer.zutat_id
JOIN ernaehrungskategorie AS er ON zuer.ernaehrungskategorie_id = er.ernaehrungskategorie_id
WHERE er.ernaehrungskategorie_typ = 'vegan';
