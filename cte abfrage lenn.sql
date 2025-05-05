WITH rezept_co2 AS (
    SELECT 
        r.rezept_id,
        SUM(CASE
                WHEN rz.einheit = 'g' THEN (z.co2_aequivalent_pro_kg * rz.menge / 1000)
                WHEN rz.einheit = 'kg' THEN (z.co2_aequivalent_pro_kg * rz.menge)
                WHEN rz.einheit = 'ml' THEN (z.co2_aequivalent_pro_kg * rz.menge / 1000)
                WHEN rz.einheit = 'l' THEN (z.co2_aequivalent_pro_kg * rz.menge)
                ELSE 0
            END
        ) / r.portionen AS co2_aequivalent_pro_portion
    FROM rezept r
    JOIN rezept_zutat rz ON r.rezept_id = rz.rezept_id
    JOIN zutat z ON rz.zutat_id = z.zutat_id
    GROUP BY r.rezept_id
),
kunde_rezepte_letzte12monate AS (
    SELECT 
    	  CONCAT(k.vorname, ' ', k.nachname) AS kunden_name,
        rb.rezept_id
    FROM kunde k
	 JOIN bestellung b ON k.kunde_id = b.kunde_id
    JOIN rezept_bestellung rb ON b.bestellung_id = rb.bestellung_id
    WHERE b.bestelldatum >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
)
SELECT 
	 kr.kunden_name,
    ROUND(AVG(rc.co2_aequivalent_pro_portion), 4) AS durchschnitt_co2_pro_portion_letzte12_monate
FROM kunde_rezepte_letzte12monate kr
JOIN rezept_co2 rc ON kr.rezept_id = rc.rezept_id
GROUP BY kr.kunden_name
ORDER BY durchschnitt_co2_pro_portion_letzte12_monate DESC;