SELECT 
    l.lieferant_name,
    lieferanten_zutaten.anzahl_zutaten
FROM (
    SELECT 
        l.lieferant_id,
        COUNT(z.zutat_id) AS anzahl_zutaten
    FROM lieferant l
    LEFT JOIN zutat z ON z.lieferant_id = l.lieferant_id
    GROUP BY l.lieferant_id
) AS lieferanten_zutaten
JOIN lieferant l ON l.lieferant_id = lieferanten_zutaten.lieferant_id
WHERE lieferanten_zutaten.anzahl_zutaten = (
    SELECT 
        MAX(insgesamte_zutaten)
    FROM (
        SELECT COUNT(z.zutat_id) AS insgesamte_zutaten
        FROM lieferant l
        LEFT JOIN zutat z ON z.lieferant_id = l.lieferant_id
        GROUP BY l.lieferant_id
    ) AS maxwerte
);
