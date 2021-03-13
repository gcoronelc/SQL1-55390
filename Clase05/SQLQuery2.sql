-- IINER JOIN
/*

	FROM <tabla1> [ [AS] <alias1> ]
	[INNER] JOIN <tabla2> [ [AS] <alias2> ] ON <condicion>
	[INNER] JOIN <tabla3> [ [AS] <alias3> ] ON <condicion>
	[INNER] JOIN <tabla4> [ [AS] <alias4> ] ON <condicion>
	. . .

*/


select * from educa..ALUMNO;
go

select * from educa..MATRICULA;
go

select A.alu_nombre, M.cur_id, M.mat_fecha, M.mat_precio, M.mat_cuotas, M.mat_nota


select A.alu_nombre, C.cur_nombre, M.mat_fecha, M.mat_precio, M.mat_cuotas, M.mat_nota
from educa..ALUMNO A
join educa..MATRICULA M on A.alu_id = M.alu_id
join educa..CURSO C on M.cur_id = C.cur_id
order by 2;
go

-- Ejercicio 1

-- De Diego yoel Castillo Chumacero para todos:  04:57 PM

select C.cur_nombre, A.alu_nombre



-- Ejercicio 2
/*
Desarrolle una sentencia SELECT que muestre el nombre del alumno 
y la suma de todos sus pagos. 
Base de datos EDUCA.
*/

-- De JACKELINE FABIOLA MANRIQUE MONTA�EZ para todos:  04:54 PM

SELECT A.alu_nombre, SUM(P.pag_importe) [Suma de pagos]


-- Ejercicio 3
/*
Desarrolle una sentencia SELECT que muestre el nombre del curso 
y la suma del importe de todos sus pagos. 
Base de datos EDUCA.
*/

-- De Diego yoel Castillo Chumacero para todos:  05:07 PM

select C.cur_nombre, Sum(P.pag_importe) [Suma Importe]


-- Ejercicio 4
/*
Desarrolle una sentencia SELECT que muestre el nombre del departamento 
y el importe de su planilla. 
Base de datos RH.
*/

-- De JACKELINE FABIOLA MANRIQUE MONTA�EZ para todos:  05:11 PM

SELECT D.nombre Departamento, SUM(E.sueldo + ISNULL(E.comision,0)) Importe

-- De Mariam Ipanaqu� Salinas para todos:  05:12 PM

select D.nombre Departamento, SUM(E.sueldo + ISNULL(E.comision,0)) Importe
go


-- LEFT

select A.alu_nombre, M.cur_id, M.mat_fecha, M.mat_precio, M.mat_cuotas, M.mat_nota
Select D.nombre, COUNT(E.nombre) [Cantidad de trabajadores]

-- De JACKELINE FABIOLA MANRIQUE MONTA�EZ para todos:  05:29 PM
SELECT D.nombre Departamento, COUNT(E.idempleado) [Cantidad de trabajadores]


-- De Rossmery Tolentino Huaroto para todos:  05:29 PM
SELECT D.nombre Departamento, COUNT(E.IDEMPLEADO)  EMPLEADOS

-- De Mariam Ipanaqu� Salinas para todos:  05:32 PM
select D.nombre Departamento, COUNT(E.idempleado) [Cantidad de trabajadores]

