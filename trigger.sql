DELIMITER $$

CREATE TRIGGER IF NOT EXISTS trg_before_lieferant_delete
BEFORE DELETE ON lieferant
FOR EACH ROW
BEGIN
	DELETE FROM adresse WHERE adresse.adresse_id = OLD.adresse_id;
END$$


CREATE TRIGGER IF NOT EXISTS trg_after_kunde_delete
AFTER DELETE ON kunde
FOR EACH ROW
BEGIN
	DECLARE anzahl INT;
	
	SELECT COUNT(*) INTO anzahl
	FROM kunde
	WHERE adresse_id = OLD.adresse_id AND kunde_id != OLD.kunde_id;
	
	IF anzahl = 0 THEN
		DELETE FROM adresse WHERE adresse.adresse_id = OLD.adresse_id;
	END IF;
		
END$$



/*


CREATE TRIGGER trg_rb_after_insert
AFTER INSERT ON rezept_bestellung
FOR EACH ROW
BEGIN
    CALL recalc_gesamtpreis(NEW.bestellung_id);
END$$

-- Nach Aktualisierung (z. B. geänderte Menge)
CREATE TRIGGER trg_rb_after_update
AFTER UPDATE ON rezept_bestellung
FOR EACH ROW
BEGIN
    CALL recalc_gesamtpreis(NEW.bestellung_id);
END$$

-- Nach Löschen
CREATE TRIGGER trg_rb_after_delete
AFTER DELETE ON rezept_bestellung
FOR EACH ROW
BEGIN
    CALL recalc_gesamtpreis(OLD.bestellung_id);
END$$


*/



DELIMITER ;