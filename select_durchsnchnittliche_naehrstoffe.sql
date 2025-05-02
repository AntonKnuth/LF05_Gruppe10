SELECT ROUND(AVG(
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
		  AS durchschnitt_natrium,
		  CONCAT(k.vorname, ' ' ,k.nachname) AS kundenname,
		  r.titel
FROM bestellung b
JOIN kunde k ON k.kunde_id = b.kunde_id
JOIN rezept_bestellung rb ON rb.Bestellung_Id = b.bestellung_id
JOIN rezept r ON r.Rezept_Id = rb.Rezept_Id
JOIN rezept_zutat rz ON rz.Rezept_Id = r.Rezept_Id
JOIN zutat z ON z.zutat_id = rz.Zutat_Id
JOIN naehrstoffangabe na ON na.Naehrstoffangabe_Id = z.naehrstoffangabe_id
GROUP BY b.kunde_id, b.bestellung_id
;