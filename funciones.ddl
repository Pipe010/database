USE `pasajes`;
DROP function IF EXISTS `calculaPrecio`;

DELIMITER $$
USE `pasajes`$$
CREATE FUNCTION calculaPrecio(rutaId BIGINT) 
  RETURNS INT
  DETERMINISTIC
BEGIN
  DECLARE precio_base INT;
  SELECT precio INTO precio_base
    FROM Ruta
   WHERE id = rutaId;
  RETURN precio_base;
END;$$

DELIMITER ;

