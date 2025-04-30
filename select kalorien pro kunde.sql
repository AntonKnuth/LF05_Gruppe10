SELECT 
    k.kunde_id,
    CONCAT(k.vorname, ' ', k.nachname) AS kunde_name,
    r.titel AS rezept_name,
    rb.menge AS rezept_bestellmenge,
    ROUND(SUM(
        CASE 
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0
        END 
        / 100 * na.kalorien_pro_100g
    ), 2) AS kalorien_pro_rezept,
    ROUND(SUM(
        CASE 
            WHEN rz.einheit = 'kg' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'g' THEN rz.menge
            WHEN rz.einheit = 'l' THEN (rz.menge * 1000)
            WHEN rz.einheit = 'ml' THEN rz.menge
            ELSE 0
        END 
        / 100 * na.kalorien_pro_100g * rb.menge
    ), 2) AS gesamt_kalorien_fuer_bestellung
FROM kunde k
JOIN bestellung b ON k.kunde_id = b.kunde_id
JOIN rezept_bestellung rb ON b.bestellung_id = rb.bestellung_id
JOIN rezept r ON rb.rezept_id = r.rezept_id
JOIN rezept_zutat rz ON r.rezept_id = rz.rezept_id
JOIN zutat z ON rz.zutat_id = z.zutat_id
JOIN naehrstoffangabe na ON z.naehrstoffangabe_id = na.naehrstoffangabe_id
GROUP BY k.kunde_id, k.vorname, k.nachname, r.titel, rb.menge
ORDER BY k.kunde_id, rezept_name;
