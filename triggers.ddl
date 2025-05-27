DROP TRIGGER IF EXISTS `pasajes`.`trg_after_insert_ticket`;

DELIMITER $$
USE `pasajes`$$
CREATE DEFINER = CURRENT_USER TRIGGER trg_after_insert_ticket
AFTER INSERT ON Ticket
FOR EACH ROW
BEGIN
  INSERT INTO LogVentas(ticket_id, fecha, monto)
    VALUES(NEW.id, NOW(), calculaPrecio(NEW.Rutaid));
END;$$
DELIMITER ;
