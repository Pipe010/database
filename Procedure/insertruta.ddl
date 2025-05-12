CREATE DEFINER=`root`@`localhost` PROCEDURE `insertruta`(
id bigint(20),
tiempo_aprox time(6) ,
precio int(10) ,
distancia int(10) ,
hora_sal datetime ,
hora_llegada datetime ,
origen int(10) ,
destino int(10) ,
Empresaid tinyint(3)
)
BEGIN
insert into ruta (id,tiempo_aprox,precio,distancia,hora_sal,hora_llegada,origen,destino,Empresaid) 
values (id,tiempo_aprox,precio,distancia,hora_sal,hora_llegada,origen,destino,Empresaid);
END