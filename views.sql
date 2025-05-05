CREATE OR REPLACE VIEW bestell_uebersicht AS
SELECT 
  b.bestellung_id,
  b.bestelldatum,
  k.vorname,
  k.nachname,
  k.email,
  b.gesamtpreis
FROM bestellung b
JOIN kunde k ON b.kunde_id = k.kunde_id;


CREATE OR REPLACE VIEW rezept_details AS
WITH zutat_mit_menge AS (
  SELECT 
    r.rezept_id,
    r.titel,
    z.bezeichnung AS zutat,
    rz.menge,
    rz.einheit,
    n.*,
    CASE 
      WHEN rz.einheit = 'g' THEN rz.menge
      WHEN rz.einheit = 'kg' THEN rz.menge * 1000
      WHEN rz.einheit = 'ml' THEN rz.menge
      WHEN rz.einheit = 'l' THEN rz.menge * 1000
      ELSE NULL
    END AS menge_in_gramm
  FROM rezept r
  JOIN rezept_zutat rz ON r.rezept_id = rz.rezept_id
  JOIN zutat z ON rz.zutat_id = z.zutat_id
  LEFT JOIN naehrstoffangabe n ON z.naehrstoffangabe_id = n.naehrstoffangabe_id
)
SELECT 
  rezept_id,
  titel,
  zutat,
  menge,
  einheit,
  menge_in_gramm,

  ROUND(kalorien_pro_100g * menge_in_gramm / 100, 2) AS kalorien,
  ROUND(proteine_pro_100g * menge_in_gramm / 100, 2) AS proteine,
  ROUND(kohlenhydrate_pro_100g * menge_in_gramm / 100, 2) AS kohlenhydrate,
  ROUND(zucker_pro_100g * menge_in_gramm / 100, 2) AS zucker,
  ROUND(fett_pro_100g * menge_in_gramm / 100, 2) AS fett,
  ROUND(gesaettigte_fettsaeuren_pro_100g * menge_in_gramm / 100, 2) AS gesaettigte_fettsaeuren,
  ROUND(ballaststoffe_pro_100g * menge_in_gramm / 100, 2) AS ballaststoffe,
  ROUND(natrium_pro_100g * menge_in_gramm / 100, 2) AS natrium

FROM zutat_mit_menge;








