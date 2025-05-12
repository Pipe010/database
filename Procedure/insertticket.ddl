CREATE DEFINER=`root`@`localhost` PROCEDURE `insertticket`(
id bigint(20),
fecha_expe datetime ,
fecha_venc datetime ,
Rutaid bigint(20)
)
BEGIN
insert into ticket (id,fecha_expe,fecha_venc,Rutaid) values (id,fecha_expe,fecha_venc,Rutaid);
END