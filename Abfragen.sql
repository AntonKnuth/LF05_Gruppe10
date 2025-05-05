-- Query 1:


-- Query 2:


-- Query 3:


-- Query 4: Durchschnittliche Nährstoffe (Anton)
SELECT
		  CONCAT(k.vorname, ' ' ,k.nachname) AS kundenname,
		  r.titel,
		ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.kalorien_pro_100g * rb.menge), 2)
		  AS durchschnitt_kalorien, 
		  ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.proteine_pro_100g * rb.menge), 2)
		  AS durchschnitt_proteine, 
		  ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END
        / 100 * na.kohlenhydrate_pro_100g * rb.menge), 2)
		  AS durchschnitt_kohlenhydrate,
		  ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.zucker_pro_100g * rb.menge), 2)
		  AS durchschnitt_zucker,
		  ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.fett_pro_100g * rb.menge), 2)
		  AS durchschnitt_fett,
		  ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.gesaettigte_fettsaeuren_pro_100g * rb.menge), 2)
		  AS durchschnitt_gesaettigte_fettSaeure,
		  ROUND(AVG(
        CASE
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.ballaststoffe_pro_100g * rb.menge), 2)
		  AS durchschnitt_ballaststoffe,
		  ROUND(AVG(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * na.natrium_pro_100g * rb.menge), 2)
		  AS durchschnitt_natrium
FROM bestellung b
JOIN kunde k ON k.kunde_id = b.kunde_id
JOIN rezept_bestellung rb ON rb.Bestellung_Id = b.bestellung_id
JOIN rezept r ON r.Rezept_Id = rb.Rezept_Id
JOIN rezept_zutat rz ON rz.Rezept_Id = r.Rezept_Id
JOIN zutat z ON z.zutat_id = rz.Zutat_Id
JOIN naehrstoffangabe na ON na.Naehrstoffangabe_Id = z.naehrstoffangabe_id
GROUP BY b.kunde_id, b.bestellung_id
;

-- Query 5: Zutaten ohne Rezeptzuordnung (Cedric)
SELECT z.zutat_id, z.bezeichnung
From zutat z
Where NOT EXISTS (
	SELECT 1 
	FROM rezept_zutat rz 
	WHERE rz.zutat_id = z.zutat_id
);

-- Query 6: Rezepte mit einem Kalorielimit (Cedric)
SELECT DISTINCT r.rezept_id, r.titel, ROUND(sum(
        CASE 
            -- Umrechnung aller Einheiten in Gramm/Milliliter
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0 -- 'Stk' oder nicht interpretierbare Einheit wird ignoriert
        END 
        / 100 * n.kalorien_pro_100g * rb.menge), 2)
		  AS gesamt_kalorien
FROM bestellung b
JOIN kunde k ON k.kunde_id = b.kunde_id
JOIN rezept_bestellung rb ON rb.Bestellung_Id = b.bestellung_id
JOIN rezept r ON r.Rezept_Id = rb.Rezept_Id
JOIN rezept_zutat rz ON rz.Rezept_Id = r.Rezept_Id
JOIN zutat z ON z.zutat_id = rz.Zutat_Id
JOIN naehrstoffangabe n ON z.naehrstoffangabe_id = n.naehrstoffangabe_id
GROUP BY r.rezept_id
HAVING gesamt_kalorien < 1000
;

-- Query 7: Rezepte mit <5 Zutaten (Cedric)

SELECT r.rezept_id, r.titel, COUNT(rz.zutat_id) AS anzahl_zutaten
FROM rezept r
JOIN rezept_zutat rz ON r.rezept_id = rz.rezept_id
GROUP BY r.rezept_id
HAVING COUNT(rz.zutat_id) < 5;

-- Query 8: Rezepte mit <5 Zutaten && bestimmte Ernährungskategorie (Cedric)
SELECT r.rezept_id, r.titel, COUNT(rz.zutat_id) AS anzahl_zutaten, er.ernaehrungskategorie_typ
FROM rezept r
JOIN rezept_zutat rz ON r.rezept_id = rz.rezept_id
JOIN zutat z ON rz.zutat_id = z.zutat_id
JOIN rezept_ernaehrungskategorie rer ON r.rezept_id = rer.rezept_id
JOIN ernaehrungskategorie er ON rer.ernaehrungskategorie_id = er.ernaehrungskategorie_id
GROUP BY r.rezept_id
HAVING COUNT(rz.zutat_id) < 15 AND er.ernaehrungskategorie_typ ='vegetarisch';
