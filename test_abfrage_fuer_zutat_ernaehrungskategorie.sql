SELECT z.Bezeichnung, k.ErnaehrungkategorieTyp
FROM zutat z
JOIN zutat_ernaehrungskategorie z_k ON z.ZutatId = z_k.ZutatId
JOIN ernaehrungskategorie k ON z_k.ErnaehrungskategorieId = k.ErnaehrungskategorieId