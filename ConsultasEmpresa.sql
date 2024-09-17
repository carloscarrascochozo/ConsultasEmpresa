use empresa

--SELECT...FROM
-- Listando todas las columnas y todas las filas 
SELECT *
FROM Empleado

-- Listando algunas columnas
SELECT nss_Emp,apellidoPat_Emp,apellidoMat_Emp 
FROM Empleado

--SELECT...FROM...WHERE
--Listando algunas columnas y filtrando filas
SELECT nss_Emp,apellidoPat_Emp,apellidoMat_Emp, situacion_Emp
FROM Empleado
WHERE situacion_Emp='C'

--Con mas de una condicion
SELECT nss_Emp,apellidoPat_Emp,apellidoMat_Emp, situacion_Emp, telefonos_Emp
FROM Empleado
WHERE estado_Emp IN ('v', 'A') AND telefonos_Emp IS NULL

--CONSULTAS CON FECHAS
--Listar los empleados que ingresaron a trabajar el 13 de marzo de 1995
SELECT nombres_Emp, fechaIng_Emp
FROM Empleado
WHERE fechaIng_Emp = '13/03/1995'

--Listar los dependientes que nacieron en el año 2000
SELECT nombres_Depe, fechaNac_Depe
FROM Dependiente
WHERE fechaNac_Depe >='01/01/2000' AND fechaNac_Depe <='31/12/2000'

--Ordenando por columna de forma ascendente
SELECT nss_Emp, nombres_Emp, apellidoPat_Emp
FROM Empleado
ORDER BY nombres_Emp ASC

--Ordenado por columna de forma descendente
SELECT nss_Emp, nombres_Emp, apellidoPat_Emp
FROM Empleado
ORDER BY nombres_Emp Desc

--Ordenando por mas de una columna
SELECT nss_Emp, nombres_Emp, apellidoPat_Emp
FROM Empleado
ORDER BY nombres_Emp DESC, apellidoPat_Emp ASC

