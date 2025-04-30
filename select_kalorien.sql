SELECT r.RezeptId, SUM(((n.KalorienPro100g*rz.Menge)) ) AS Kalorien, r.Titel
FROM rezept r
JOIN rezept_zutat rz ON r.RezeptId = rz.RezeptId
JOIN zutat z ON z.ZutatId = rz.ZutatId
JOIN naehrstoffangabe n ON n.NaehrstoffangabeId = z.NaehrstoffangabeId
GROUP BY r.RezeptId


;

SELECT 
    k.kundeid,
    CONCAT(k.vorname, ' ', k.nachname) AS kunde_name,
    ROUND(SUM(na.kalorienpro100g * rb.menge -- umgerechnet * Kalorien * Rezept-Menge
    ), 2) AS gesamt_kalorien,
    r.Titel
FROM kunde k
JOIN bestellung b ON k.kundeid = b.kundeid
JOIN rezept_bestellung rb ON b.bestellungid = rb.bestellungid
JOIN rezept_zutat rz ON rb.rezeptid = rz.rezeptid
JOIN zutat z ON rz.zutatid = z.zutatid
JOIN rezept r ON rz.RezeptId = r.RezeptId
JOIN naehrstoffangabe na ON z.naehrstoffangabeid = na.naehrstoffangabeid
GROUP BY k.kundeid, k.vorname, k.nachname
ORDER BY gesamt_kalorien DESC;