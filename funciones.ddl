-- //--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//

-- calcula el precio del ticket según la ruta

USE `pasajes`;
DROP function IF EXISTS `calculaprecio`;

DELIMITER $$
USE `pasajes`$$
CREATE FUNCTION `calculaprecio` (
	RutaId BIGINT(20)
)
RETURNS INTEGER
DETERMINISTIC
BEGIN
  DECLARE p_base INT;
  SELECT precio INTO p_base FROM Ruta WHERE id = RutaId;
  IF p_base IS NULL THEN
    SET p_base = 0; 
  END IF;
  RETURN p_base;
END$$

DELIMITER ;

-- //--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//

-- verifica que el bus no esté ya asignado a esa ruta

USE `pasajes`;
DROP function IF EXISTS `estaAsignado`;

DELIMITER $$
USE `pasajes`$$
CREATE FUNCTION `estaAsignado` (

	busId INT(10), 
    rutaId BIGINT(20)
    
)
RETURNS TINYINT(1)
DETERMINISTIC
BEGIN

  DECLARE contar INT;
  SELECT COUNT(*) INTO contar FROM Ruta_Bus WHERE Busid = busId AND Rutaid = rutaId;
  RETURN contar > 0;
  
END$$

DELIMITER ;

