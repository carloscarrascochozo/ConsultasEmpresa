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

select * from Empleado

--CONSULTAS DE NULL
--NULL Y NOT NULL 
-- IS Y IS NOT
-- LISTAR LOS EMPLEADOS QUE NO ESTÁN ASIGNADOS A NINGÚN DEPARTAMENTO

SELECT numero_Dep, nombres_Emp
FROM Empleado
WHERE numero_Dep IS NULL

--BÚSQUEDA DE PATRONES: LIKE Y NOT LIKE
--PORCENTAJE = REEMPLAZA A UNO O MAS CARACTERES %ci%
--SUBGUION = (_) REEMPLAZA A UN SOLO CARACTER

--LISTAR EMPLEADOS CUYO APELLIDO PATERNO EMPIEZA CON LA LETRA "j"
SELECT apellidoPat_Emp
FROM Empleado
WHERE apellidoPat_Emp LIKE 'j%'

--LISTAR LOS EMPLEADOS CUYO APELLIDO MATERNO TERMINA CON "ra"
SELECT apellidoMat_Emp
FROM Empleado
WHERE apellidoMat_Emp LIKE '%ra'

--LISTAR LOS EMPLEADOS CUYO NOMBRE TIENE LA PALABRA "ci"
SELECT nombres_Emp
FROM Empleado
WHERE nombres_Emp LIKE '%ci%'

--LISTAR LOS PROYECTOS CUYO NOMBRE TENGA COMO TERCER CARACTER LA LETRA '0'
SELECT nombre_Pro
FROM Proyecto
WHERE nombre_Pro LIKE '__o%'

--LISTAR LOS EMPLEADOS CUYO APELLIDO PATERNO TENGA SOLO TRES CARACTERES
SELECT apellidoPat_Emp
FROM Empleado
WHERE apellidoPat_Emp LIKE '___'

--NOT LIKE
--LISTAR EMPLEADOS CUYO NOMBRE NO TIENE LA PALABRA "CI"
SELECT nombres_Emp
FROM Empleado
WHERE nombres_Emp NOT LIKE '%CI%'

--LISTAR PROYECTOS CUYO NOMBRE NO TENGA COMO TERCEER CARACTER LA LETRA "O"
SELECT nombre_Pro
FROM Proyecto
WHERE nombre_Pro NOT LIKE '___O%'


--LISTAR EMPLEADO CUYO APELLIDO PATERNO NO TENGA TRES CARACTERES
SELECT apellidoPat_Emp
FROM Empleado
WHERE apellidoPat_Emp NOT LIKE '___'

--CONSTULTAS MULTITABLA
--INNER JOIN

SELECT d.numero_Dep, d.nombre_Dep, p.nombre_Pro, p.presupuesto_Pro, D.vigencia_Dep
FROM Departamento d INNER JOIN Proyecto p ON d.numero_Dep = p.numero_Dep
WHERE vigencia_Dep=1

--USO DE ALIAS
