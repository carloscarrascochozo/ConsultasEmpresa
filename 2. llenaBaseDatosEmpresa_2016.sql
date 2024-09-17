/*Script que llena base de datos Empresa*/
--Configura idioma
SET LANGUAGE spanish

--Usa base de datos empresa
USE empresa

--Elimina filas de las tablas existentes
DELETE FROM LineaHorario 
DELETE FROM Hora 
DELETE FROM Asignacion
DELETE FROM Proyecto
DELETE FROM Dependiente

--Deshabilita restriccion de clave foránea
ALTER TABLE Departamento NOCHECK CONSTRAINT FK_Departamento_Empleado
DELETE Empleado
--Habilita restriccion de clave foránea
ALTER TABLE Departamento CHECK CONSTRAINT FK_Departamento_Empleado
DELETE Departamento
DELETE FROM Distrito
DELETE FROM Provincia 

--Inserta filas a las tablas respectivas
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (1,'Investigación',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (2,'Administración',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (3,'Dirección',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (4,'Logística',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (5,'Finanzas',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (6,'Ventas',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (7,'Marketing',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (8,'Contabilidad',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (9,'Planificacion',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (10,'Informática',null,null,1)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (11,'Patrimonio',null,null,0)
INSERT INTO Departamento(numero_Dep,nombre_Dep,nss_Emp,FechaIniGer_Dep,vigencia_Dep) VALUES (12,'Soporte Técnico',null,null,0)

INSERT INTO Provincia(codigo_Prov,nombre_Prov) VALUES(1,'Chiclayo')
INSERT INTO Provincia(codigo_Prov,nombre_Prov) VALUES(2,'Lambayeque')
INSERT INTO Provincia(codigo_Prov,nombre_Prov) VALUES(3,'Ferreñafe')

INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(1,'Chiclayo',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(2,'José Leonardo Ortiz',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(3,'La Victoria',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(4,'Cayaltí',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(5,'Chongoyape',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(6,'Eten',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(7,'Puerto Eten',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(8,'Lagunas',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(9,'Monsefú',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(10,'Nueva Arica',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(11,'Oyotún',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(12,'Pátapo',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(13,'Picsi',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(14,'Pimentel',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(15,'Pomalca',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(16,'Pucalá',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(17,'Reque',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(18,'Santa Rosa',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(19,'Tumán',1)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(20,'Saña',1)

INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(21,'Lambayeque',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(22,'Chóchope',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(23,'Íllimo',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(24,'Jayanca',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(25,'Mochumí',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(26,'Mórrope',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(27,'Motupe',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(28,'Olmos',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(29,'Pacora',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(30,'Salas',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(31,'San José',2)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(32,'Túcume',2)

INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(33,'Ferreñafe',3)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(34,'Cañaris',3)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(35,'Incahuasi',3)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(36,'Manuel Antonio Mesones Muro',3)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(37,'Pítipo',3)
INSERT INTO Distrito(codigo_Dis,nombre_Dis,codigo_Prov) VALUES(38,'Pueblo Nuevo',3)


INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('000258973','Juan','Alvarado','Castro','191447','23/06/1973','216789','Lima 5643, Arequipa',1,2500,'14/02/1993',2,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('000268973','William','Alvarez','Gonzales','190447','02/12/1975','345123','San jose 3213,Chiclayo',1,3400,'12/04/1990',1,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('000342102','Roberto','Aguirre','Díaz','731314','03/11/1976','207535','Brasil 4567, Lima',1,4000,'21/09/1993',1,'C','V',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('000459350','Martin','Oya','Salazar','900327','31/10/1970','264536','zepita 1245 Tujillo',1,3000,'24/08/1998',3,'C','A',4);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('002157349','Ramiro','Ortega','Rios','284073','05/10/1974','476589','Huamachuco 784,Lambayeque',1,2000,'12/10/1998',NULL,'C','C',5);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('002304593','Percy','Ortiz','Romero','562803','28/02/1978','698571','Arica 859,Chimbote',1,1200,'12/06/1999',2,'C','V',6);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('002681210','Ana Maria','Araujo','Montenegro','823624','18/04/1973','468945','Chiclayo 3245, Tumbes',0,3500,'07/09/1994',NULL,'N','C',7);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('003069845','Luis','Otoya','Siesquen','783820','30/10/1975','458923','Bolognesi 596,Lima',1,2000,'21/06/1997',1,'N','V',8);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('004048765','Yvan','Orna','López','340805','06/03/1976','458921','Pedro Ruiz 236,Chiclayo',1,3000,'15/01/1999',NULL,'C','C',9);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('004051589','Alberto','Ordoñez','Trujillo','7945','02/12/1965','257058','Balta 415,chiclayo',1,2400,'15/11/1998',4,'N','A',10);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('005811360','Carlos','Aragón','Sanchez','374765','28/04/1972','235664','Luis Gonzaga 1256, Chimbote',1,2800,'21/09/1993',2,'N','A',11);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('006056064','Alex','Olenka','Rivera','120344','25/05/1979','481263','Abancay 156,Lima',1,3200,'22/09/1990',2,'N','A',12);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('006900105','Julio','Adrianzen','Tello','466975','20/12/1973','246578','Maria Izaga 3243, Lima',1,4500,'15/10/1990',3,'C','V',13);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('007139310','Rosa','Arce','Rodríguez','915406','23/09/1971','221785','Amazonas 234, Cajamarca',0,2800,'08/12/1992',3,'C','V',14);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('007653952','Priscila','Oliden','Larios','190380','12/10/1978','425843','PuertoRico 152,Chiclayo',0,4000,'15/10/1992',4,'N','A',15);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('007890123','Christian','Albujar','Colchado','558692','07/06/1969','348996','Salaverry 2478, Tacna',1,3400,'21/08/1994',NULL,'C','C',16);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('008021025','Olguin','Santa Cruz','Mirian','246980','24/10/1980','225874','Sucre 145,Lima',1,3000,'15/06/1997',4,'N','V',17);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('008576403','Carlos','Alcides','Fernandez','282384','26/08/1968','228965','Belaunde 345, Lambayeque',1,3800,'04/11/1988',NULL,'C','C',18);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('008765320','Juan','Ortiz','Carrion','775642','16/04/1969','526978','Los Rosales 789, Chimbote ',1,2500,'20/01/1999',3,'N','V',19);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('009534021','Angela','Aguilar','Suarez','640532','09/07/1965','206567','Bolognesi 345, Loreto',0,4500,'08/09/1988',3,'N','A',20);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('012564783','Martín','Leyva','Cruzado','1479628','05/01/1979','224587','Los Faiques 952, Los Parques',1,3000,'20/05/1999',5,'C','A',21);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('013675905','José','Zegarra','Cavero','1580740','15/02/1958','250911','Pacasmayo 110, Santa Victoria',1,3500,'23/04/1981',5,'N','A',22);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('014685006','Georgina','Lamas','Sanchez','1590841','26/08/1965','203469','Capirona 108, Villarreal',0,2500,'13/11/1990',5,'N','V',23);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('014786017','Flor','Lozano','Arias','1691852','10/11/1970','264780','La Puntilla 120, Villarreal',0,3000,'23/03/1991',5,'N','A',24);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('015796118','Zaraí','Zomocurcio','Zapata','1601953','01/01/1981','245877','Virrey Toledo 438, Latina',0,1500,'18/06/2000',5,'C','A',25);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('015897129','Pedro','Zuloaga','Izquierdo','1702964','07/12/1967','660544','Zarumilla 570, Satelite',1,4000,'30/01/1987',5,'N','A',26);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('016807220','Susan','León','Aguirre','1712065','18/01/1972','231155','Malecón Seoane 688, Pimentel',0,2000,'29/09/1992',5,'C','A',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('016908231','Enrique','López','Zorrilla','1813166','25/06/1962','207315','Loreto 215, Los Parques',1,3500,'20/05/1988',5,'N','A',28);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('017009342','Jorge','Zavala','Roque','1923470','19/05/1977','664670','Los Sauces 440, Santa Victoria',1,2500,'04/04/2000',5,'C','A',29);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('018064894','Juan','Zapata','Rodriguez','1489379','30/10/1961','237159','San José 345, Chiclayo',1,3000,'12/01/1987',5,'N','A',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('021133012','Carla','Briones','Albujar','2988776','04/09/1964','273425','Brasil 5564, Lima',0,4900,'04/11/1991',5,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('021178901','Martha','Muro','Bances','2998855','08/08/1969','450678','Luis Gonzales 124, Chiclayo',1,2800,'29/10/1989',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('023344901','Karolina','Panta','Fernandez','2988855','01/05/1965','213498','Los girasoles 3456, Chiclayo',0,4100,'25/06/1989',1,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('023456789','Javier','Melendez','Rojas','2012345','01/01/1975',NULL,'dos de Mayo 546, Lambayeque',1,2000,'01/01/1991',3,'N','V',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('024567890','Juan','Mendoza','Celis','2999888','15/02/1965','234543','Grau 2546, Chiclayo',1,5000,'16/02/1994',1,'C','A',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('025678901','Maria','Morales','Fernandez','2999886','18/03/1966','345678','Los olivos 3546, Chimbote',1,4500,'25/05/1993',NULL,'C','C',4);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('026789012','Elvira','Mesones','Ordoñes','2999877','28/03/1968','237895','San jose 1518, Trujillo',0,5000,'05/12/1994',5,'N','V',4);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('027755441','Joaquin','Puertas','Luna','2663355','14/12/1975','283468','Salaverry 3488, Chiclayo',1,3100,'15/10/1994',1,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('027890123','Antonio','Morante','Ramirez','2998866','23/11/1974','254312','Jose olaya 312, Piura',1,2500,'27/07/1996',1,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('028822998','Andrea','Pantoja','Rodriguez','2886855','16/07/1973','263598','Lima 1456, Ica',0,4300,'23/09/1992',NULL,'C','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000001','Jacinto','Yataco','Torrealva','41819042','11/07/1955',NULL,'Villa FAP #35',1,5000,'12/01/1993',1,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000002','Boris','Jiménez','Matallana','40293845','12/02/1960','982736','San Roque Edif. 3 Depto. 23',1,3500,'09/09/1982',1,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000003','Ivonne','Yactahuamán','Calúa','25347586','17/06/1956','202020','Leticia #235',0,2500,'11/11/1975',NULL,'C','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000004','Lizbeth','Julca','Gastelo','19283746','03/05/1978',NULL,'Hernando de Soto #847',0,3500,'12/12/1992',2,'N','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000005','Richard','Jaramillo','Delgado','43245678','23/04/1965','999928','Las Amelias #126 La Pradera',1,4500,'05/10/1998',1,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000006','Zarella','Yañez','Ruiz','19640283','13/11/1958','208417','Villa FAP #81',0,2500,'20/05/1982',NULL,'C','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000007','Vladimir','Yriarte','Duschenko','73645832','19/10/1963','283745','Los Geranios #293 La Victoria',1,3500,'30/09/1999',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000008','Artemio','Jirafales','Pérez','29374752','30/09/1976','283751','Los Incas 928 La Victoria',1,4500,'01/01/1996',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000009','Oscar','Yúncor','Llontop','49485736','02/02/1976',NULL,'Arizola #823',1,4750,'18/06/1992',5,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000010','Renzo','Juárez','Picardo','28374653','07/03/1980',NULL,'Av. Grau 594 Sta. Victoria',1,3200,'04/06/1994',3,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('090000011','Flor','Yapzáng','Yovera','47992020','13/01/1983','827345','Santa Rosa #948',0,5000,'26/02/2001',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('100069845','Luis','Perales','Siesquen','16783820','15/08/1960',NULL,'Bolognesi 455',1,2600,'24/05/1982',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('100459350','Martin','Prado','Salazar','15900327','16/12/1974',NULL,'La Gra Plaza 1987',1,1400,'25/06/1989',1,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('101168973','William','Barboza','Gonzalez','18784545','10/05/1980',NULL,'Las Dunas 3650',1,2000,'12/05/1995',1,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('114051589','Alberto','Balladares','Tirado','19007945','02/05/1979',NULL,'Los Jardines De La Paz 654',1,1900,'28/05/2001',3,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('122304593','Percy','Puertas','Romero','14562800','12/10/1958',NULL,'Los Alamos 684',1,2600,'25/03/1945',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('123456789','José','Silva','Torres','18151612','09/01/1965',NULL,'Fresnos 731, Higueras, MX',1,3000,'12/12/1990',1,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('128576403','Carlos','Benites','Castro','11282384','10/02/1960',NULL,'Los Parques 2051',1,4000,'10/10/1975',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('135811360','Carlos','Balladares','Sanchez','12374765','15/04/1975',NULL,'La Rivera 3210',1,1400,'25/04/1998',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('144048765','Yvan','Prada','López','14340805','19/03/1955',NULL,'Los Narajos 123',1,1400,'25/05/1945',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('146900105','Julio','Bances','Sanchez','13466975','12/05/1965',NULL,'El Bosque 021',1,4000,'12/05/1997',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('147653952','Priscila','Pérez','Larios','17190380','18/02/1977',NULL,'El Olmo 964',0,2550,'01/05/1998',3,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('156056064','Alex','Peña','Rivera','12120344','04/06/1979',NULL,'Manuel Gonzalez Prada 456',1,2600,'04/03/2002',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('157890123','Chrisian','Bellavista','Tello','14558692','12/12/1978',NULL,'Las Palmas 159',1,1500,'15/12/1999',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('167783601','Karla','Palomino','Huaman','12001012','06/08/1980',NULL,'Los Escritores 591',0,1650,'25/06/2002',4,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('169534021','Angela','Bobadilla','Suarez','15640532','03/03/1974',NULL,'Av. El Pacifico 987',0,2000,'30/06/1997',2,'C','A',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('170342102','Roberto','Bueno','Díaz','16731314','05/05/1973',NULL,'Av. La Marina 657',1,2500,'10/05/1997',2,'N','A',4);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('178765320','Juan','Pescorán','Carrión','15775642','25/09/1978',NULL,'Los Escritores 879',1,2520,'19/07/1997',4,'N','A',5);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('182681210','Ana Maria','Buendía','Montenegro','17823624','04/05/1976',NULL,'Los Angeles 962',0,2900,'05/05/2001',3,'N','A',6);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('188021025','Carlos','Palacios','Sipión','15246980','21/03/1981',NULL,'Panamericana 385',1,1800,'26/01/2002',4,'C','A',7);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('192157349','Ramiro','Pedrasa','Rios','14284073','19/05/1975',NULL,'La Pradera 789',1,5000,'05/08/2000',4,'C','V',8);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('197139310','Rosa','Bances','Rodríguez','18915406','01/05/1981',NULL,'Los Parques 847',0,2600,'16/11/2001',3,'N','A',9);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('302365450','Robinson','Requena','Perales','36924222','15/11/1955',NULL,'Libertad 705',1,3687,'24/08/1990',2,'C','V',10);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('303621230','Alberto','Damian','Luis','36602227','15/08/1975',NULL,'Luis Gonzales 158',1,1400,'30/06/1988',1,'N','A',11);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('303629740','Heiner','Rios','David','36924322','01/10/1954',NULL,'Bolognesi 796',1,2500,'26/12/1985',4,'N','V',12);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('303697450','Cesar','Dante','Arroyo','36590227','26/03/1978',NULL,'Los Tulipanes 598',1,800,'20/11/1990',1,'C','V',13);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('305689150','Maria','Davila','Colunche','36721026','12/01/1960',NULL,'Federico Villareal 452',0,800,'04/05/1978',2,'N','A',14);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('310855400','Carlos','Diaz','Diaz','36710225','25/05/1965',NULL,'Los Olivos 345 - 2 piso',1,4700,'26/06/1982',1,'N','A',15);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('312369450','Javier','Ramirez','Cordova','36924127','15/09/1955',NULL,'Juan XXIII 1236',1,2500,'24/06/1980',3,'C','A',16);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('312698780','Ivan','Dueñas','Adrinazen','36360227','18/06/1955',NULL,'Dos de Mayo 367',1,1000,'19/08/1980',1,'C','A',17);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('325984150','Wilmer','Ruperta','Celis','36924422','12/12/1981',NULL,'San Jose 978',1,2000,'16/11/1979',2,'N','A',18);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('333445555','Federico','Vizcarra','Gonzales','12341256','08/12/1960','343648','Valle 638, Higueras, MX',1,4000,'05/07/1980',NULL,'N','C',19);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('335691280','Oscar','Diez','Yovera','36480227','20/05/1962',NULL,'Elias Aguirre 1587',1,4000,'29/10/1982',1,'N','V',20);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('341256280','Erika','Rico','Villena','36924722','28/07/1955',NULL,'Balta 120',0,4700,'17/09/1980',2,'N','A',21);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('345621260','Robert','Roque','Monsalve','36924822','15/02/1972',NULL,'Lora y Lora 578',1,3600,'25/02/2000',NULL,'N','C',22);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('356132360','Dennis','Romero','Julio','36713127','25/08/1951',NULL,'Castilla 789',1,2500,'31/05/1972',1,'N','A',23);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('361298560','Jose','Deza','Manay','36470227','15/12/1958',NULL,'Grau 978',1,2000,'25/01/1978',1,'N','A',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('369826720','Maria','Dejo','Medina','36340228','30/08/1960',NULL,'Bolognesi 879',0,800,'03/12/1985',2,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('379523230','Yoel','Riccio','Monteza','36924922','12/10/1980',NULL,'Campodonico 502',1,4600,'05/04/1999',3,'N','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('379562350','Manuel','Rivera','Carrión','36924522','15/10/1972',NULL,'Pedro Ruiz 756',1,2800,'12/06/1992',NULL,'N','C',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('381655620','Ronald','Requejo','Gonzalez','36924622','20/04/1980',NULL,'Cuglievan 1010',1,2700,'15/06/1995',2,'C','V',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('396871230','Diana','Delgado','Monja','36350229','22/07/1962',NULL,'Leoncio Prado 478',0,800,'12/11/1985',NULL,'N','C',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('397561230','Javier','Divos','Moreno','36330227','04/07/1955',NULL,'El Pacifico 240',1,800,'25/10/1980',1,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('402365451','Enrique','Sipion','Villarreal','46535356','17/11/1964',NULL,'Elvira Garcia 841',1,900,'10/02/1987',4,'C','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('403621230','Yvan','Erla','Adrianzen','47865566','14/02/1959',NULL,'Elias Aguirre 540',1,900,'01/05/1978',3,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('403629742','Erika','Santamaria','Villena','45695656','02/09/1962',NULL,'La Veronica 150',0,5000,'02/12/1985',2,'N','V',6);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('403697453','Cesar','Elio','Arroyo','40369541','26/11/1981',NULL,'San Jose 230',1,1650,'01/02/2000',4,'C','A',11);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('405689155','Manuel','Efio','Colunche','42366984','10/05/1963',NULL,'Las Moras 154',1,3000,'15/01/1985',3,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('410855403','Carlos','Esteves','Contreras','44359875','22/10/1961',NULL,'Los Monos 235',1,1450,'12/02/1983',1,'C','A',10);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('412369455','Jessica','Sánchez','Fernandez','41265656','18/04/1968',NULL,'Independencia 844',0,4600,'15/10/1990',3,'C','A',11);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('412698784','Wilmer','Eustaquio','Celis','40369845','28/07/1966',NULL,'Balta 840',1,2560,'01/04/1986',2,'C','V',26);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('425984153','Johana','Saavedra','Chancafe','46953232','27/12/1971',NULL,'Teofilo Vera 138',0,3690,'11/03/1995',3,'N','A',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('435691285','Sara','Epifanio','Albujar','45269525','08/10/1969',NULL,'A.B. Leguia 1049',0,3850,'22/05/1992',1,'N','A',28);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('441256281','Luis','Sirlopu','Quesquen','40332565','09/04/1965',NULL,'Bolognesi 829',1,2650,'11/10/1985',2,'N','V',29);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('445621260','Ronald','Suarez','Gonzalez','48952333','22/04/1959',NULL,'Las Magnolias 290',1,1780,'05/03/1990',NULL,'N','C',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('453453453','Josefa','Esparza','Castillo','12141567','31/07/1962','232567','Rosas 5631, Higueras, MX',0,2500,'20/02/1980',1,'N','A',26);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('456132366','Julio','Sandoval','Medina','42025323','13/06/1957',NULL,'Los Cipreses 180',1,2540,'10/03/1987',NULL,'C','C',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('461298566','Rocio','Evaristo','Sipion','43598425','29/02/1964',NULL,'V.A. Belaunde 482',0,2800,'10/05/1985',3,'C','V',28);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('469826722','Maria','Estefan','Medina','41236984','09/12/1971',NULL,'Las Vegas 125',0,4500,'25/02/1995',2,'N','A',29);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('479523232','Oscar','Suyon','Limo','41235365','18/09/1960',NULL,'Los Tulipanes 340',1,850,'03/06/1982',3,'C','V',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('479562357','Martin','Salazar','Piscoya','42236536','12/03/1967',NULL,'El Vaticano 284',1,3580,'01/01/1987',1,'C','A',26);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('481655623','Jose','Supo','Casas','49856566','11/05/1961',NULL,'Jacaranda 255',1,1280,'10/10/1984',4,'N','V',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('496871231','Diana','Ermogenes','Monja','40255655','25/12/1965',NULL,'Los Alisos 593',0,3500,'25/02/1995',NULL,'C','C',28);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('497561231','Javier','Esteban','Moreno','45612887','05/08/1968',NULL,'Saenz Peña 784',1,2580,'01/12/1986',4,'N','A',29);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543222255','Tota','Tello','Huamaní','5222224','13/08/1964','923196','Los Pinos 123,Lambayeque',1,800,'01/02/1990',1,'C','A',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543222555','Tato','Trinidad','López','52222244','14/07/1963','923197','Los Geraneos 234,Lambayeque',1,800,'01/09/1990',1,'C','A',26);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543225555','Tita','Taboada','Ayala','52222444','15/06/1962','923198','Los Tulipanes 345,Lambayeque',0,3000,'01/08/1990',1,'C','A',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543255555','Toña','Tequén','Rosado','52224444','06/05/1961','923199','Los Libertadores 46,Lambayeque',0,5000,'01/12/1990',1,'C','A',28);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543333333','Tula','Tiznado','Tiznado','52244444','17/04/1960','923123','Los Pinos 467,Lambayeque',0,4000,'01/11/1990',1,'C','A',29);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543333335','Tarcila','Torrejón','Suclupe','52444444','18/03/1959','923124','Los Crizantemos 678,Lambayeque',0,3000,'01/05/1990',1,'C','A',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543333355','Tatiana','Tafur','Sánchez','5111111','19/02/1958','923125','Los Parques 423,Lambayeque,MX',0,2000,'01/04/1990',1,'C','A',26);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543333555','Tati','Torres','Saavedra','5111114','20/01/1957','923126','Los Jardines 394,Lambayeque',0,1000,'01/12/1990',1,'C','A',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543335555','Tito','Ternero','Torres','51111144','21/12/1956','923127','Las Flores 645,Lambayeque,MX',1,2000,'01/12/1990',1,'C','A',28);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543355555','Toño','Toro','Torrejón','51111444','22/11/1955','923128','Las Rosas 222,Lambayeque,MX',1,2000,'01/11/1990',1,'C','A',29);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('543555555','Filomena','Farfán','Pinto','51114444','23/10/1954','923129','Las Gardenias 3333,Lambayeque',0,5000,'01/10/1990',2,'C','A',30);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544444444','Flor','Fierro','Peña','51144444','24/09/1959','223123','La Pradera 553,Lambayeque,MX',0,4000,'01/09/1990',1,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544444445','Flora','Fleitas','Córdova','51444444','25/08/1955','423123','Los Montes 132,Lambayeque,MX',0,5000,'01/08/1990',4,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544444455','Fanny','Fiestas','Tequén','50000000','26/07/1955','323123','Los Bosques 394,Lambayeque,MX',0,3000,'01/07/1990',3,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544444555','Faviola','Farroñan','Fernandez','50000004','27/06/1960','523123','Los Claveles 234,Lambayeque,MX',0,850,'01/06/1990',2,'C','A',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544445555','Freddy','Fernandez','Pérez','50000044','28/05/1969','623123','Los Girasoles 122,Lambayeque',1,800,'01/05/1990',1,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544455555','Fulvio','Farro','Roque','50000444','29/04/1958','723123','Los Jazmines 231,Lambayeque,MX',1,800,'01/04/1990',4,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('544555555','Fito','Figueroa','Gomez','50004444','30/03/1957','823123','Las Flores 480,Lambayeque,MX',1,800,'01/03/1990',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('545555555','Franco','Farje','Garcia','50044444','02/02/1956','923123','LasVioletas 546,Lambayeque',1,2000,'01/02/1990',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('555555555','Francisco','Falen','Farje','50444444','01/01/1955','123123','Las Magnolias 393,Lambayeque',1,1000,'01/01/1990',1,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('600884444','Vanessa','Gonzaga','Martinez','65151895','15/09/1962','454789','Espiga 875, Heras, MX',0,3800,'13/03/1995',1,'N','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('600884455','Cindy','Urpeque','Palacios','60015895','15/09/1962','454789','Espiga 875, Heras, MX',0,3800,'13/03/1995',1,'N','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('613453453','Julio','Guerra','Castillo','62141567','31/07/1962','232567','Rosas 5631, Higueras, MX',1,2500,'20/02/1980',1,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('613453456','Miguel','Ursaiz','Mendoza','62189567','31/07/1962','232567','Rosas 5631, Higueras, MX',1,2500,'20/02/1980',1,'N','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('633445551','Mario','Uriarte','Odar','62441256','08/12/1955','343648','Valle 638, Higueras, MX',1,4000,'05/07/1980',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('633445555','Luis','Gutiérrez','Siésquen','62341256','08/12/1955','343648','Valle 638, Higueras, MX',1,4000,'05/07/1980',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('666884444','Ramón','Nieto','Martinez','15151895','15/09/1962','454789','Espiga 875, Heras, MX',1,3800,'13/03/1995',1,'N','V',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('681981911','Enrrique','Urtiaga','Talledo','66895649','15/08/1980','243758','Los Nogales 657, Heras, MX',1,2000,'26/09/2000',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('681981981','Ricardo','Galindo','Perales','66895647','15/08/1980','243758','Los Nogales 657, Heras, MX',1,2000,'26/09/2000',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('687654321','Juan','Gastlo','Quispe','64161335','20/06/1961',NULL,'Bravo 291, Belén, MX',1,4300,'10/12/1990',2,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('687654323','Carlos','Urcia','Dejo','68161335','20/06/1961',NULL,'Bravo 291, Belén, MX',1,4300,'10/12/1990',2,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('687987977','Karina','Ulloque','Neyra','62100098','29/03/1959','341245','Dalias 980, Higueras, MX',0,2500,'13/05/1998',2,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('687987987','Alicia','Guerrero','Lopez','62163798','29/03/1959','341245','Dalias 980, Higueras, MX',0,2500,'13/05/1998',2,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('688665555','Jaime','Galvez','Fernandez','64243423','10/11/1957','281222','Sorgo 450, Higueras, MX',1,5000,'10/10/1999',NULL,'N','C',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('689289710','Esperanza','Uriticoichea','Moreno','66101321','10/06/1977',NULL,'Los Eucaliptos 050, Sucre, MX',0,2570,'01/11/1996',3,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('689289789','Juliana','Gándara','Morales','66141321','10/06/1977',NULL,'Los Eucaliptos 050, Sucre, MX',0,2570,'01/11/1996',3,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('699599929','Cesar','Urutia','Velezmoro','98162345','01/10/1967',NULL,'Sorgo 450, Higueras, MX',1,2570,'01/11/1996',5,'N','A',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('699887772','Yuliana','Ugaz','Maquén','66071890','19/07/1958',NULL,'Cotillo 3321, Sucre, MX',0,2500,'06/11/1978',2,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('699887777','Tatiana','Gonzales','Torrealba','66171890','19/07/1958',NULL,'Cotillo 3321, Sucre, MX',0,2500,'06/11/1978',2,'C','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('699999929','Jesús','Ulloa','Ballona','64299423','10/11/1957','281222','Sorgo 450, Higueras, MX',1,5000,'10/10/1999',NULL,'N','C',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('699999999','Pedro','Grondona','Marquina','68162345','01/10/1967',NULL,'Sorgo 450, Higueras, MX',1,2570,'01/11/1996',5,'N','A',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('701178901','Martha','Hernandez','Baca','72998855','08/12/1969','450688','Luis Gonzales 144, Chiclayo',0,2800,'29/11/1989',NULL,'N','C',2);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('701781110','Adriana','Winters','Hernandez','75000077','18/09/1955','895678','Atahualpa 956, Chimbote',0,4500,'25/05/1995',NULL,'C','C',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('709995901','Ana','Wolfenson','Bracamonte','72901010','18/12/1970','450688','Luis Gonzales 944, Chiclayo',0,2000,'29/01/1999',NULL,'N','C',3);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('711133001','Rosa','Winlong','Alarcon','79050576','24/09/1970','276425','Panama 554, Lima',0,4900,'04/12/1995',4,'N','A',4);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('721133001','Carla','Herrera','Albujar','72988776','24/09/1974','276425','Brasil 554, Lima',0,4900,'04/11/1990',3,'N','A',5);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('723344901','Karolina','Guillen','Horna','72988856','01/05/1955','213498','Los girasoles 345, Chiclayo',0,4100,'25/06/1989',4,'C','V',6);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('724555590','Julio','Watson','Cisneros','74894444','15/12/1975','234643','Angamos 546, Chiclayo',1,5000,'16/02/1997',1,'C','A',5);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('724567890','Juan','Huamachuco','Campos','75999888','15/08/1965','234643','Angamos 2546, Chiclayo',1,5000,'16/02/1997',1,'C','A',5);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('725678010','Maria','Hidrogo','Fernandez','75999886','18/09/1955','895678','Los olivos 356, Chimbote',0,4500,'25/05/1995',NULL,'C','C',12);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('726252525','Emma','Wong','Odar','78999555','30/03/1978','237995','San jose 118, Trujillo',0,3500,'05/12/1994',4,'N','V',14);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('726789010','Elvira','Huaman','Ordoñes','72999877','28/03/1978','237995','San jose 1518, Trujillo',0,5000,'05/12/1994',1,'N','V',16);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('727755441','Joaquin','Huidobro','Lopez','72663355','04/12/1965','283068','Salaverry 488, Chiclayo',1,3000,'15/10/1992',4,'C','A',17);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('727890122','Antonio','Huamani','Ramirez','72998777','23/11/1964','264312','Jose olaya 312, Piura',1,2500,'27/07/1996',2,'C','A',18);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('728822998','Andrea','Huuamachuco','Rodas','72886855','16/07/1973','263599','Lima 145, Ica',0,4300,'23/09/1992',NULL,'C','C',19);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('733449017','Claudia','Want','LLanos','72981000','01/08/1960','213498','Los Amautas 1045, Chiclayo',1,3400,'20/09/1989',3,'C','V',21);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('743210115','Jaime','Huancas','Rojas','74101132','10/01/1975',NULL,'las flores 546, Lambayeque',1,2000,'01/01/1991',3,'N','V',21);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('744444444','Luis','Winchonlong','Romero','74449999','21/01/1968',NULL,'Italia 546, Chiclayo',1,2000,'01/01/1991',3,'N','V',22);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('777559441','Jose','Winch','Zapata','76633559','14/12/1966','283068','Salaverry 888, Chiclayo',1,2300,'17/10/1990',1,'C','A',27);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('777771220','Marcos','Waitsman','Rodas','79900000','23/01/1960','264312','Jose Galvez 300, Piura',1,2500,'27/07/1996',1,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('788229980','Andrea','Wodman','Saucedo','78020304','19/07/1972','263599','Los Laureles 145, Ica',0,4300,'29/09/1995',NULL,'C','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('789789789','Mario','Palacios','Morales','16141321','10/06/1977',NULL,'Los Eucaliptos 050, Sucre, MX',1,2570,'01/11/1996',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('888665555','Jaime','Botello','Fernandez','54243423','10/11/1957','281222','Sorgo 450, Higueras, MX',1,5000,'10/10/1999',NULL,'N','C',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('981981981','María','Perales','Martos','6895647','15/08/1980','243758','Los Nogales 657, Heras, MX',0,2000,'26/09/2000',3,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('987654321','Jazmín','Valdés','Quispe','14161335','20/06/1961',NULL,'Bravo 291, Belén, MX',0,4300,'10/12/1990',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('987987987','Ahmed','Jabbar','Lopez','12163798','29/03/1959','341245','Dalias 980, Higueras, MX',1,2500,'13/05/1998',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('999887777','Alicia','Zapata','Torrealba','16171890','19/07/1958',NULL,'Cotillo 3321, Sucre, MX',0,2500,'06/11/1978',2,'C','A',1);
INSERT INTO Empleado(nss_Emp,nombres_Emp,apellidoPat_Emp,apellidoMat_Emp,dni_Emp,fechaNac_Emp,telefonos_Emp,direccion_Emp,sexo_Emp,salario_Emp,fechaIng_Emp,numero_Dep,situacion_Emp,estado_Emp,codigo_Dis) VALUES('999999999','Pedro','Díaz','Marquina','18162345','01/10/1967',NULL,'Sorgo 450, Higueras, MX',1,2570,'01/11/1996',5,'N','A',1);


SET IDENTITY_INSERT Proyecto ON 
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (1,'ProductoX','E',1,30000,'12/10/2013','28/07/2014',1)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (2,'ProductoY','S',1,50000,'24/11/2013','17/04/2014',2)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (3,'ProductoZ','E',1,25000,'25/08/2012','26/11/2013',3)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (4,'Automatizacion','T',2,40000,'13/04/2013','18/02/2014',4)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (5,'Reorganizacion','E',3,65000,'04/03/2014','03/11/2014',5)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (6,'NuevasPrestaciones','E',2,25000,'09/09/2013','08/10/2014',1)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (7,'Plan2003','E',9,80000,'12/12/2013','12/09/2014',3)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (8,'PromociónVerano','E',7,98000,'20/02/2014','26/11/2014',1)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (9,'PlanEstratégico','T',9,86000,'20/10/2013','20/12/2013',5)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (10,'Préstamos','E',5,120000,'18/07/2014','18/01/2015',10)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (11,'ProductoNuevo','S',7,100000,'06/06/2014','18/10/2014',7)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (12,'Proyecto12','E',1,88000,'15/08/2014','15/03/2015',10)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (13,'Proyecto13','S',2,90000,'01/10/2013','01/03/2014',25)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (14,'Proyecto14','T',3,95000,'05/12/2014','15/07/2014',1)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (15,'Proyecto15','E',4,70000,'30/08/2014','05/02/2015',2)

INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (16,'Implementación ISO/27001','E',6,100000,'30/06/2014','05/12/2014',2)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (17,'Desarrollo del Sistema de Comercialización','S',8,120000,'30/07/2014','05/12/2014',22)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (18,'Mejora del proceso de producción','E',9,99000,'13/08/2014','25/01/2015',22)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (19,'Desarrollo del Sistema de Gestión de Personal','E',9,80000,'30/09/2014','11/04/2015',26)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (20,'Mejora del Clima Organizacional','E',6,30000,'20/08/2014','15/03/2015',29)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (21,'Desarrollo de la Cultura Organizacional','E',6,30000,'19/10/2014','15/05/2015',26)
INSERT INTO Proyecto(numero_Pro,nombre_Pro,estado_Pro,numero_Dep,presupuesto_Pro,fechaIni_Pro,fechaFin_Pro,codigo_Dis) VALUES (22,'Capacitación a gerentes de departamento','T',6,22000,'19/05/2013','15/12/2013',26)

SET IDENTITY_INSERT Proyecto OFF 


INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('000268973',1,'Edwin','Alvaro','Suarez',1,'29/06/1999','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('000268973',2,'Gerardo','Alvaro','Suarez',1,'09/09/2000','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('000342102',1,'Luisa','Aguirre','Flores',0,'02/01/1996','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('000342102',2,'Veronica','Aguirre','Flores',0,'23/06/1999','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('000459350',1,'Mariana','Oya','Olano',0,'29/05/1999','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('002304593',1,'Viviana','Ortiz','Rada',1,'09/05/1993','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('003069845',1,'Alexandra','Otoya','Morillas',0,'01/06/1996','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('004048765',1,'Mirian','Orna','Olivera',0,'09/01/1990','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('005811360',1,'Jose Enrique','Aragón','Mendoza',1,'10/10/2000','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('006056064',1,'Huber','Olvera','Pichen',1,'07/06/1992','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('006900105',1,'Jose','Adrianzen','Chama',1,'25/11/1995','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('006900105',2,'Giulliana','Adrianzen','Chama',0,'25/10/1995','hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('007139310',1,'Javier','Arce','Zatta',1,'20/06/1996','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('007890123',1,'Rafael','Albujar','Miranda',1,'20/01/1998','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('008576403',1,'Benito','Alcides','Benites',1,'19/11/2000','hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('012564783',1,'Susan','León','Senmache',0,'18/01/1972','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('013675905',1,'Carmen','Leguía','Cumpa',0,'12/07/1960','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('013675905',2,'Diego','Zegarra','Leguía',1,'02/02/1986','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('013675905',3,'Carlos','Zegarra','Leguía',1,'25/09/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('014685006',1,'Jaime','Zela','Ponce',1,'28/08/1965','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('014685006',2,'Sara','Zela','Pando',0,'06/12/1991','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('014685006',3,'Jorge','Zela','Pando',1,'19/01/1994','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('016807220',1,'Mario','Leyva','Cabanillas',1,'05/01/1979','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('016908231',1,'Elena','Laredo','Farroñay',0,'13/08/1964','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('018064894',1,'Lily','Lecca','Fernández',0,'11/01/1965','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('018064894',2,'Magaly','Zapata','Lecca',0,'28/01/1987','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('021133012',1,'Cecilia','Mogollon','Mogollon',0,'18/03/1987','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('021133012',2,'Carlos','Mogollon','Pérez',1,'11/06/1967','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('021178901',1,'Marcos','Maldonado','Guevara',1,'19/02/1967','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('021178901',2,'Jose','Maldonado','Guevara',1,'19/02/1986','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('023456789',1,'Ana','Martinez','Barriga',0,'15/02/1977','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('023456789',2,'Mariela','Melendez','Tineo',0,'28/12/1991','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('023456789',3,'Daniela','Melendez','Tineo',0,'24/11/1995','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('023456789',4,'Alcides','Melendez','Tineo',1,'24/10/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('024567890',1,'Ana','Mendoza','Alcántara',0,'19/02/1985','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('024567890',2,'Raul','Mendoza','Alcántara',1,'20/05/1983','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000001',1,'Luisa','Ramirez','Panta',0,'19/10/1960','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000002',1,'Edwin','Jiménez','Arteaga',1,'06/06/1997','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000002',2,'Carmen','Arteaga','Cartagena',0,'25/12/1969','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000003',1,'Manuela','Paredes','Palomino',0,'03/05/1980','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000006',1,'Piere','Ruiz','Samillan',1,'22/04/1959','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000008',1,'Jesús','Jimenes','Meza',1,'15/07/1990','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000008',2,'Zenobia','Meza','Cuadros',0,'09/05/1988','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000010',1,'Renzo','Juárez','Pajares',1,'27/02/1998','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000010',2,'Guillermo','Juárez','Pajares',1,'01/01/1999','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('090000010',3,'Daisy','Pajares','Cabanillas',0,'31/12/1982','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('100459350',1,'Marina','Prado','Minchan',0,'19/07/2002','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('100459350',2,'Yeny','Prado','Minchan',0,'29/08/2002','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('100459350',3,'Angel','Prado','Minchan',1,'31/07/2002','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('101168973',1,'Edwin','Barboza','Fuertes',1,'16/04/1987','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('101168973',2,'Gerardo','Barboza','Fuertes',1,'25/06/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('114051589',1,'Elizabeth','Balladares','Caycay',0,'25/12/2001','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('114051589',2,'Tania','Balladares','Caycay',0,'26/10/1987','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('122304593',1,'Viviana','Puertas','Balladares',0,'30/09/1999','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('122304593',2,'Luis','Puertas','Balladares',1,'28/02/2001','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('123456789',1,'Miguel','Silva','Malca',1,'01/01/1988','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('123456789',2,'Alicia','Silva','Malca',0,'31/12/1990','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('123456789',3,'Elizabeth','Malca','Quispe',0,'05/05/1967','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('128576403',1,'Benito','Benites','Bueno',1,'26/07/2000','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('135811360',1,'Jose Enrique','Balladares','Suarez',1,'18/08/2001','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('144048765',1,'Karen','Prado','Dejo',0,'20/10/1998','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('146900105',1,'Jose','Bances','Figueroa',1,'10/10/2002','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('146900105',2,'Giulliana','Bances','Figueroa',0,'15/11/2000','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('147653952',1,'Segundo','Pérez','Jibaja',1,'25/03/1999','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('156056064',1,'Joaquin','Peña','Montalvo',1,'29/05/1997','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('157890123',1,'Rafael','Bellavista','Collao',1,'19/10/2000','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('167783601',1,'Octavio','Palomino','Moreno',1,'29/02/2000','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('170342102',1,'Luisa','Bobadilla','Padilla',0,'15/12/2001','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('178765320',1,'Alfredo','Pescorán','Quevedo',1,'14/06/2000','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('188021025',1,'Jose Luis','Palacios','Fontana',1,'26/09/1987','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('188021025',2,'Luis Angel','Palacios','Fontana',1,'13/05/1985','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('192157349',1,'Karina','Pedraza','Contreras',0,'17/08/1999','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('192157349',2,'Santiago','Pedraza','Contreras',1,'18/07/1998','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('192157349',3,'Pedro','Pedraza','Contreras',1,'08/09/1996','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('197139310',1,'Javier','Bances','Huaman',1,'14/09/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('302365450',1,'Robert','Requena','Silva',1,'12/05/2001','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('303621230',1,'Damian','Ostaloza','Mendizabal',1,'07/09/1985','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('303629740',1,'Dennis','Rios','Jaico',1,'12/12/1988','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('303697450',1,'Dante','Bravo','Diaz',1,'12/03/1979','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('305689150',1,'Armando','Perales','Monteza',1,'12/05/1987','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('310855400',1,'Carlos','Diaz','Palacios',1,'15/04/2002','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('312369450',1,'Alberto','Ramirez','Alva',0,'18/09/1986','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('312698780',1,'Maria','Dueñas','Quiroga',0,'09/12/1995','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('325984150',1,'Ruperta','Aquino','García',1,'12/11/1975','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('333445555',1,'Alicia','Vizcarra','Sánchez',0,'05/04/1976','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('333445555',2,'Teodoro','Vizcarra','Sánchez',1,'25/10/1973','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('333445555',3,'José','Vizcarra','Sánchez',1,'05/05/1978','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('333445555',4,'Jobita','Sánchez','Farro',0,'03/05/1955','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('335691280',1,'Ivan','Diez','Torres',1,'07/03/1980','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('341256280',1,'Manuel','Rico','Villalba',1,'12/08/1979','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('345621260',1,'Ronald','Roque','lncio',1,'12/07/1984','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('356132360',1,'Dante','Olazabal','Francia',1,'22/03/1988','Conyuge');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('361298560',1,'Diana','Delgado','Bazan',0,'06/03/1956','Conyuge');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('369826720',1,'Luis','Davila','Toledo',1,'12/03/1981','Conyuge');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('379523230',1,'Erika','Riccio','Estela',0,'12/06/1986','Hija');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('379562350',1,'Heiner','Rivera','Condemarín',1,'12/10/1978','Hijo');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('381655620',1,'Wilmer','Requejo','Villalobos',1,'12/09/1976','Hijo');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('396871230',1,'Javier','Delgado','Uceda',1,'05/08/1989','Hijo');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('397561230',1,'Luis','Divos','Timaná',1,'25/11/1979','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('402365451',1,'Edwin','Sipion','Quispe',1,'27/07/1984','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('403629742',1,'Roselin','Santamaria','Tineo',0,'24/11/1982','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('405689155',1,'Joshua','Efio','Kavadoy',1,'02/02/1983','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('405689155',2,'Santiago','Efio','Kavadoy',1,'12/12/1984','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('410855403',1,'Claudia','Esteves','Rodríguez',0,'11/12/1992','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('410855403',2,'Jorge','Esteves','Rodríguez',1,'04/07/1984','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('412698784',1,'Cristian','Eustaquio','Rojas',1,'15/06/1984','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('412698784',2,'Raquel','Rojas','Chapoñan',0,'31/05/1975','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('425984153',1,'Santiago','Saavedra','Barriga',1,'15/09/1992','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('425984153',2,'Yoel','Saavedra','Barriga',1,'15/09/1992','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('445621260',1,'Omar','Suarez','Torres',1,'31/10/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('445621260',2,'Miguel','Suarez','Torres',1,'05/07/1984','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('456132366',1,'Susana','Rodriguez','Linares',0,'15/08/1969','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('456132366',2,'Lourdes','Sandoval','Blas',0,'20/05/1979','Hermana   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('461298566',1,'Yohana','Evaristo','Díaz',0,'15/04/1987','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('461298566',2,'Yoel','Evaristo','Díaz',1,'15/04/1987','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('481655623',1,'Sofia','Ortiz','Morales',0,'11/05/1965','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('481655623',2,'Sara','Supo','Ruiz',0,'01/03/1983','Hermana   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('496871231',1,'Luisa','Ermogenes','García',0,'10/02/1989','Hermana   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('496871231',2,'Ana','Castro','Hernández',0,'31/08/1978','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('613453453',1,'Sandra','Guerra','Soriano',1,'25/02/1961','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('613453456',1,'Martin','Ursaiz','Farfan',1,'01/09/1987','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('613453456',2,'Angelica','Ursaiz','Farfan',0,'30/11/1991','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('681981911',1,'Jessica','Guerra','Calonge',0,'29/08/1961','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('681981981',1,'Erica','Tejada','Carmona',0,'15/04/1972','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('681981981',2,'Mario','Galindo','Tejada',1,'05/07/1998','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('687654323',1,'Ana','Urcia','Rivera',0,'05/06/1975','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('687654323',2,'Tadeo','Urcia','Rivera',1,'25/12/1972','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('687654323',3,'Jaime','Urcia','Rivera',1,'05/07/1979','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('687654323',4,'Marcia','Rivera','Palomino',0,'03/01/1957','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699599929',1,'Denisse','Tapia','Ubillus',0,'05/06/1965','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699887777',1,'Alicia','Gonzales','Farroñan',0,'05/04/1975','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699887777',2,'Teodoro','Gonzales','Farroñan',1,'25/10/1972','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699887777',3,'José','Gonzales','Farroñan',1,'05/05/1979','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699887777',4,'Marcos','Farroñan','Bautista',1,'03/05/1957','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699999929',2,'Marisol','Ulloa','Tapia',0,'15/09/1972','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699999929',3,'Nelsin','Ulloa','Tapia',1,'05/11/1998','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699999999',1,'Miguel','Grondona','Talledo',1,'01/01/1987','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699999999',2,'Alicia','Grondona','Talledo',0,'31/12/1991','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('699999999',3,'Elisa','Talledo','Cardenas',0,'05/05/1965','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('701178901',1,'Marcos','Hold','Díaz',1,'19/02/1969','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('701178901',2,'Jose','Herrera','Hold',1,'19/02/1986','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('721133001',1,'Raul','Herrera','Humala',1,'20/05/1983','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('723344901',1,'Carlos','Horna','Figueroa',1,'11/06/1967','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('723344901',2,'Ana','Horna','Horna',0,'19/02/1970','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('726252525',1,'Monica','Wong','Alvizuri',0,'28/12/1996','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('726252525',2,'Alexandra','Wong','Alvizuri',0,'24/11/1995','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('727755441',1,'Ana','Huamani','Guerra',0,'15/02/1968','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('727755441',2,'Carolina','Huamachuco','Huamani',0,'18/03/1969','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('727755441',3,'Daniela','Huamachuco','Huamani',0,'24/11/1995','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('733449017',1,'Edwin','Martinez','Guanilo',1,'29/02/1960','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('733449017',2,'Jose','Martinez','Winter',1,'19/02/1986','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('733449017',3,'Manuel','Martinez','Winter',1,'24/10/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('743210115',1,'Anibal','Huancas','Idrogo',1,'24/10/1989','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('743210115',2,'Maria','Huancas','Idrogo',0,'28/12/1991','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('777559441',1,'Almendra','Aldana','Ruiz',0,'25/02/1966','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('777559441',2,'Carolina','Huidrogo','Aldana',0,'28/09/1998','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('788229980',1,'Sandro','Flores','Watson',1,'11/06/1967','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('788229980',2,'Mellisa','Watson','Flores',0,'19/02/1999','Hija      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('788229980',3,'Roberto','Watson','Flores',1,'20/05/1998','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('789789789',1,'Erika','Mansilla','Palacios',0,'15/04/1970','Conyuge   ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('789789789',2,'Mario','Palacios','Mansilla',1,'05/07/1999','Hijo      ');
INSERT INTO Dependiente(nss_Emp,numero_Depe,nombres_Depe,apellidoPat_Depe,apellidoMat_Depe,sexo_Depe,fechaNac_Depe,parentesco_Depe) VALUES('987654321',1,'Abdiel','Gomez','Castillo',1,'29/02/1960','Conyuge   ');



INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('012564783',1,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('013675905',3,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('014685006',11,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('014786017',8,2.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('015796118',7,17,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('015897129',4,14.8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('016807220',6,13.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('016908231',5,8.25,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('017009342',9,10.45,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('018064894',10,4.75,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('021133012',2,10.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('023344901',7,25.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('023456789',10,14.8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('024567890',8,10.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('026789012',7,8.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('027755441',11,14.8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('027890123',6,17.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000001',4,10,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000002',6,25.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000004',10,15.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000005',3,5.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000007',11,22.25,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000009',9,10.6,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000010',7,15.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('090000011',6,9.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('123456789',1,32.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('123456789',2,7.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('123456789',5,3.8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('333445555',4,10,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('453453453',1,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('453453453',2,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('453453453',9,10.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543222255',1,15,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543222555',2,10,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543225555',3,5.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543255555',4,11,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543333333',5,21.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543333335',6,8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543333355',9,30,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543333555',10,19,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543335555',11,6.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543355555',11,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('543555555',10,18,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544444444',9,8.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544444445',8,11,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544444455',7,26,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544444555',6,4,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544445555',5,3,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544455555',4,9,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('544555555',3,17,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('545555555',2,9,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('555555555',1,2,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('600884444',2,1.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('600884455',9,13,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('613453453',3,4.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('613453456',10,14,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('633445555',4,9,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('666884444',3,15,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('666884444',8,10,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('681981911',11,4.5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('681981981',5,16,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('687654321',6,8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('687654323',10,7,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('687987977',9,3,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('687987987',7,22,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('689289710',11,10,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('689289789',10,11,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('699599929',11,23,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('699887772',10,24,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('699887777',4,25,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('699999999',1,14,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('709995901',4,12,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('711133001',5,11,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('721133001',6,9,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('723344901',7,10,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('724555590',10,6,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('724567890',8,7,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('725678010',9,8,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('726252525',9,9,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('726789010',1,30,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('727755441',11,35,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('727890122',1,30,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('733449017',1,30,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('743210115',3,25,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('744444444',4,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('777559441',5,15,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('777771220',6,10,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('789789789',8,35,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('888665555',9,10,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('981981981',1,15,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('987654321',2,20,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('987654321',5,15,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('987654321',6,20,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('987987987',3,25,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('987987987',4,35,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('987987987',6,5,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('999887777',4,10,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('999887777',5,30,0);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('999887777',6,30,1);
INSERT INTO Asignacion(nss_Emp,numero_Pro,horasSem_Asi,jefePro_Asi) VALUES('999999999',5,20,1);


INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(1,'07:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(2,'08:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(3,'09:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(4,'10:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(5,'11:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(6,'12:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(7,'13:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(8,'14:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(9,'15:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(10,'16:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(11,'17:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(12,'18:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(13,'19:00')
INSERT INTO Hora(codigo_Hor,nombre_Hor) VALUES(14,'20:00')

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(1,1,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(1,1,'MA',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(1,1,'MI',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(2,1,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(2,1,'MI',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(2,1,'VI',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(3,1,'LU',4)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(3,1,'MA',4)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(4,5,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(4,7,'MA',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(4,2,'VI',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(5,2,'LU',6)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(6,3,'LU',4)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(6,3,'MI',4)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(7,5,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(7,5,'JU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(7,5,'VI',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(8,7,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(8,8,'JU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(8,9,'VI',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(9,10,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(9,6,'MA',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(9,4,'MI',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(10,5,'MI',4)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(10,1,'JU',3)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(10,5,'JU',2)

INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(11,10,'LU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(11,10,'MI',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(11,10,'JU',2)
INSERT INTO LineaHorario(numero_Pro,codigo_Hor,dia_LiH,horas_LiH) VALUES(11,10,'VI',2)


--Actualiza la tabla Empleado, asignándole el número de seguro social de su supervisor
UPDATE Empleado SET nss_EmpS='333445555' WHERE nss_Emp='123456789'
UPDATE Empleado SET nss_EmpS='888665555' WHERE nss_Emp='333445555'
UPDATE Empleado SET nss_EmpS='987654321' WHERE nss_Emp='999887777'
UPDATE Empleado SET nss_EmpS='888665555' WHERE nss_Emp='987654321'
UPDATE Empleado SET nss_EmpS='333445555' WHERE nss_Emp='666884444'
UPDATE Empleado SET nss_EmpS='333445555' WHERE nss_Emp='453453453'
UPDATE Empleado SET nss_EmpS='987654321' WHERE nss_Emp='987987987'
UPDATE Empleado SET nss_EmpS='333445555' WHERE nss_Emp='789789789'
UPDATE Empleado SET nss_EmpS='987654321' WHERE nss_Emp='981981981'

--Actualiza la tabla Departamento, asignándole el número de seguro social del gerente
-- y la fecha en que se le asgnó a ese Departamento
UPDATE Departamento SET nss_Emp='333445555',fechaIniGer_Dep='22-05-1988' WHERE numero_Dep=1
UPDATE Departamento SET nss_Emp='987654321',fechaIniGer_Dep='01-01-1995' WHERE numero_Dep=2
UPDATE Departamento SET nss_Emp='888665555',fechaIniGer_Dep='17-01-2001' WHERE numero_Dep=3
UPDATE Departamento SET nss_Emp='016807220',fechaIniGer_Dep='10-01-1995' WHERE numero_Dep=5
UPDATE Departamento SET nss_Emp='023456789',fechaIniGer_Dep='10-01-2002' WHERE numero_Dep=6
UPDATE Departamento SET nss_Emp='090000001',fechaIniGer_Dep='01-12-1993' WHERE numero_Dep=7
UPDATE Departamento SET nss_Emp='123456789',fechaIniGer_Dep='01-07-1999' WHERE numero_Dep=8
UPDATE Departamento SET nss_Emp='543333335',fechaIniGer_Dep='05-04-1992' WHERE numero_Dep=9

--Actualiza la columna numEmp de la tabla Departamento

UPDATE Empleado 
SET numero_Dep=NULL WHERE estado_Emp='C'

UPDATE Empleado 
SET numero_Dep=5 WHERE numero_Dep IS NULL AND estado_Emp IN ('A','V')

UPDATE Departamento
SET nss_Emp=NULL,fechaIniGer_Dep=NULL 
WHERE nss_Emp IN (SELECT nss_Emp FROM Empleado WHERE estado_Emp='C')

UPDATE Asignacion
SET jefePro_Asi=1
FROM Asignacion t 
WHERE EXISTS (SELECT * FROM (SELECT numero_Pro,MAX(Nss_Emp) AS maxNss FROM Asignacion GROUP BY numero_Pro) AS m WHERE m.numero_Pro=t.numero_Pro AND m.maxNss=t.nss_Emp)

--Consulta las tablas 
SELECT * FROM Departamento
SELECT * FROM Empleado
SELECT * FROM Proyecto
SELECT * FROM Asignacion
SELECT * FROM Dependiente
SELECT * FROM Provincia 
SELECT * FROM Distrito
SELECT * FROM Hora
SELECT * FROM LineaHorario 