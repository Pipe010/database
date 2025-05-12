CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttermi_emp`(
Terminalid tinyint(3),
Empresaid tinyint(3),
N_oficina tinyint(3) ,
telefono bigint(20)
)
BEGIN
insert into terminal_empresa (Terminalid,Empresaid,N_oficina,telefono) values (Terminalid,Empresaid,N_oficina,telefono);
END