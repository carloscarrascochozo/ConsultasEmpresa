USE master
IF EXISTS(SELECT * FROM sysdatabases WHERE name='empresa')
	DROP DATABASE empresa
go
CREATE DATABASE empresa
go
USE empresa

go

CREATE TABLE Asignacion
(
	horasSem_Asi  decimal(4,2)  NOT NULL CONSTRAINT  DF_Trabaja_horasSem
		 DEFAULT  20
	CONSTRAINT  CK_Trabaja_horasSem
		CHECK  ( horasSem_Asi>0 AND horasSem_Asi<=40 ) ,
	numero_Pro  smallint  NOT NULL ,
	nss_Emp  char(9)  NOT NULL ,
	jefePro_Asi  bit  NOT NULL CONSTRAINT  DF_Trabaja_jefePro
		 DEFAULT  0
)
go


ALTER TABLE Asignacion
	ADD CONSTRAINT  PK_Asignacion PRIMARY KEY (nss_Emp  ASC,numero_Pro  ASC)
go


CREATE TABLE Departamento
(
	numero_Dep  tinyint  NOT NULL ,
	nombre_Dep  char(15)  NOT NULL ,
	fechaIniGer_Dep  smalldatetime  NULL CONSTRAINT  DF_Departamento_fechaIniGer
		 DEFAULT  getdate(),
	nss_Emp  char(9)  NULL ,
	vigencia_Dep  bit  NOT NULL CONSTRAINT  DF_Departamento_vigencia
		 DEFAULT  1
)
go


ALTER TABLE Departamento
	ADD CONSTRAINT  PK_Departamento PRIMARY KEY (numero_Dep  ASC)
go


CREATE TABLE Dependiente
(
	nombres_Depe  varchar(50)  NOT NULL ,
	apellidoPat_Depe  varchar(50)  NOT NULL ,
	sexo_Depe  bit  NOT NULL CONSTRAINT  DF_Dependiente_sexo
		 DEFAULT  1,
	fechaNac_Depe  smalldatetime  NOT NULL CONSTRAINT  DF_Dependiente_fechaNac
		 DEFAULT  getdate()
	CONSTRAINT  CK_Dependiente_fechaNac
		CHECK  ( fechaNac_Depe<=getdate() ) ,
	parentesco_Depe  char(10)  NOT NULL ,
	apellidoMat_Depe  varchar(50)  NOT NULL ,
	numero_Depe  tinyint  NOT NULL ,
	nss_Emp  char(9)  NOT NULL 
)
go


ALTER TABLE Dependiente
	ADD CONSTRAINT  PK_Dependiente PRIMARY KEY (nss_Emp  ASC,numero_Depe  ASC)
go


CREATE TABLE Distrito
(
	codigo_Dis  tinyint  NOT NULL ,
	nombre_Dis  char(30)  NOT NULL ,
	codigo_Prov  tinyint  NOT NULL 
)
go


ALTER TABLE Distrito
	ADD CONSTRAINT  PK_Distrito PRIMARY KEY (codigo_Dis  ASC)
go


CREATE TABLE Empleado
(
	nss_Emp  char(9)  NOT NULL ,
	nss_EmpS  char(9)  NULL ,
	nombres_Emp  char(15)  NOT NULL ,
	apellidoPat_Emp  char(15)  NOT NULL ,
	apellidoMat_Emp  char(15)  NOT NULL ,
	dni_Emp  char(8)  NOT NULL ,
	fechaNac_Emp  smalldatetime  NOT NULL 
	CONSTRAINT  CK_Empleado_fechaNac
		CHECK  ( datediff(yy,fechaNac_Emp,getdate())>=18 AND datediff(yy,fechaNac_Emp,getdate())<=65 ) ,
	telefonos_Emp  char(6)  NULL ,
	direccion_Emp  varchar(50)  NOT NULL ,
	sexo_Emp  bit  NOT NULL CONSTRAINT  DF_Empleado_sexo
		 DEFAULT  1,
	salario_Emp  smallmoney  NULL CONSTRAINT  DF_Empleado_salario
		 DEFAULT  800
	CONSTRAINT  CK_Empleado_salario
		CHECK  ( salario_Emp>=800 AND salario_Emp<=8000 ) ,
	fechaIng_Emp  smalldatetime  NOT NULL CONSTRAINT  DF_Empleado_fechaIng
		 DEFAULT  getdate()
	CONSTRAINT  CK_Empleado_fechaIng
		CHECK  ( fechaIng_Emp<=getdate() ) ,
	situacion_Emp  char(1)  NOT NULL CONSTRAINT  DF_Empleado_situacion
		 DEFAULT  'C'
	CONSTRAINT  CK_Empleado_situacion
		CHECK  ( situacion_Emp IN ('C','N') ) ,
	estado_Emp  char(1)  NOT NULL CONSTRAINT  DF_Empleado_estado
		 DEFAULT  'A'
	CONSTRAINT  CK_Empleado_estado
		CHECK  ( estado_Emp IN ('A','C','V') ) ,
	numero_Dep  tinyint  NULL ,
	codigo_Dis  tinyint  NOT NULL 
)
go


