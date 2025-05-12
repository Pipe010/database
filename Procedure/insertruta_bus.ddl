CREATE DEFINER=`root`@`localhost` PROCEDURE `insertruta_bus`(
Rutaid bigint(20),
Busid int(10),
fechasalida int(11)
)
BEGIN
insert into ruta_bus (Rutaid,Busid,fechasalida) values (Rutaid,Busid,fechasalida);
END