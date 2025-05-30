-- //--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//

-- despues de crear un ticket registra la venta en la tabla log

DELIMITER $$
CREATE TRIGGER trg_after_insert_ticket
AFTER INSERT ON ticket
FOR EACH ROW
BEGIN
	INSERT INTO logventas(ticket_id, fecha, monto)
    VALUES(NEW.id, NOW(), calculaprecio(NEW.Rutaid));
END;$$
DELIMITER ;

-- //--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//

-- registra cada nueva asignacion en la tabla log


DELIMITER $$
drop trigger if exists trg_after_insert_ruta_bus;
CREATE TRIGGER trg_after_insert_ruta_bus
AFTER INSERT ON ruta_bus
FOR EACH ROW
BEGIN
    INSERT INTO logasignaciones(bus_id, ruta_id, fecha_asignacion)
    VALUES(NEW.Busid, NEW.Rutaid, NOW());
END;$$

DELIMITER ;

