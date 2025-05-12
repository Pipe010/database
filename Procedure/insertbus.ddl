CREATE DEFINER=`root`@`localhost` PROCEDURE `insertbus`(
in id int,
in placa varchar(7),
num_serial int(10), 
color varchar(25), 
Tipo_busid tinyint(3), 
Empresaid tinyint(3), 
Conductorid bigint(20)
)
BEGIN
insert into bus (id,placa,num_serial, color,Tipo_busid, Empresaid ,Conductorid) values (id,placa,num_serial, color,Tipo_busid, Empresaid ,Conductorid);
END