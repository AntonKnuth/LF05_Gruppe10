SELECT z_b.ZutatId, z.Bezeichnung
FROM zutat_beschraenkung z_b
JOIN zutat z ON z.ZutatId = z_b.ZutatId;