ALTER TABLE Empleado
	ADD CONSTRAINT  PK_Empleado PRIMARY KEY (nss_Emp  ASC)
go


CREATE TABLE Hora
(
	codigo_Hor  tinyint  NOT NULL ,
	nombre_Hor  char(5) NOT NULL 
)
go


ALTER TABLE Hora
	ADD CONSTRAINT  PK_Hora PRIMARY KEY (codigo_Hor  ASC)
go


CREATE TABLE LineaHorario
(
	codigo_LiH  integer  IDENTITY (1,1) ,
	numero_Pro  smallint  NOT NULL ,
	codigo_Hor  tinyint  NOT NULL ,
	dia_LiH  char(2) NOT NULL 
	CONSTRAINT  CK_LineaHorario_dia
		CHECK  ( dia_LiH IN ('LU','MA','MI','JU','VI') ) ,
	horas_LiH  tinyint NOT NULL 
	CONSTRAINT  CK_LineaHorario_horas
		CHECK  ( horas_LiH>0 ) 
)
go


ALTER TABLE LineaHorario
	ADD CONSTRAINT  PK_LineaHorario PRIMARY KEY (codigo_LiH  ASC)
go


CREATE TABLE Provincia
(
	codigo_Prov  tinyint  NOT NULL ,
	nombre_Prov  char(30)  NOT NULL 
)
go


ALTER TABLE Provincia
	ADD CONSTRAINT  PK_Provincia PRIMARY KEY (codigo_Prov  ASC)
go


CREATE TABLE Proyecto
(
	numero_Pro  smallint  IDENTITY (1,1) ,
	nombre_Pro  varchar(50)  NOT NULL ,
	estado_Pro  char(1)  NOT NULL CONSTRAINT  DF_Proyecto_estado
		 DEFAULT  'E'
	CONSTRAINT  CK_Proyecto_estado
		CHECK  ( estado_Pro IN ('E','S','T') ) ,
	numero_Dep  tinyint  NOT NULL ,
	presupuesto_Pro  smallmoney  NOT NULL CONSTRAINT  DF_Proyecto_presupuesto
		 DEFAULT  0
	CONSTRAINT  CK_Proyecto_presupuesto
		CHECK  ( presupuesto_Pro>=0 ) ,
	fechaIni_Pro  smalldatetime  NOT NULL ,
	fechaFin_Pro  smalldatetime  NOT NULL ,
	codigo_Dis  tinyint  NOT NULL 
)
go


ALTER TABLE Proyecto
	ADD CONSTRAINT  PK_Proyecto PRIMARY KEY (numero_Pro  ASC)
go



ALTER TABLE Asignacion
	ADD CONSTRAINT  FK_Asignacion_Empleado FOREIGN KEY (nss_Emp) REFERENCES Empleado(nss_Emp)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE Asignacion
	ADD CONSTRAINT  FK_Asignacion_Proyecto FOREIGN KEY (numero_Pro) REFERENCES Proyecto(numero_Pro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Departamento
	ADD CONSTRAINT  FK_Departamento_Empleado FOREIGN KEY (nss_Emp) REFERENCES Empleado(nss_Emp)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Dependiente
	ADD CONSTRAINT  FK_Dependiente_Empleado FOREIGN KEY (nss_Emp) REFERENCES Empleado(nss_Emp)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Distrito
	ADD CONSTRAINT  FK_Distrito_Provincia FOREIGN KEY (codigo_Prov) REFERENCES Provincia(codigo_Prov)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Empleado
	ADD CONSTRAINT  FK_Empleado_Empleado FOREIGN KEY (nss_EmpS) REFERENCES Empleado(nss_Emp)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE Empleado
	ADD CONSTRAINT  FK_Empleado_Departamento FOREIGN KEY (numero_Dep) REFERENCES Departamento(numero_Dep)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE Empleado
	ADD CONSTRAINT  FK_Empleado_Distrito FOREIGN KEY (codigo_Dis) REFERENCES Distrito(codigo_Dis)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE LineaHorario
	ADD CONSTRAINT  FK_LineaHorario_Proyecto FOREIGN KEY (numero_Pro) REFERENCES Proyecto(numero_Pro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE LineaHorario
	ADD CONSTRAINT  FK_LineaHorario_Hora FOREIGN KEY (codigo_Hor) REFERENCES Hora(codigo_Hor)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Proyecto
	ADD CONSTRAINT  FK_Proyecto_Departamento FOREIGN KEY (numero_Dep) REFERENCES Departamento(numero_Dep)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE Proyecto
	ADD CONSTRAINT  FK_Proyecto_Distrito FOREIGN KEY (codigo_Dis) REFERENCES Distrito(codigo_Dis)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


